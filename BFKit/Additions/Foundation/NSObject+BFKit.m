//
//  NSObject+BFKit.m
//  BFKitDemo
//
//  Created by Fabrizio on 24/02/15.
//  Copyright (c) 2015 Fabrizio Brancati. All rights reserved.
//

#import "NSObject+BFKit.h"

@implementation NSObject (BFKit)

- (BOOL)isValid
{
    return !(self == nil || [self isKindOfClass:[NSNull class]]);
}

- (id)performSelector:(SEL)aSelector withObjects:(id)object, ...
{
    NSMethodSignature *signature = [self methodSignatureForSelector:aSelector];
    if(signature)
    {
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
        [invocation setTarget:self];
        [invocation setSelector:aSelector];
        
        va_list args;
        va_start(args, object);
        
        id arg = nil;
        int index = 2;
        while((arg = va_arg(args,id)))
        {
            [invocation setArgument:&arg atIndex:index];
            index++;
        }
        
        va_end(args);
        
        [invocation invoke];
        if(signature.methodReturnLength)
        {
            id anObject;
            [invocation getReturnValue:&anObject];
            return anObject;
        }
        else
        {
            return nil;
        }
    }
    else
    {
        return nil;
    }
}

@end
