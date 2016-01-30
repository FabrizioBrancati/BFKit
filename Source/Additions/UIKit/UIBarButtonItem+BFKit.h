//
//  UIBarButtonItem+BFKit.h
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

@import UIKit;

/**
 *  This category adds some useful methods to UIBarButtonItem
 */
@interface UIBarButtonItem (BFKit)

/**
 *  Create an UIBarButtonItem with type setted to FlexibleSpace
 *
 *  @return Returns the created UIBarButtonItem
 */
- (instancetype _Nonnull)initWithBarButtonFlexibleSpace;

/**
 *  Create an UIBarButtonItem with type setted to FlexibleSpace or FixedSpace
 *
 *  @param spaceType Must be FlexibleSpace or FixedSpace, otherwise a FlexibleSpace UIBarButtonItem will be created
 *  @param width     To use only if space is setted to FixedSpace, and it will be the width of it
 *
 *  @return Returns the created UIBarButtonItem
 */
- (instancetype _Nonnull)initWithBarButtonSpaceType:(UIBarButtonSystemItem)spaceType
                                              width:(CGFloat)width;

@end
