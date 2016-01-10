//
//  BFPassword.h
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

/**
 *  Password strength level enum, from 0 (min) to 6 (max)
 */
typedef NS_ENUM(NSInteger, PasswordStrengthLevel) {
    /**
     *  Password strength very weak
     */
    PasswordStrengthLevelVeryWeak = 0,
    /**
     *  Password strength weak
     */
    PasswordStrengthLevelWeak,
    /**
     *  Password strength average
     */
    PasswordStrengthLevelAverage,
    /**
     *  Password strength strong
     */
    PasswordStrengthLevelStrong,
    /**
     *  Password strength very strong
     */
    PasswordStrengthLevelVeryStrong,
    /**
     *  Password strength secure
     */
    PasswordStrengthLevelSecure,
    /**
     *  Password strength very secure
     */
    PasswordStrengthLevelVerySecure
};

/**
 *  This class adds some useful methods to manage passwords
 */
@interface BFPassword : NSObject

/**
 *  Check the password strength level
 *
 *  @param password Password string
 *
 *  @return Returns the password strength level with value from enum PasswordStrengthLevel
 */
+ (PasswordStrengthLevel)checkPasswordStrength:(NSString * _Nonnull)password;

@end
