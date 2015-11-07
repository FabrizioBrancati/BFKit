//
//  BFDataStructures.h
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

/**
 *  Primitive Stack implementation
 */
@interface Stack : NSObject

/**
 *  Initialize the Stack
 *
 *  @return Returns the Stack object
 */
- (instancetype)init;

/**
 *  Describe the Stack
 */
- (NSString *)description;

/**
 *  Returns if the Stack is empty or not
 *
 *  @return Returns YES if the Stack is empty, otherwise NO
 */
- (BOOL)empty;

/**
 *  Adds an element on top of the Stack
 *
 *  @param object The element to add
 */
- (void)push:(NSObject *)object;

/**
 *  Removes an element on top of the Stack
 *
 *  @return Returns the removed element
 */
- (NSObject *)pop;

@end

/**
 *  Primitive List implementation
 */
@interface List : NSObject

/**
 *  Initialize the List
 *
 *  @return Returns the List object
 */
- (instancetype)init;

/**
 *  Describe the List
 */
- (NSString *)description;

/**
 *  Search an element and returns the index
 *
 *  @param object The element to search
 *
 *  @return Returns the index of the searched element
 */
- (NSInteger)searchObject:(NSObject *)object;

/**
 *  Search for an index and returns the element
 *
 *  @param index The index
 *
 *  @return Returns the element of the searched index
 */
- (NSObject *)searchObjectAtIndex:(NSInteger)index;

/**
 *  Insert an element in the List
 *
 *  @param object The element to insert in the List
 */
- (void)insert:(NSObject *)object;

/**
 *  Delete an element in the List
 *
 *  @param object The object to be deleted
 */
- (void)deleteObject:(NSObject *)object;

/**
 *  Delete an element at the given index
 *
 *  @param index The index to delete
 */
- (void)deleteObjectAtIndex:(NSInteger)index;

@end

/**
 *  Primitive Queue implementation
 */
@interface Queue : NSObject

/**
 *  Initialize the Queue
 *
 *  @return Returns the Queue object
 */
- (instancetype)init;

/**
 *  Describe the Queue
 */
- (NSString *)description;

/**
 *  Adds an element to the Queue
 *
 *  @param object The element to add
 */
- (void)enqueue:(NSObject *)object;

/**
 *  Dequeue the first element
 */
- (void)dequeue;

/**
 *  Returns the element on the top of the Queue
 *
 *  @return Returns the element on the top of the Queue
 */
- (NSObject *)top;

/**
 *  Remove all the elements in the Queue
 */
- (void)emptyQueue;

@end
