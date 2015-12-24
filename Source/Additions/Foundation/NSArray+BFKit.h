//
//  NSArray+BFKit.h
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
 *  This category adds some useful methods to NSArray
 */
@interface NSArray (BFKit)

/**
 *  Get the object at a given index in safe mode (nil if self is empty or out of range)
 *
 *  @param index The index
 *
 *  @return Returns the object at a given index in safe mode (nil if self is empty or out of range)
 */
- (id _Nullable)safeObjectAtIndex:(NSUInteger)index;

/**
 *  Create a reversed array from self
 *
 *  @return Returns the reversed array
 */
- (NSArray * _Nonnull)reversedArray;

/**
 *  Convert self to JSON as NSString
 *
 *  @return Returns the JSON as NSString or nil if error while parsing
 */
- (NSString * _Nonnull)arrayToJson;

/**
 *  Simulates the array as a circle. When it is out of range, begins again
 *
 *  @param index The index
 *
 *  @return Returns the object at a given index
 */
- (id _Nullable)objectAtCircleIndex:(NSInteger)index;

/**
 *  Create a reversed array from the given array
 *
 *  @param array The array to be converted
 *
 *  @return Returns the reversed array
 */
+ (NSArray * _Nonnull)reversedArray:(NSArray * _Nonnull)array;

/**
 *  Convert the given array to JSON as NSString
 *
 *  @param array The array to be reversed
 *
 *  @return Returns the JSON as NSString or nil if error while parsing
 */
+ (NSString * _Nonnull)arrayToJson:(NSArray * _Nonnull)array;

@end
