//
//  NSDictionary+BFKit.h
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
 *  This category adds some useful methods to NSDictionary
 */
@interface NSDictionary (BFKit)

/**
 *  Convert self to JSON as NSString
 *
 *  @return Returns the JSON as NSString or nil if error while parsing
 */
- (NSString * _Nonnull)dictionaryToJson DEPRECATED_MSG_ATTRIBUTE("Use -dictionaryToJSON");

/**
 *  Convert self to JSON as NSString
 *
 *  @return Returns the JSON as NSString or nil if error while parsing
 */
- (NSString * _Nonnull)dictionaryToJSON;

/**
 *  Convert the given dictionary to JSON as NSString
 *
 *  @param dictionary The dictionary to be converted
 *
 *  @return Returns the JSON as NSString or nil if error while parsing
 */
+ (NSString * _Nonnull)dictionaryToJson:(NSDictionary * _Nonnull)dictionary DEPRECATED_MSG_ATTRIBUTE("Use +dictionaryToJSON:");

/**
 *  Convert the given dictionary to JSON as NSString
 *
 *  @param dictionary The dictionary to be converted
 *
 *  @return Returns the JSON as NSString or nil if error while parsing
 */
+ (NSString * _Nonnull)dictionaryToJSON:(NSDictionary * _Nonnull)dictionary;

/**
 *  Returns an object if key exists or nil if not
 *
 *  @param key Key to get value of
 *
 *  @return Value for the key Or nil
 */
- (id _Nullable)safeObjectForKey:(NSString * _Nonnull)key;


@end