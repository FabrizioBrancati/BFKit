//
//  UIWindow+BFKit.h
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

@import Foundation;
@import UIKit;

/**
 *  Show touch on screen
 */
#define BFShowTouchOnScreen [UIApplication.sharedApplication.keyWindow activateTouch]

/**
 *  Hide touch on screen
 */
#define BFHideTouchOnScreen [UIApplication.sharedApplication.keyWindow deactivateTouch]

/**
 *  This category adds some useful methods to UIWindow
 *
 *  BFShowTouchOnScreen: Show touch on screen
 *
 *  BFHideTouchOnScreen: Hide touch on screen
 */
@interface UIWindow (BFKit)

/**
 *  Take a screenshot of current window, without saving it
 *
 *  @return Returns the screenshot as an UIImage
 */
- (UIImage * _Nonnull)takeScreenshot;

/**
 *  Take a screenshot of current window and choose if save it or not
 *
 *  @param save YES to save, NO to don't save
 *
 *  @return Returns the screenshot as an UIImage
 */
- (UIImage * _Nonnull)takeScreenshotAndSave:(BOOL)save;

/**
 *  Take a screenshot of current window, choose if save it or not after a delay
 *
 *  @param delay      The delay, in seconds
 *  @param save       YES to save, NO to don't save
 *  @param completion Completion handler with the UIImage
 */
- (void)takeScreenshotWithDelay:(CGFloat)delay save:(BOOL)save completion:(void (^ _Nullable)(UIImage * _Nonnull screenshot))completion;

/**
 *  Show touch on screen. (Use BFShowTouchOnScreen macro)
 */
- (void)activateTouch;

/**
 *  Hide touch on screen. (Use BFHideTouchOnScreen macro)
 */
- (void)deactivateTouch;

@end
