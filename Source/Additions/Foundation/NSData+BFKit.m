//
//  NSData+BFKit.m
//  BFKit
//
//  The MIT License (MIT)
//
//  Copyright (c) 2014 - 2017 Fabrizio Brancati. All rights reserved.
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

#import "NSData+BFKit.h"

@implementation NSData (BFKit)

+ (NSString * _Nonnull)convertToUTF8String:(NSData * _Nonnull)data {
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

- (NSString * _Nonnull)convertToUTF8String {
    return [NSData convertToUTF8String:self];
}

+ (NSString * _Nonnull)convertToASCIIString:(NSData * _Nonnull)data {
    return [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
}

- (NSString * _Nonnull)convertToASCIIString {
    return [NSData convertToASCIIString:self];
}

- (NSString * _Nullable)convertUUIDToString {
    return [[[self description] stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"<>"]] stringByReplacingOccurrencesOfString:@" " withString:@""];
}

@end
