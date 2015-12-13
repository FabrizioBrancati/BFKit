//
//  LimitedTextFieldDelegate.m
//  BFKitDemo
//
//  Created by Ashraf Abu Bakr on 12/13/15.
//  Copyright © 2015 Fabrizio Brancati. All rights reserved.
//

#import "LimitedTextFieldDelegate.h"

@implementation LimitedTextFieldDelegate

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if(textField.text.length >= self.maxCharacters && ![string isEqualToString:@""])
        return NO;
    
    return YES;
}
@end
