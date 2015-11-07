//
//  UIScreen+BFKit.h
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

#import <UIKit/UIKit.h>

/**
 *  Get the screen width and height
 */
#define SCREEN_WIDTH [[UIScreen mainScreen] fixedScreenSize].width
#define SCREEN_HEIGHT [[UIScreen mainScreen] fixedScreenSize].height

/**
 *  This category adds some useful methods to UIScreen
 *
 *  SCREEN_WIDTH: Get the screen width
 *
 *  SCREEN_HEIGHT: Get the screen height
 *
 */
@interface UIScreen (BFKit)

/**
 *  Check if the current device has a Retina display
 *
 *  @return Returns YES if it has a Retina display, NO if not
 */
+ (BOOL)isRetina;

/**
 *  Check if the current device has a Retina display
 *
 *  @return Returns YES if it has a Retina HD display, NO if not
 */
+ (BOOL)isRetinaHD;

/**
 *  Returns the fixed screen size, based on device orientation
 *
 *  @return Returns a GCSize with the fixed screen size
 */
- (CGSize)fixedScreenSize;

@end
