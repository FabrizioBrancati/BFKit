//
//  UIDevice+BFKit.h
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

/**
 *  This class add some useful methods to UIDevice
 */
@interface UIDevice (BFKit)

/**
 *  Get the iOS version
 */
#define IOS_VERSION [UIDevice currentDevice].systemVersion

/**
 *  Get the screen width and height
 */
#define SCREEN_WIDTH ((([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortrait) || ([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortraitUpsideDown)) ? [[UIScreen mainScreen] bounds].size.width : [[UIScreen mainScreen] bounds].size.height)
#define SCREEN_HEIGHT ((([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortrait) || ([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortraitUpsideDown)) ? [[UIScreen mainScreen] bounds].size.height : [[UIScreen mainScreen] bounds].size.width)

/**
 *  Macros to compare system versions
 *
 *  @param v Version, like @"8.0"
 *
 *  @return Return a BOOL
 */
#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)

/**
 *  Return the device platform string
 *  Example: "iPhone3,2"
 *
 *  @return Return the device platform string
 */
+ (NSString *)devicePlatform;

/**
 *  Return the user-friendly device platform string
 *  Example: "iPad Air (Cellular)"
 *
 *  @return Return the user-friendly device platform string
 */
+ (NSString *)devicePlatformString;

/**
 *  Check if the current device is an iPad
 *
 *  @return Return YES if it's an iPad, NO if not
 */
+ (BOOL)isiPad;

/**
 *  Check if the current device is an iPhone
 *
 *  @return Return YES if it's an iPhone, NO if not
 */
+ (BOOL)isiPhone;

/**
 *  Check if the current device is an iPod
 *
 *  @return Return YES if it's an iPod, NO if not
 */
+ (BOOL)isiPod;

/**
 *  Check if the current device is the simulator
 *
 *  @return Return YES if it's the simulator, NO if not
 */
+ (BOOL)isSimulator;

/**
 *  Check if the current device has a Retina display
 *
 *  @return Return YES if it has a Retina display, NO if not
 */
+ (BOOL)isRetina;

/**
 *  Check if the current device has a Retina HD display
 *
 *  @return Return YES if it has a Retina HD display, NO if not
 */
+ (BOOL)isRetinaHD;

/**
 *  Return the iOS version without the subversion
 *  Example: 7
 *
 *  @return Return the iOS version
 */
+ (NSInteger)iOSVersion;

/**
 *  Return the current device CPU frequency
 *
 *  @return Return the current device CPU frequency
 */
+ (NSUInteger)cpuFrequency;

/**
 *  Return the current device BUS frequency
 *
 *  @return Return the current device BUS frequency
 */
+ (NSUInteger)busFrequency;

/**
 *  Return the current device RAM size
 *
 *  @return Return the current device RAM size
 */
+ (NSUInteger)ramSize;

/**
 *  Return the current device CPU number
 *
 *  @return Return the current device CPU number
 */
+ (NSUInteger)cpuNumber;

/**
 *  Return the current device total memory
 *
 *  @return Return the current device total memory
 */
+ (NSUInteger)totalMemory;

/**
 *  Return the current device non-kernel memory
 *
 *  @return Return the current device non-kernel memory
 */
+ (NSUInteger)userMemory;

/**
 *  Return the current device total disk space
 *
 *  @return Return the current device total disk space
 */
+ (NSNumber *)totalDiskSpace;

/**
 *  Return the current device free disk space
 *
 *  @return Return the current device free disk space
 */
+ (NSNumber *)freeDiskSpace;

/**
 *  Return the current device MAC address
 *
 *  @return Return the current device MAC address
 */
+ (NSString *)macAddress;

/**
 *  Generate an unique identifier and store it into standardUserDefaults
 *
 *  @return Return a unique identifier as a NSString
 */
+ (NSString *)uniqueIdentifier;

@end
