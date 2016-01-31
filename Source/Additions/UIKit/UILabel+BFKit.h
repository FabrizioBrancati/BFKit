//
//  UILabel+BFKit.h
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

#import "UIFont+BFKit.h"
#import "NSString+BFKit.h"

/**
 *  This category adds some useful methods to UILabel
 */
@interface UILabel (BFKit)

/**
 *  Create an UILabel with the given parameters, with clearColor for the shadow
 *
 *  @param frame     Label's frame
 *  @param text      Label's text
 *  @param fontName  Label's font name, FontName enum is declared in UIFont+BFKit
 *  @param size      Label's font size
 *  @param color     Label's text color
 *  @param alignment Label's text alignment
 *  @param lines     Label's text lines
 *
 *  @return Returns the created UILabel
 */
+ (UILabel * _Nonnull)initWithFrame:(CGRect)frame
                               text:(NSString * _Nonnull)text
                               font:(FontName)fontName
                               size:(CGFloat)size
                              color:(UIColor * _Nonnull)color
                          alignment:(NSTextAlignment)alignment
                              lines:(NSInteger)lines;

/**
 *  Create an UILabel with the given parameters
 *
 *  @param frame       Label's frame
 *  @param text        Label's text
 *  @param fontName    Label's font name, FontName enum is declared in UIFont+BFKit
 *  @param size        Label's font size
 *  @param color       Label's text color
 *  @param alignment   Label's text alignment
 *  @param lines       Label's text lines
 *  @param colorShadow Label's text shadow color
 *
 *  @return Returns the created UILabel
 */
+ (UILabel * _Nonnull)initWithFrame:(CGRect)frame
                               text:(NSString * _Nonnull)text
                               font:(FontName)fontName
                               size:(CGFloat)size
                              color:(UIColor * _Nonnull)color
                          alignment:(NSTextAlignment)alignment
                              lines:(NSInteger)lines
                        shadowColor:(UIColor * _Nonnull)colorShadow;


/**
 *  Calculates height based on text, width and font
 *
 *  @return Returns calculated height
 */
- (CGFloat)calculatedHeight;


/**
 *  Sets a custom font from a character at an index to character at another index
 *
 *  @param font      New font to be setted
 *  @param fromIndex The start index
 *  @param toIndex   The end index
 */
- (void)setFont:(UIFont * _Nonnull)font
      fromIndex:(NSInteger)fromIndex
        toIndex:(NSInteger)toIndex;

@end
