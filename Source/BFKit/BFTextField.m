//
//  BFTextField.m
//  BFKitDemo
//
//  Created by Ashraf Abu Bakr on 12/13/15.
//  Copyright © 2015 Fabrizio Brancati. All rights reserved.
//

#import "BFTextField.h"

@implementation BFTextField

- (id)initWithMaxCharacters:(int)max
{
    self = [super init];
    if (self) {
        //limitedDelegate is a property of your textfield subclass
        self.maxNumberofCharacters = max;
        self.limitedDelegate = [[LimitedTextFieldDelegate alloc] init];
        self.limitedDelegate.maxCharacters = self.maxNumberofCharacters;
        self.delegate = self.limitedDelegate;
    }
    return self;
}

//-(id)initWithFrame:(CGRect)frame
//{
//    [self setFrame:frame];
//    self = [self init];
//    return self;
//}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
