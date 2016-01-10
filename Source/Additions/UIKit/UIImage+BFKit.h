//
//  UIImage+BFKit.h
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
@import Accelerate;
@import CoreImage;

#import "UIFont+BFKit.h"

/**
 *  This category adds some useful methods to UIImage
 */
@interface UIImage (BFKit)

/**
 *  Create a dummy image
 *
 *  @param name To use it, name parameter must contain: "dummy.100x100" and "dummy.100x100.#FFFFFF" or "dummy.100x100.blue" (if it's a color defined in UIColor class) if you want to define a color
 *
 *  @return Returns the created dummy image
 */
+ (UIImage * _Nullable)dummyImageNamed:(NSString * _Nonnull)name;

/**
 *  Apply the given Blend Mode
 *
 *  @param blendMode The choosed Blend Mode
 *
 *  @return Returns the image
 */
- (UIImage * _Nonnull)blendMode:(CGBlendMode)blendMode;

/**
 *  Apply the Blend Mode Overlay
 *
 *  @return Returns the image
 */
- (UIImage * _Nonnull)blendOverlay;

/**
 *  Mask self with another image and size
 *
 *  @param image Mask image
 *  @param size  Mask size
 *
 *  @return Returns the masked image
 */
- (UIImage * _Nullable)maskWithImage:(UIImage * _Nonnull)image
                             andSize:(CGSize)size DEPRECATED_MSG_ATTRIBUTE("Use -setMaskImage from UIImageView instance method");

/**
 *  Mask self with another image
 *
 *  @param image Mask image
 *
 *  @return Returns the masked image
 */
- (UIImage * _Nullable)maskWithImage:(UIImage * _Nonnull)image DEPRECATED_MSG_ATTRIBUTE("Use -setMaskImage from UIImageView instance method");

/**
 *  Create an image from a given rect of self
 *
 *  @param rect Rect to take the image
 *
 *  @return Returns the image from a given rect
 */
- (UIImage * _Nonnull)imageAtRect:(CGRect)rect;

/**
 *  Scale the image proportionally to the given size
 *
 *  @param targetSize The site to scale to
 *
 *  @return Returns the scaled image
 */
- (UIImage * _Nonnull)imageByScalingProportionallyToSize:(CGSize)targetSize;

/**
 *  Scale the image to the minimum given size
 *
 *  @param targetSize The site to scale to
 *
 *  @return Returns the scaled image
 */
- (UIImage * _Nonnull)imageByScalingProportionallyToMinimumSize:(CGSize)targetSize;

/**
 *  Scale the image to the maxinum given size
 *
 *  @param maxSize The site to scale to
 *
 *  @return Returns the scaled image
 */
- (UIImage * _Nonnull)imageByScalingProportionallyToMaximumSize:(CGSize)targetSize;

/**
 *  Scele the iamge to the given size
 *
 *  @param targetSize The site to scale to
 *
 *  @return Returns the scaled image
 */
- (UIImage * _Nonnull)imageByScalingToSize:(CGSize)targetSize;

/**
 *  Rotate the image to the given radians
 *
 *  @param radians Radians to rotate to
 *
 *  @return Returns the rotated image
 */
- (UIImage * _Nonnull)imageRotatedByRadians:(CGFloat)radians;

/**
 *  Rotate the image to the given degrees
 *
 *  @param radians Degrees to rotate to
 *
 *  @return Returns the rotated image
 */
- (UIImage * _Nonnull)imageRotatedByDegrees:(CGFloat)degrees;

/**
 *  Flip the image horizontally
 *
 *  @return Returns the flipped image
 */
- (UIImage * _Nonnull)flipImageHorizontally;

/**
 *  Flip the image vertically
 *
 *  @return Returns the flipped image
 */
- (UIImage * _Nonnull)flipImageVertically;

/**
 *  Check if the image has alpha
 *
 *  @return Returns YES if has alpha, NO if not
 */
- (BOOL)hasAlpha;

/**
 *  Remove the alpha of the image
 *
 *  @return Returns the image without alpha
 */
- (UIImage * _Nonnull)removeAlpha;

/**
 *  Fill the alpha with the white color
 *
 *  @return Returns the filled image
 */
- (UIImage * _Nonnull)fillAlpha;

/**
 *  Fill the alpha with the given color
 *
 *  @param color Color to fill
 *
 *  @return Returns the filled image
 */
- (UIImage * _Nonnull)fillAlphaWithColor:(UIColor * _Nonnull)color;

/**
 *  Check if the image is in grayscale
 *
 *  @return Returns YES if is in grayscale, NO if not
 */
- (BOOL)isGrayscale;

/**
 *  Transform the image to grayscale
 *
 *  @return Returns the transformed image
 */
- (UIImage * _Nonnull)imageToGrayscale;

/**
 *  Transform the image to black and white
 *
 *  @return Returns the transformed image
 */
- (UIImage * _Nonnull)imageToBlackAndWhite;

/**
 *  Invert the color of the image
 *
 *  @return Returns the transformed image
 */
- (UIImage * _Nonnull)invertColors;


/**
 *  Apply the bloom effect to the image
 *
 *  @param radius    Radius of the bloom
 *  @param intensity Intensity of the bloom
 *
 *  @return Returns the transformed image
 */
- (UIImage * _Nonnull)bloom:(float)radius
                  intensity:(float)intensity;

/**
 *  Apply the blur effect to the image
 *
 *  @param blur Radius of the blur
 *
 *  @return Returns the transformed image
 */
- (UIImage * _Nonnull)boxBlurImageWithBlur:(CGFloat)blur DEPRECATED_MSG_ATTRIBUTE("Use -blurImageWithBlur");

/**
 *  Apply the blur effect to the image
 *
 *  @param blur Radius of the blur
 *
 *  @return Returns the transformed image
 */
- (UIImage * _Nonnull)blurImageWithBlur:(CGFloat)blur;

/**
 *  Apply the bump distortion effect to the image
 *
 *  @param center Vector of the distortion. Use [CIVector vectorWithX:Y:]
 *  @param radius Radius of the effect
 *  @param scale  Scale of the effect
 *
 *  @return Returns the transformed image
 */
- (UIImage * _Nonnull)bumpDistortion:(CIVector * _Nonnull)center
                              radius:(float)radius
                               scale:(float)scale;

/**
 *  Apply the bump distortion linear effect to the image
 *
 *  @param center Vector of the distortion, use [CIVector vectorWithX:Y:]
 *  @param radius Radius of the effect
 *  @param angle  Angle of the effect in radians
 *  @param scale  Scale of the effect
 *
 *  @return Returns the transformed image
 */
- (UIImage * _Nonnull)bumpDistortionLinear:(CIVector * _Nonnull)center
                                    radius:(float)radius
                                     angle:(float)angle
                                     scale:(float)scale;

/**
 *  Apply the circular splash distortion effect to the image
 *
 *  @param center Vector of the distortion, use [CIVector vectorWithX:Y:]
 *  @param radius Radius of the effect
 *
 *  @return Returns the transformed image
 */
- (UIImage * _Nonnull)circleSplashDistortion:(CIVector * _Nonnull)center
                                      radius:(float)radius;

/**
 *  Apply the circular wrap effect to the image
 *
 *  @param center Vector of the distortion, use [CIVector vectorWithX:Y:]
 *  @param radius Radius of the effect
 *  @param angle  Angle of the effect in radians
 *
 *  @return Returns the transformed image
 */
- (UIImage * _Nonnull)circularWrap:(CIVector * _Nonnull)center
                            radius:(float)radius
                             angle:(float)angle;

/**
 *  Apply the CMY halftone effect to the image
 *
 *  @param center    Vector of the distortion, use [CIVector vectorWithX:Y:]
 *  @param width     Width value
 *  @param angle     Angle of the effect in radians
 *  @param sharpness Sharpness Value
 *  @param gcr       GCR value
 *  @param ucr       UCR value
 *
 *  @return Returns the transformed image
 */
- (UIImage * _Nonnull)cmykHalftone:(CIVector * _Nonnull)center
                             width:(float)width
                             angle:(float)angle
                         sharpness:(float)sharpness
                               gcr:(float)gcr
                               ucr:(float)ucr;

/**
 *  Apply the sepia filter to the image
 *
 *  @param intensity Intensity of the filter
 *
 *  @return Returns the transformed image
 */
- (UIImage * _Nonnull)sepiaToneWithIntensity:(float)intensity;

/**
 *  Create an image from a given color
 *
 *  @param color Color value
 *
 *  @return Returns the created UIImage
 */
+ (UIImage * _Nonnull)imageWithColor:(UIColor * _Nonnull)color;

/**
 *  Create an image from a given text
 *
 *  @param text      Text
 *  @param fontName  Text's font name
 *  @param fontSize  Text's font size
 *  @param imageSize Image's size
 *
 *  @return Returns the created UIImage
 */
+ (UIImage * _Nonnull)imageFromText:(NSString * _Nonnull)text
                               font:(FontName)fontName
                           fontSize:(CGFloat)fontSize
                          imageSize:(CGSize)imageSize;

/**
 *  Create an image with a background color and with a text with a mask
 *
 *  @param imageSize       Image's size
 *  @param backgroundColor Image's background color
 *  @param string          Text to mask
 *  @param fontName        Text's font name
 *  @param fontSize        Text's font size
 *
 *  @return Returns the created UIImage
 */
+ (UIImage * _Nonnull)imageWithSize:(CGSize)imageSize
                    backgroundColor:(UIColor * _Nonnull)backgroundColor
                         maskedText:(NSString * _Nonnull)string
                               font:(FontName)fontName
                           fontSize:(CGFloat)fontSize;

@end
