//
//  NSNumber+BFKit.h
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
@import CoreGraphics;

/**
 *  This category adds some useful methods to NSNumber
 */
@interface NSNumber (BFKit)

#if __cplusplus
extern "C" {
#endif
/**
 *  Degrees to radians conversion
 *
 *  @param degrees Degrees to be converted
 *
 *  @return Returns the convertion result
 */
CGFloat DegreesToRadians(CGFloat degrees);
/**
 *  Radians to degrees conversion
 *
 *  @param radians Radians to be converted
 *
 *  @return Returns the convertion result
 */
CGFloat RadiansToDegrees(CGFloat radians);
#if __cplusplus
}
#endif

/**
 *  Create a random integer between the given range
 *
 *  @param minValue Mininum random value
 *  @param maxValue Maxinum random value
 *
 *  @return Returns the created random integer
 */
+ (NSInteger)randomIntBetweenMin:(NSInteger)minValue
                          andMax:(NSInteger)maxValue;

/**
 *  Create a random float
 *
 *  @return Returns the created random float
 */
+ (CGFloat)randomFloat;

/**
 *  Create a random float between the given range
 *
 *  @param minValue Mininum random value
 *  @param maxValue Maxinum random value
 *
 *  @return Returns the created random float
 */
+ (CGFloat)randomFloatBetweenMin:(CGFloat)minValue
                          andMax:(CGFloat)maxValue;

/**
 *  Get the next power of two
 *
 *  @param number Number to be powered
 *
 *  @return Returns the number powered
 */
+ (NSInteger)nextPowerOfTwo:(NSInteger)number;

/**
 *  Returns if the number is a power of two
 *
 *  @param number Number to check
 *
 *  @return Returns if the number is a power of two
 */
+ (BOOL)isPowerOfTwo:(NSInteger)number;

@end
