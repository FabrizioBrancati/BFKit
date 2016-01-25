//
//  BFDataStructures.m
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

#import "BFDataStructures.h"
#import "NSArray+BFKit.h"

#pragma mark - Stack

@interface Stack () {
    NSMutableArray *stack;
}
@end

@implementation Stack

- (instancetype _Nonnull)init {
    if (self = [super init]) {
        stack = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString * _Nonnull)description {
    return [NSString stringWithFormat:@"%@", stack];
}

- (BOOL)empty {
    return stack.count > 0 ? YES : NO;
}

- (void)push:(id _Nonnull)object {
    [stack addObject:object];
}

- (id _Nullable)pop {
    id popped = nil;
    if (![self empty]) {
        popped = stack[stack.count - 1];
        [stack removeObjectAtIndex:stack.count - 1];
    }
    
    return popped;
}

@end

#pragma mark - List

@interface List () {
    NSMutableArray *list;
}
@end

@implementation List

- (instancetype _Nonnull)init {
    if (self = [super init]) {
        list = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString * _Nonnull)description {
    return [NSString stringWithFormat:@"%@", list];
}

- (NSInteger)searchObject:(id _Nonnull)object {
    return [list indexOfObject:object];
}

- (id _Nullable)searchObjectAtIndex:(NSInteger)index {
    return [list safeObjectAtIndex:index];
}

- (void)insert:(id _Nonnull)object {
    [list addObject:object];
}

- (BOOL)deleteObject:(id _Nonnull)object {
    if ([self searchObject:object]) {
        [list removeObject:object];
        return YES;
    } else {
        return NO;
    }
}

- (BOOL)deleteObjectAtIndex:(NSInteger)index {
    if (index > 0 && index <= list.count) {
        [list removeObjectAtIndex:index];
        return YES;
    } else {
        return NO;
    }
}

@end

#pragma mark - Queue

@interface Queue () {
    NSMutableArray *queue;
}
@end

@implementation Queue

- (instancetype _Nonnull)init {
    if (self = [super init]) {
        queue = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString * _Nonnull)description {
    return [NSString stringWithFormat:@"%@", queue];
}

- (void)enqueue:(id _Nonnull)object {
    [queue addObject:object];
}

- (BOOL)dequeue {
    if (queue.count > 0) {
        [queue removeObjectAtIndex:0];
        return YES;
    } else {
        return NO;
    }
}

- (id _Nullable)top {
    if (queue.count > 0) {
        return [queue objectAtIndex:queue.count -1];
    } else {
        return nil;
    }
}

- (void)emptyQueue {
    [queue removeAllObjects];
}

@end
