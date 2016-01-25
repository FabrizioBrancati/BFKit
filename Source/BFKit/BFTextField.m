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
    if (self)
    {
        BFTextFieldDelegate *limitDelegate = [[BFTextFieldDelegate alloc]init];
        limitDelegate.maxCharacters = self.maxNumberOfCharacters;
        self.delegate = limitDelegate;
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        BFTextFieldDelegate *limitDelegate = [[BFTextFieldDelegate alloc]init];
        limitDelegate.maxCharacters = self.maxNumberOfCharacters;
        self.delegate = limitDelegate;
    }
    return self;
}

-(void)awakeFromNib
{
    BFTextFieldDelegate *limitDelegate = [[BFTextFieldDelegate alloc]init];
    limitDelegate.maxCharacters = self.maxNumberOfCharacters;
    self.delegate = limitDelegate;
}

@end
