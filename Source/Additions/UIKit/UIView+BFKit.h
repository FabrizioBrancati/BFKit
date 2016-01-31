//
//  UIView+BFKit.h
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
@import QuartzCore;

/**
 *  Direction of flip animation
 */
typedef NS_ENUM(NSInteger, UIViewAnimationFlipDirection) {
    /**
     *  Flip animation from top
     */
    UIViewAnimationFlipDirectionFromTop = 0,
    /**
     *  Flip animation from left
     */
    UIViewAnimationFlipDirectionFromLeft,
    /**
     *  Flip animation from right
     */
    UIViewAnimationFlipDirectionFromRight,
    /**
     *  Flip animation from bottom
     */
    UIViewAnimationFlipDirectionFromBottom
};

/**
 *  Direction of the translation
 */
typedef NS_ENUM(NSInteger, UIViewAnimationTranslationDirection) {
    /**
     *  Translation from left to right
     */
    UIViewAnimationTranslationDirectionFromLeftToRight = 0,
    /**
     *  Translation from right to left
     */
    UIViewAnimationTranslationDirectionFromRightToLeft
};

/**
 *  Direction of the linear gradient
 */
typedef NS_ENUM(NSInteger, UIViewLinearGradientDirection) {
    /**
     *  Linear gradient vertical
     */
    UIViewLinearGradientDirectionVertical = 0,
    /**
     *  Linear gradient horizontal
     */
    UIViewLinearGradientDirectionHorizontal,
    /**
     *  Linear gradient from left to right and top to down
     */
    UIViewLinearGradientDirectionDiagonalFromLeftToRightAndTopToDown,
    /**
     *  Linear gradient from left to right and down to top
     */
    UIViewLinearGradientDirectionDiagonalFromLeftToRightAndDownToTop,
    /**
     *  Linear gradient from right to left and top to down
     */
    UIViewLinearGradientDirectionDiagonalFromRightToLeftAndTopToDown,
    /**
     *  Linear gradient from right to left and down to top
     */
    UIViewLinearGradientDirectionDiagonalFromRightToLeftAndDownToTop
};

/**
 *  This category adds some useful methods to UIView
 */
@interface UIView (BFKit)

/**
 *  Create an UIView with the given frame and background color
 *
 *  @param frame           UIView's frame
 *  @param backgroundColor UIView's background color
 */
+ (instancetype _Nonnull)initWithFrame:(CGRect)frame
                   backgroundColor:(UIColor * _Nonnull)backgroundColor;

/**
 *  Create a border around the UIView
 *
 *  @param color  Border's color
 *  @param radius Border's radius
 *  @param width  Border's width
 */
- (void)createBordersWithColor:(UIColor * _Nonnull)color
                withCornerRadius:(CGFloat)radius
                        andWidth:(CGFloat)width;

/**
 *  Remove the borders around the UIView
 */
- (void)removeBorders;

/**
 *  Create a shadow on the UIView
 *
 *  @param offset  Shadow's offset
 *  @param opacity Shadow's opacity
 *  @param radius  Shadow's radius
 */
- (void)createRectShadowWithOffset:(CGSize)offset
                           opacity:(CGFloat)opacity
                            radius:(CGFloat)radius;

/**
 *  Create a corner radius shadow on the UIView
 *
 *  @param cornerRadius Corner radius value
 *  @param offset       Shadow's offset
 *  @param opacity      Shadow's opacity
 *  @param radius       Shadow's radius
 */
- (void)createCornerRadiusShadowWithCornerRadius:(CGFloat)cornerRadius
                                          offset:(CGSize)offset
                                         opacity:(CGFloat)opacity
                                          radius:(CGFloat)radius;

/**
 *  Remove the shadow around the UIView
 */
- (void)removeShadow;

/**
 *  Set the corner radius of UIView
 *
 *  @param radius Radius value
 */
- (void)setCornerRadius:(CGFloat)radius;

/**
 *  Create a linear gradient
 *
 *  @param colors    NSArray of UIColor instances
 *  @param direction Direction of the gradient
 */
- (void)createGradientWithColors:(NSArray * _Nonnull)colors
                       direction:(UIViewLinearGradientDirection)direction;

/**
 *  Create a shake effect on the UIView
 */
- (void)shakeView;

/**
 *  Create a pulse effect on th UIView
 *
 *  @param duration Seconds of animation
 */
- (void)pulseViewWithDuration:(CGFloat)duration;

/**
 *  Create a pulse effect on the UIView
 *
 *  @param seconds Seconds of animation
 */
- (void)pulseViewWithTime:(CGFloat)seconds DEPRECATED_MSG_ATTRIBUTE("Use -pulseViewWithDuration:");

/**
 *  Create a heartbeat effect on the UIView
 *
 *  @param duration Seconds of animation
 */
- (void)heartbeatViewWithDuration:(CGFloat)duration;

/**
 *  Adds a motion effect to the view
 */
- (void)applyMotionEffects;

/**
 *  Flip the view
 *
 *  @param duration  Seconds of animation
 *  @param direction Direction of the flip animation
 */
- (void)flipWithDuration:(NSTimeInterval)duration
               direction:(UIViewAnimationFlipDirection)direction;

/**
 *  Translate the UIView around the topView
 *
 *  @param topView       Top view to translate to
 *  @param duration      Duration of the translation
 *  @param direction     Direction of the translation
 *  @param repeat        If the animation must be repeat or no
 *  @param startFromEdge If the animation must start from the edge
 */
- (void)translateAroundTheView:(UIView * _Nonnull)topView
                        duration:(CGFloat)duration
                        direction:(UIViewAnimationTranslationDirection)direction
                            repeat:(BOOL)repeat
                    startFromEdge:(BOOL)startFromEdge;

/**
 *  Take a screenshot of the current view
 *
 *  @return Returns screenshot as UIImage
 */
- (UIImage * _Nonnull)screenshot;

/**
 *  Take a screenshot of the current view an saving to the saved photos album
 *
 *  @return Returns screenshot as UIImage
 */
- (UIImage * _Nonnull)saveScreenshot;

/**
 *  Removes all subviews from current view
 */
- (void)removeAllSubviews;

@end
