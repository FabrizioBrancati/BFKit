//
//  UIImageView+BFKit.h
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

@import Foundation;
@import UIKit;
@import QuartzCore;

/**
 *  This category add some useful methods to UIImageView
 */
@interface UIImageView (BFKit)

/**
 *  Create an UIImageView with the given image and frame
 *
 *  @param image UIImageView image
 *  @param rect  UIImageView frame
 *
 *  @return Return the created UIImageView
 */
+ (id)initWithImage:(UIImage *)image
              frame:(CGRect)rect;

/**
 *  Create an UIImageView with the given image, size and center
 *
 *  @param image  UIImageView image
 *  @param size   UIImageView size
 *  @param center UIImageView center
 *
 *  @return Return the created UIImageView
 */
+ (id)initWithImage:(UIImage *)image
               size:(CGSize)size
             center:(CGPoint)center;

/**
 *  Create an UIImageView with the given image and center
 *
 *  @param image  UIImageView image
 *  @param center UIImageView center
 *
 *  @return Return the created UIImageView
 */
+ (id)initWithImage:(UIImage *)image
             center:(CGPoint)center;

/**
 *  Create a drop shadow effect
 *
 *  @param color   Shadow's color
 *  @param radius  Shadow's radius
 *  @param offset  Shadow's offset
 *  @param opacity Shadow's opacity
 */
- (void)setImageShadowColor:(UIColor *)color
                     radius:(CGFloat)radius
                     offset:(CGSize)offset
                    opacity:(CGFloat)opacity;

/**
 *  Mask the current UIImageView with an UIImage
 *
 *  @param image The mask UIImage
 */
- (void)setMaskImage:(UIImage *)image;

@end
