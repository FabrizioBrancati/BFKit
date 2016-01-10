//
//  NSFileManager+BFKit.m
//  BFKit
//
//  The MIT License (MIT)
//
//  Copyright (c) 2014 - 2016 Fabrizio Brancati. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

#import "NSFileManager+BFKit.h"
#import "BFApp.h"

@implementation NSFileManager (BFKit)

+ (NSString * _Nullable)readTextFile:(NSString * _Nonnull)file ofType:(NSString * _Nonnull)type {
    return [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:file ofType:type] encoding:NSUTF8StringEncoding error:nil];
}

+ (BOOL)saveArrayToPath:(DirectoryType)path withFilename:(NSString * _Nonnull)fileName array:(NSArray * _Nonnull)array {
    NSString *_path;
    
    switch (path) {
        case DirectoryTypeMainBundle:
            _path = [self getBundlePathForFile:[NSString stringWithFormat:@"%@.plist", fileName]];
            break;
        case DirectoryTypeLibrary:
            _path = [self getLibraryDirectoryForFile:[NSString stringWithFormat:@"%@.plist", fileName]];
            break;
        case DirectoryTypeDocuments:
            _path = [self getDocumentsDirectoryForFile:[NSString stringWithFormat:@"%@.plist", fileName]];
            break;
        case DirectoryTypeCache:
            _path = [self getCacheDirectoryForFile:[NSString stringWithFormat:@"%@.plist", fileName]];
            break;
    }
    
    return [NSKeyedArchiver archiveRootObject:array toFile:_path];
}

+ (NSArray * _Nullable)loadArrayFromPath:(DirectoryType)path withFilename:(NSString * _Nonnull)fileName {
    NSString *_path;
    
    switch (path) {
        case DirectoryTypeMainBundle:
            _path = [self getBundlePathForFile:[NSString stringWithFormat:@"%@.plist", fileName]];
            break;
        case DirectoryTypeLibrary:
            _path = [self getLibraryDirectoryForFile:[NSString stringWithFormat:@"%@.plist", fileName]];
            break;
        case DirectoryTypeDocuments:
            _path = [self getDocumentsDirectoryForFile:[NSString stringWithFormat:@"%@.plist", fileName]];
            break;
        case DirectoryTypeCache:
            _path = [self getCacheDirectoryForFile:[NSString stringWithFormat:@"%@.plist", fileName]];
            break;
    }
    
    return [NSKeyedUnarchiver unarchiveObjectWithFile:_path];
}

+ (NSString * _Nonnull)getBundlePathForFile:(NSString * _Nonnull)fileName {
    NSString *fileExtension = [fileName pathExtension];
    return [[NSBundle mainBundle] pathForResource:[fileName stringByReplacingOccurrencesOfString:[NSString stringWithFormat:@".%@", fileExtension] withString:@""] ofType:fileExtension];
}

+ (NSString * _Nonnull)getDocumentsDirectoryForFile:(NSString * _Nonnull)fileName {
    NSString *documentsDirectory = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    return [documentsDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"%@/", fileName]];
}

+ (NSString * _Nonnull)getLibraryDirectoryForFile:(NSString * _Nonnull)fileName {
    NSString *libraryDirectory = [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    return [libraryDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"%@/", fileName]];
}

+ (NSString * _Nonnull)getCacheDirectoryForFile:(NSString * _Nonnull)fileName {
    NSString *cacheDirectory = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    return [cacheDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"%@/", fileName]];
}

+ (NSNumber * _Nullable)fileSize:(NSString * _Nonnull)fileName fromDirectory:(DirectoryType)directory {
    if (fileName.length > 0) {
        NSString *path;
        
        switch (directory) {
            case DirectoryTypeMainBundle:
                path = [self getBundlePathForFile:fileName];
                break;
            case DirectoryTypeLibrary:
                path = [self getLibraryDirectoryForFile:fileName];
                break;
            case DirectoryTypeDocuments:
                path = [self getDocumentsDirectoryForFile:fileName];
                break;
            case DirectoryTypeCache:
                path = [self getCacheDirectoryForFile:fileName];
                break;
        }
        
        if ([[NSFileManager defaultManager] fileExistsAtPath:fileName]) {
            NSDictionary *fileAttributes = [[NSFileManager defaultManager] attributesOfItemAtPath:fileName error:nil];
            if (fileAttributes) {
                return [fileAttributes objectForKey:NSFileSize];
            }
        }
    }
    
    return nil;
}

+ (BOOL)deleteFile:(NSString * _Nonnull)fileName fromDirectory:(DirectoryType)directory {
    if (fileName.length > 0) {
        NSString *path;
        
        switch (directory) {
            case DirectoryTypeMainBundle:
                path = [self getBundlePathForFile:fileName];
                break;
            case DirectoryTypeLibrary:
                path = [self getLibraryDirectoryForFile:fileName];
                break;
            case DirectoryTypeDocuments:
                path = [self getDocumentsDirectoryForFile:fileName];
                break;
            case DirectoryTypeCache:
                path = [self getCacheDirectoryForFile:fileName];
                break;
        }
        
        if ([[NSFileManager defaultManager] fileExistsAtPath:path]) {
            return [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
        }
    }
    
    return NO;
}

+ (BOOL)moveLocalFile:(NSString * _Nonnull)fileName fromDirectory:(DirectoryType)origin toDirectory:(DirectoryType)destination {
    return [self moveLocalFile:fileName fromDirectory:origin toDirectory:destination withFolderName:nil];
}

+ (BOOL)moveLocalFile:(NSString * _Nonnull)fileName fromDirectory:(DirectoryType)origin toDirectory:(DirectoryType)destination withFolderName:(NSString * _Nullable)folderName {
    NSString *originPath;
    
    switch (origin) {
        case DirectoryTypeMainBundle:
            originPath = [self getBundlePathForFile:fileName];
            break;
        case DirectoryTypeLibrary:
            originPath = [self getDocumentsDirectoryForFile:fileName];
            break;
        case DirectoryTypeDocuments:
            originPath = [self getLibraryDirectoryForFile:fileName];
            break;
        case DirectoryTypeCache:
            originPath = [self getCacheDirectoryForFile:fileName];
            break;
    }
    
    NSString *destinationPath;
    if (folderName) {
        destinationPath = [NSString stringWithFormat:@"%@/%@", folderName, fileName];
    } else {
        destinationPath = fileName;
    }
    
    switch (destination) {
        case DirectoryTypeMainBundle:
            destinationPath = [self getBundlePathForFile:destinationPath];
            break;
        case DirectoryTypeLibrary:
            destinationPath = [self getLibraryDirectoryForFile:destinationPath];
            break;
        case DirectoryTypeDocuments:
            destinationPath = [self getDocumentsDirectoryForFile:destinationPath];
            break;
        case DirectoryTypeCache:
            destinationPath = [self getCacheDirectoryForFile:destinationPath];
            break;
    }
    
    if (folderName) {
        NSString *folderPath = [NSString stringWithFormat:@"%@/%@", destinationPath, folderName];
        if (![[NSFileManager defaultManager] fileExistsAtPath:folderPath]) {
            [[NSFileManager defaultManager] createDirectoryAtPath:folderPath withIntermediateDirectories:NO attributes:nil error:nil];
        }
    }
    
    BOOL copied = NO, deleted = NO;
    
    if ([[NSFileManager defaultManager] fileExistsAtPath:originPath]) {
        if ([[NSFileManager defaultManager] copyItemAtPath:originPath toPath:destinationPath error:nil]) {
            copied = YES;
        }
    }
    
    if (destination != DirectoryTypeMainBundle) {
        if ([[NSFileManager defaultManager] fileExistsAtPath:originPath])
            if ([[NSFileManager defaultManager] removeItemAtPath:originPath error:nil]) {
                deleted = YES;
            }
    }
    
    if (copied && deleted) {
        return YES;
    }
    return NO;
}

+ (BOOL)duplicateFileAtPath:(NSString * _Nonnull)origin toNewPath:(NSString * _Nonnull)destination {
    if ([[NSFileManager defaultManager] fileExistsAtPath:origin]) {
        return [[NSFileManager defaultManager] copyItemAtPath:origin toPath:destination error:nil];
    }
    return NO;
}

+ (BOOL)renameFileFromDirectory:(DirectoryType)origin atPath:(NSString * _Nonnull)path withOldName:(NSString * _Nonnull)oldName andNewName:(NSString * _Nonnull)newName {
    NSString *originPath;
    
    switch (origin) {
        case DirectoryTypeMainBundle:
            originPath = [self getBundlePathForFile:path];
            break;
        case DirectoryTypeLibrary:
            originPath = [self getDocumentsDirectoryForFile:path];
            break;
        case DirectoryTypeDocuments:
            originPath = [self getLibraryDirectoryForFile:path];
            break;
        case DirectoryTypeCache:
            originPath = [self getCacheDirectoryForFile:path];
            break;
    }
    
    if ([[NSFileManager defaultManager] fileExistsAtPath:originPath]) {
        NSString *newNamePath = [originPath stringByReplacingOccurrencesOfString:oldName withString:newName];
        if ([[NSFileManager defaultManager] copyItemAtPath:originPath toPath:newNamePath error:nil]) {
            if ([[NSFileManager defaultManager] removeItemAtPath:originPath error:nil]) {
                return YES;
            }
        }
    }
    return NO;
}

+ (id _Nullable)getSettings:(NSString * _Nonnull)settings objectForKey:(NSString * _Nonnull)objKey {
    NSString *path = [self getLibraryDirectoryForFile:@""];
    path = [path stringByAppendingString:@"/Preferences/"];
    path = [path stringByAppendingString:[NSString stringWithFormat:@"%@-Settings.plist", settings]];
    
    NSMutableDictionary *loadedPlist;
    if ([[NSFileManager defaultManager] fileExistsAtPath:path]) {
        loadedPlist = [NSMutableDictionary dictionaryWithContentsOfFile:path];
    } else {
        return nil;
    }
    
    return loadedPlist[objKey];
}

+ (BOOL)setSettings:(NSString * _Nonnull)settings object:(id _Nonnull)value forKey:(NSString * _Nonnull)objKey {
    NSString *path = [self getLibraryDirectoryForFile:@""];
    path = [path stringByAppendingString:@"/Preferences/"];
    path = [path stringByAppendingString:[NSString stringWithFormat:@"%@-Settings.plist", settings]];
    
    NSMutableDictionary *loadedPlist;
    if ([[NSFileManager defaultManager] fileExistsAtPath:path]) {
        loadedPlist = [NSMutableDictionary dictionaryWithContentsOfFile:path];
    } else {
        loadedPlist = [[NSMutableDictionary alloc] init];
    }
    
    [loadedPlist setObject:value forKey:objKey];
    
    return [loadedPlist writeToFile:path atomically:YES];
}

+ (id _Nullable)getAppSettingsForObjectWithKey:(NSString * _Nonnull)objKey {
    return [self getSettings:APP_NAME objectForKey:objKey];
}

+ (BOOL)setAppSettingsForObject:(id _Nonnull)value forKey:(NSString * _Nonnull)objKey {
    return [self setSettings:APP_NAME object:value forKey:objKey];
}

@end
