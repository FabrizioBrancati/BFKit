//
//  UIScrollView+BFKit.h
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

/**
 *  This category adds some useful methods to UIScrollView
 */
@interface UIScrollView (BFKit)

/**
 *  Create an UIScrollView and set some parameters
 *
 *  @param frame                ScrollView's frame
 *  @param contentSize          ScrollView's content size
 *  @param clipsToBounds        Set if ScrollView has to clips to bounds
 *  @param pagingEnabled        Set if ScrollView has paging enabled
 *  @param showScrollIndicators Set if ScrollView has to show the scroll indicators, vertical and horizontal
 *  @param delegate             ScrollView's delegate
 *
 *  @return Returns the created UIScrollView
 */
+ (instancetype _Nonnull)initWithFrame:(CGRect)frame
                             contentSize:(CGSize)contentSize
                           clipsToBounds:(BOOL)clipsToBounds
                           pagingEnabled:(BOOL)pagingEnabled
                    showScrollIndicators:(BOOL)showScrollIndicators
                                delegate:(id<UIScrollViewDelegate> _Nullable)delegate;

@end
