//
//  BFApp.m
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

#import "BFApp.h"

static NSString *BFHasBeenOpened = @"BFHasBeenOpened";
static NSString *BFHasBeenOpenedForCurrentVersion = @"";

@implementation BFApp

+ (void)onFirstStart:(void (^)(BOOL isFirstStart))block
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL hasBeenOpened = [defaults boolForKey:BFHasBeenOpened];
    if(!hasBeenOpened)
    {
        [defaults setBool:YES forKey:BFHasBeenOpened];
        [defaults synchronize];
    }
    
    block(!hasBeenOpened);
}

+ (void)onFirstStartForCurrentVersion:(void (^)(BOOL isFirstStartForCurrentVersion))block
{
    BFHasBeenOpenedForCurrentVersion = [NSString stringWithFormat:@"BFHasBeenOpened%@", APP_VERSION];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL hasBeenOpenedForCurrentVersion = [defaults boolForKey:BFHasBeenOpenedForCurrentVersion];
    if(!hasBeenOpenedForCurrentVersion)
    {
        [defaults setBool:YES forKey:BFHasBeenOpenedForCurrentVersion];
        [defaults synchronize];
    }
    
    block(!hasBeenOpenedForCurrentVersion);
}

@end
