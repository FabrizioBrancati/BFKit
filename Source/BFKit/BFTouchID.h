//
//  BFTouchID.h
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
@import LocalAuthentication;

/**
 *  Touch result enum
 */
typedef NS_ENUM(NSInteger, TouchIDResult) {
    /**
     *  Success
     */
    TouchIDResultSuccess = 0,
    /**
     *  Generic error
     */
    TouchIDResultError,
    /**
     *  Authentication failed
     */
    TouchIDResultAuthenticationFailed,
    /**
     *  User cancel
     */
    TouchIDResultUserCancel,
    /**
     *  User fallback
     */
    TouchIDResultUserFallback,
    /**
     *  System cancel
     */
    TouchIDResultSystemCancel,
    /**
     *  Passcode not set
     */
    TouchIDResultPasscodeNotSet,
    /**
     *  Not available
     */
    TouchIDResultNotAvailable,
    /**
     *  Not enrolled
     */
    TouchIDResultNotEnrolled
} NS_ENUM_AVAILABLE_IOS(8_0);

/**
 *  This class adds some useful methods to use TouchID
 */
NS_CLASS_AVAILABLE_IOS(8_0) @interface BFTouchID : NSObject

/**
 *  Shows the TouchID alert
 *
 *  @param reason     Text to show in the alert
 *  @param completion Completion handler. It returns the TouchID result, from the TouchIDResult enum
 */
+ (void)showTouchIDAuthenticationWithReason:(NSString * _Nonnull)reason
                                 completion:(void (^ _Nullable)(TouchIDResult result))completion;

/**
 *  Shows the TouchID alert
 *
 *  @param reason        Text to show in the alert
 *  @param fallbackTitle Default title "Enter Password" is used when this property is left nil. If set to empty string, the button will be hidden
 *  @param completion    Completion handler. It returns the TouchID result, from the TouchIDResult enum
 */
+ (void)showTouchIDAuthenticationWithReason:(NSString * _Nonnull)reason
                              fallbackTitle:(NSString * _Nullable)fallbackTitle
                                 completion:(void (^ _Nullable)(TouchIDResult result))completion;

@end
