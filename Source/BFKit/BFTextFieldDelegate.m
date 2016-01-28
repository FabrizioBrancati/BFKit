//
//  LimitedTextFieldDelegate.m
//  BFKitDemo
//
//  Created by Ashraf Abu Bakr on 12/13/15.
//  Copyright © 2015 Fabrizio Brancati. All rights reserved.
//

#import "BFTextFieldDelegate.h"
NSString *const kMaxCharacters = @"maxCharacters";

@implementation BFTextFieldDelegate

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if (self.maxCharacters > 0)
    {
        if(textField.text.length >= self.maxCharacters && ![string isEqualToString:@""])
            return NO;
    }
    return YES;
}

//- (id)initWithCoder:(NSCoder *)aDecoder
//{
//    self = [super init];
//    
//    self.maxCharacters = [aDecoder decodeObjectForKey:kMaxCharacters];
//    return self;
//}
//
//- (void)encodeWithCoder:(NSCoder *)aCoder
//{
//    
//    [aCoder encodeObject:self.maxCharacters forKey:kMaxCharacters];
//}
//
//- (id)copyWithZone:(NSZone *)zone
//{
//    BFLimitedTextFieldDelegate *copy = [[BFLimitedTextFieldDelegate alloc] init];
//    
//    if (copy) {
//        
//        copy.maxCharacters = [self.maxCharacters copyWithZone:zone];
//    }
//    
//    return copy;
//}

@end
