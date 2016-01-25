//
//  BFTextField.m
//  BFKit
//
//  Created by Ashraf Abu Bakr on 1/19/16.
//  Copyright © 2016 Fabrizio Brancati. All rights reserved.
//

#import "BFTextField.h"

@implementation BFTextField

-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    return self;
}


-(void)setDelegate:(id<UITextFieldDelegate>)delegate
{
    if ([delegate isKindOfClass:[BFTextFieldDelegate class]])
    {
        BFTextFieldDelegate *limitDelegate = (BFTextFieldDelegate *)delegate;
        limitDelegate.maxCharacters = self.maxNumberOfCharacters;
    }
}

@end
