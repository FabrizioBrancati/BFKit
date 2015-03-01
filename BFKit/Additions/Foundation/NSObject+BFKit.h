//
//  NSObject+BFKit.h
//  BFKitDemo
//
//  Created by Fabrizio on 24/02/15.
//  Copyright (c) 2015 Fabrizio Brancati. All rights reserved.
//

@import Foundation;

/**
 *  This class add some useful methods to NSObject
 */
@interface NSObject (BFKit)

/**
 *  Check if the object is valid (not nil or null)
 *
 *  @return Return if the object is valid
 */
- (BOOL)isValid;

/**
 *  Perform selector with unlimited objects
 *
 *  @param aSelector The selector
 *  @param object    The objects
 *
 *  @return An object that is the result of the message
 */
- (id)performSelector:(SEL)aSelector withObjects:(id)object, ... NS_REQUIRES_NIL_TERMINATION;

@end
