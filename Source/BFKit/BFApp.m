//
//  BFApp.m
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

#import "BFApp.h"

static NSString *BFHasBeenOpened = @"BFHasBeenOpened";
static NSString *BFHasBeenOpenedForCurrentVersion = @"";

@implementation BFApp

+ (void)onFirstStart:(void (^ _Nullable)(BOOL isFirstStart))block {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL hasBeenOpened = [defaults boolForKey:BFHasBeenOpened];
    if (hasBeenOpened != true) {
        [defaults setBool:YES forKey:BFHasBeenOpened];
        [defaults synchronize];
    }
    
    block(!hasBeenOpened);
}

+ (void)onFirstStartForCurrentVersion:(void (^ _Nullable)(BOOL isFirstStartForCurrentVersion))block {
    BFHasBeenOpenedForCurrentVersion = [NSString stringWithFormat:@"%@%@", BFHasBeenOpened, APP_VERSION];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL hasBeenOpenedForCurrentVersion = [defaults boolForKey:BFHasBeenOpenedForCurrentVersion];
    if (hasBeenOpenedForCurrentVersion != true) {
        [defaults setBool:YES forKey:BFHasBeenOpenedForCurrentVersion];
        [defaults synchronize];
    }
    
    block(!hasBeenOpenedForCurrentVersion);
}

+ (void)onFirstStartForVersion:(NSString * _Nonnull)version block:(void (^ _Nullable)(BOOL isFirstStartForCurrentVersion))block {
    NSString *BFHasBeenOpenedForVersion = [NSString stringWithFormat:@"%@%@", BFHasBeenOpened, version];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL hasBeenOpenedForVersion = [defaults boolForKey:BFHasBeenOpenedForCurrentVersion];
    if (hasBeenOpenedForVersion != true) {
        [defaults setBool:YES forKey:BFHasBeenOpenedForVersion];
        [defaults synchronize];
    }
    
    block(!hasBeenOpenedForVersion);
}

+ (BOOL)isFirstStart {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL hasBeenOpened = [defaults boolForKey:BFHasBeenOpened];
    if (hasBeenOpened != true) {
        return YES;
    } else {
        return NO;
    }
}

+ (BOOL)isFirstStartForCurrentVersion {
    BFHasBeenOpenedForCurrentVersion = [NSString stringWithFormat:@"%@%@", BFHasBeenOpened, APP_VERSION];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL hasBeenOpenedForCurrentVersion = [defaults boolForKey:BFHasBeenOpenedForCurrentVersion];
    if (hasBeenOpenedForCurrentVersion != true) {
        return YES;
    } else {
        return NO;
    }
}

+ (BOOL)isFirstStartForVersion:(NSString * _Nonnull)version {
    NSString *BFHasBeenOpenedForVersion = [NSString stringWithFormat:@"%@%@", BFHasBeenOpened, version];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL hasBeenOpenedForVersion = [defaults boolForKey:BFHasBeenOpenedForVersion];
    if (hasBeenOpenedForVersion != true) {
        return YES;
    } else {
        return NO;
    }
}

@end
