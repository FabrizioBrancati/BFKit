//
//  LimitedTextFieldDelegate.m
//  BFKitDemo
//
//  Created by Ashraf Abu Bakr on 12/13/15.
//  Copyright © 2015 Fabrizio Brancati. All rights reserved.
//

#import "LimitedTextFieldDelegate.h"
NSString *const kMaxCharacters = @"maxCharacters";

@implementation LimitedTextFieldDelegate

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if(textField.text.length >= [self.maxCharacters intValue] && ![string isEqualToString:@""])
        return NO;
    
    return YES;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    
    self.maxCharacters = [aDecoder decodeObjectForKey:kMaxCharacters];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    
    [aCoder encodeObject:_maxCharacters forKey:kMaxCharacters];
}

- (id)copyWithZone:(NSZone *)zone
{
    LimitedTextFieldDelegate *copy = [[LimitedTextFieldDelegate alloc] init];
    
    if (copy) {
        
        copy.maxCharacters = [self.maxCharacters copyWithZone:zone];
    }
    
    return copy;
}

@end
