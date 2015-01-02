//
//  NSFileManager+BFKit.m
//  BFKit
//
//  The MIT License (MIT)
//
//  Copyright (c) 2014 - 2015 Fabrizio Brancati. All rights reserved.
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

@implementation NSFileManager (BFKit)

+ (NSString *)readTextFile:(NSString *)file ofType:(NSString *)type
{
    NSString *temp = [[NSBundle mainBundle] pathForResource:file ofType:type];
    file = [NSString stringWithContentsOfFile:temp encoding:NSStringEncodingConversionAllowLossy error:nil];
    return file;
}

+ (BOOL)saveArrayToPath:(DirectoryType)path withFilename:(NSString *)fileName array:(NSArray *)array
{
    NSString *_path;
    
    switch(path)
    {
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
        default:
            break;
    }
    
    //BFLog(@"savedArrayToFile : %@",path);
    return [NSKeyedArchiver archiveRootObject:array toFile:_path];
}

+ (NSArray *)loadArrayFromPath:(DirectoryType)path withFilename:(NSString *)fileName
{
    NSString *_path;
    
    switch(path)
    {
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
        default:
            break;
    }
    
    //BFLog(@"loadedArrayFromFile : %@",_path);
    return [NSKeyedUnarchiver unarchiveObjectWithFile:_path];
}

+ (NSString *)getBundlePathForFile:(NSString *)fileName
{
    NSString *fileExtension = [fileName pathExtension];
    return [[NSBundle mainBundle] pathForResource:[fileName stringByReplacingOccurrencesOfString:[NSString stringWithFormat:@".%@", fileExtension] withString:@""] ofType:fileExtension];
}

+ (NSString *)getDocumentsDirectoryForFile:(NSString *)fileName
{
    NSString *documentsDirectory = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    return [documentsDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"%@/", fileName]];
}

+ (NSString *)getLibraryDirectoryForFile:(NSString *)fileName
{
    NSString *libraryDirectory = [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    return [libraryDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"%@/", fileName]];
}

+ (NSString *)getCacheDirectoryForFile:(NSString *)fileName
{
    NSString *cacheDirectory = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    return [cacheDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"%@/", fileName]];
}

+ (BOOL)deleteFile:(NSString *)fileName fromDirectory:(DirectoryType)directory
{
    if(fileName.length > 0)
    {
        NSString *path;
        
        switch(directory)
        {
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
            default:
                break;
        }
        
        if([[NSFileManager defaultManager] fileExistsAtPath:path])
        {
            return [[NSFileManager defaultManager] removeItemAtPath:path error:nil];
        }
        else
        {
            return NO;
        }
    }
    
    return NO;
}

+ (BOOL)moveLocalFile:(NSString *)fileName fromDirectory:(DirectoryType)origin toDirectory:(DirectoryType)destination
{
    return [self moveLocalFile:fileName fromDirectory:origin toDirectory:destination withFolderName:nil];
}

+ (BOOL)moveLocalFile:(NSString *)fileName fromDirectory:(DirectoryType)origin toDirectory:(DirectoryType)destination withFolderName:(NSString *)folderName
{
    NSString *originPath;
    
    switch(origin)
    {
        case DirectoryTypeMainBundle:
            originPath = [[NSBundle mainBundle] pathForResource:fileName ofType:nil];
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
        default:
            break;
    }
    
    NSString *destinationPath;
    
    switch(destination)
    {
        case DirectoryTypeMainBundle:
            if(folderName)
                destinationPath = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@/%@", folderName, fileName] ofType:nil];
            else
                destinationPath = [[NSBundle mainBundle] pathForResource:fileName ofType:nil];
            break;
        case DirectoryTypeLibrary:
            if(folderName)
                destinationPath = [self getLibraryDirectoryForFile:[NSString stringWithFormat:@"%@/%@", folderName, fileName]];
            else
                destinationPath = [self getLibraryDirectoryForFile:fileName];
            break;
        case DirectoryTypeDocuments:
            if(folderName)
                destinationPath = [self getDocumentsDirectoryForFile:[NSString stringWithFormat:@"%@/%@", folderName, fileName]];
            else
                destinationPath = [self getDocumentsDirectoryForFile:fileName];
            break;
        case DirectoryTypeCache:
            if(folderName)
                destinationPath = [self getCacheDirectoryForFile:[NSString stringWithFormat:@"%@/%@", folderName, fileName]];
            else
                destinationPath = [self getCacheDirectoryForFile:fileName];
            break;
        default:
            break;
    }
    
    // Check if folder exist, if not, create automatically
    if(folderName)
    {
        NSString *folderPath = [NSString stringWithFormat:@"%@/%@", destinationPath, folderName];
        if(![[NSFileManager defaultManager] fileExistsAtPath:folderPath])
        {
            [[NSFileManager defaultManager] createDirectoryAtPath:folderPath withIntermediateDirectories:NO attributes:nil error:nil];
        }
    }
    
    BOOL copied = NO, deleted = NO;
    
    if([[NSFileManager defaultManager] fileExistsAtPath:originPath])
    {
        if([[NSFileManager defaultManager] copyItemAtPath:originPath toPath:destinationPath error:nil])
            copied = YES;
    }
    
    if(destination != DirectoryTypeMainBundle)
    {
        if([[NSFileManager defaultManager] fileExistsAtPath:originPath])
            if([[NSFileManager defaultManager] removeItemAtPath:originPath error:nil])
                deleted = YES;
    }
    
    if(copied && deleted)
        return YES;
    else
        return NO;
}

+ (BOOL)duplicateFileAtPath:(NSString *)origin toNewPath:(NSString *)destination
{
    if([[NSFileManager defaultManager] fileExistsAtPath:origin])
        return [[NSFileManager defaultManager] copyItemAtPath:origin toPath:destination error:nil];
    else
        return NO;
}

+ (BOOL)renameFileFromDirectory:(DirectoryType)origin atPath:(NSString *)path withOldName:(NSString *)oldName andNewName:(NSString *)newName
{
    NSString *originPath;
    
    switch(origin)
    {
        case DirectoryTypeMainBundle:
            originPath = [[NSBundle mainBundle] pathForResource:path ofType:nil];
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
        default:
            break;
    }
    
    if([[NSFileManager defaultManager] fileExistsAtPath:originPath])
    {
        NSString *newNamePath = [originPath stringByReplacingOccurrencesOfString:oldName withString:newName];
        if([[NSFileManager defaultManager] copyItemAtPath:originPath toPath:newNamePath error:nil])
        {
            if([[NSFileManager defaultManager] removeItemAtPath:originPath error:nil])
                return YES;
            else
                return NO;
        }
        else
            return NO;
    }
    else
        return NO;
}

+ (id)getAppSettingsForObjectWithKey:(NSString *)objKey
{
    return [self getSettings:APP_NAME objectForKey:objKey];
}

+ (BOOL)setAppSettingsForObject:(id)value forKey:(NSString *)objKey
{
    return [self setSettings:APP_NAME object:value forKey:objKey];
}

+ (id)getSettings:(NSString *)settings objectForKey:(NSString *)objKey
{
    NSString *path = [self getLibraryDirectoryForFile:[NSString stringWithFormat:@"%@-Settings.plist", settings]];
    NSDictionary *loadedPlist = [NSDictionary dictionaryWithContentsOfFile:path];
    if(![[NSFileManager defaultManager] fileExistsAtPath:path])
    {
        path = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@-Settings", settings] ofType:@"plist"];
        [self moveLocalFile:[NSString stringWithFormat:@"%@-Settings.plist", settings] fromDirectory:DirectoryTypeMainBundle toDirectory:DirectoryTypeLibrary withFolderName:@""];
        loadedPlist = [NSMutableDictionary dictionaryWithContentsOfFile:path];
    }
    
    return [loadedPlist objectForKey:objKey];
}

+ (BOOL)setSettings:(NSString *)settings object:(id)value forKey:(NSString *)objKey
{
    NSString *path = [self getLibraryDirectoryForFile:[NSString stringWithFormat:@"%@-Settings.plist", settings]];
    NSMutableDictionary *loadedPlist = [NSMutableDictionary dictionaryWithContentsOfFile:path];
    
    if(![[NSFileManager defaultManager] fileExistsAtPath:path])
    {
        path = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@-Settings", settings] ofType:@"plist"];
        [self moveLocalFile:[NSString stringWithFormat:@"%@-Settings.plist", settings] fromDirectory:DirectoryTypeMainBundle toDirectory:DirectoryTypeLibrary withFolderName:@""];
        loadedPlist = [NSMutableDictionary dictionaryWithContentsOfFile:path];
    }
    
    [loadedPlist setObject:value forKey:objKey];
    return [loadedPlist writeToFile:path atomically:YES];
}

@end
