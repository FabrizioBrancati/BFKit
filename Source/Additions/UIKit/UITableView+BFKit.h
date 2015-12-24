//
//  UITableView+BFKit.h
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
 *  This category adds some useful methods to UITableView
 */
@interface UITableView (BFKit)

/**
 *  Create an UITableView and set some parameters
 *
 *  @param frame              TableView's frame
 *  @param style              TableView's style
 *  @param cellSeparatorStyle Cell separator style
 *  @param separatorInset     Cell separator inset
 *  @param dataSource         TableView's data source
 *  @param delegate           TableView's delegate
 *
 *  @return Returns the created UITableView
 */
+ (instancetype _Nonnull)initWithFrame:(CGRect)frame
                                  style:(UITableViewStyle)style
                     cellSeparatorStyle:(UITableViewCellSeparatorStyle)cellSeparatorStyle
                         separatorInset:(UIEdgeInsets)separatorInset
                             dataSource:(id <UITableViewDataSource> _Nullable)dataSource
                               delegate:(id <UITableViewDelegate> _Nullable)delegate;

/**
 *  Retrive all the IndexPaths for the section
 *
 *  @param section The section
 *
 *  @return Return an array with all the IndexPaths
 */
- (NSArray * _Nonnull)getIndexPathsForSection:(NSUInteger)section;

/**
 *  Retrive the next index path for the given row at section
 *
 *  @param row     Row of the index path
 *  @param section Section of the index path
 *
 *  @return Returns the next index path
 */
- (NSIndexPath * _Nonnull)getNextIndexPath:(NSUInteger)row
                                forSection:(NSUInteger)section;

/**
 *  Retrive the previous index path for the given row at section
 *
 *  @param row     Row of the index path
 *  @param section Section of the index path
 *
 *  @return Returns the previous index path
 */
- (NSIndexPath * _Nonnull)getPreviousIndexPath:(NSUInteger)row
                                    forSection:(NSUInteger)section;

@end
