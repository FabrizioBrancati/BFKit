//
//  BFPassword.m
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

#import "BFPassword.h"

@implementation BFPassword

+ (PasswordStrengthLevel)checkPasswordStrength:(NSString * _Nonnull)password {
    NSInteger length = [password length];
    int lowercase = [self countLowercaseLetters:password];
    int uppercase = [self countUppercaseLetters:password];
    int numbers = [self countNumbers:password];
    int symbols = [self countSymbols:password];
    
    int score = 0;
    
    if (length < 5)
        score += 5;
    else
        if (length > 4 && length < 8)
            score += 10;
        else
            if (length > 7)
                score += 20;
    
    if (numbers == 1)
        score += 10;
    else
        if (numbers == 2)
            score += 15;
        else
            if (numbers > 2)
                score += 20;
    
    if (symbols == 1)
        score += 10;
    else
        if (symbols == 2)
            score += 15;
        else
            if (symbols > 2)
                score += 20;
    
    if (lowercase == 1)
        score += 10;
    else
        if (lowercase == 2)
            score += 15;
        else
            if (lowercase > 2)
                score += 20;
    
    if (uppercase == 1)
        score += 10;
    else
        if (uppercase == 2)
            score += 15;
    else
        if (uppercase > 2)
            score += 20;
    
    if (score == 100)
        return PasswordStrengthLevelVerySecure;
    else
        if (score >= 90)
            return PasswordStrengthLevelSecure;
        else
            if (score >= 80)
                return PasswordStrengthLevelVeryStrong;
            else
                if (score >= 70)
                    return PasswordStrengthLevelStrong;
                else
                    if (score >= 60)
                        return PasswordStrengthLevelAverage;
                    else
                        if (score >= 50)
                            return PasswordStrengthLevelWeak;
                        else
                            return PasswordStrengthLevelVeryWeak;
}

+ (int)countLowercaseLetters:(NSString * _Nonnull)password {
    int count = 0;
    
    for (int i = 0; i < [password length]; i++) {
        BOOL isLowercase = [[NSCharacterSet lowercaseLetterCharacterSet] characterIsMember:[password characterAtIndex:i]];
        if (isLowercase == YES) {
            count++;
        }
    }
    
    return count;
}

+ (int)countUppercaseLetters:(NSString * _Nonnull)password {
    int count = 0;
    
    for (int i = 0; i < [password length]; i++) {
        BOOL isUppercase = [[NSCharacterSet uppercaseLetterCharacterSet] characterIsMember:[password characterAtIndex:i]];
        if (isUppercase == YES) {
            count++;
        }
    }
    
    return count;
}

+ (int)countNumbers:(NSString * _Nonnull)password {
    int count = 0;
    
    for (int i = 0; i < [password length]; i++) {
        BOOL isNumber = [[NSCharacterSet characterSetWithCharactersInString:@"0123456789"] characterIsMember:[password characterAtIndex:i]];
        if (isNumber == YES) {
            count++;
        }
    }
    
    return count;
}

+ (int)countSymbols:(NSString * _Nonnull)password {
    int count = 0;
    
    for (int i = 0; i < [password length]; i++) {
        BOOL isSymbol = [[NSCharacterSet characterSetWithCharactersInString:@"`~!?@#$€£¥§%^&*()_+-={}[]:\";.,<>'•\\|/"] characterIsMember:[password characterAtIndex:i]];
        if (isSymbol == YES) {
            count++;
        }
    }
    
    return count;
}

@end
