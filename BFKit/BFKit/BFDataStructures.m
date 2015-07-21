//
//  BFDataStructures.m
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

#import "BFDataStructures.h"

#pragma mark - Stack

@interface Stack ()
{
    NSMutableArray *stack;
}
@end

@implementation Stack

- (instancetype)init
{
    if(self = [super init])
    {
        stack = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@", stack];
}

- (BOOL)empty
{
    return stack.count > 0 ? YES : NO;
}

- (void)push:(id)object
{
    [stack addObject:object];
}

- (NSObject *)pop
{
    id popped = stack[stack.count - 1];
    [stack removeObjectAtIndex:stack.count - 1];
    
    return popped;
}

@end

#pragma mark - List

@interface List ()
{
    NSMutableArray *list;
}
@end

@implementation List

- (instancetype)init
{
    if(self = [super init])
    {
        list = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@", list];
}

- (NSInteger)searchObject:(id)object
{
    return [list indexOfObject:object];
}

- (id)searchObjectAtIndex:(NSInteger)index
{
    return [list objectAtIndex:index];
}

- (void)insert:(id)object
{
    [list addObject:object];
}

- (void)deleteObject:(id)object
{
    [list removeObject:object];
}

- (void)deleteObjectAtIndex:(NSInteger)index
{
    [list removeObjectAtIndex:index];
}

@end

#pragma mark - Queue

@interface Queue ()
{
    NSMutableArray *queue;
}
@end

@implementation Queue

- (instancetype)init
{
    if(self = [super init])
    {
        queue = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@", queue];
}

- (void)enqueue:(id)object
{
    [queue addObject:object];
}

- (void)dequeue
{
    [queue removeObjectAtIndex:0];
}

- (id)top
{
    return [queue objectAtIndex:queue.count -1];
}

- (void)emptyQueue
{
    [queue removeAllObjects];
}

@end
