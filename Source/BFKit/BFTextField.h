//
//  BFTextField.h
//  BFKitDemo
//
//  Created by Ashraf Abu Bakr on 12/13/15.
//  Copyright © 2015 Fabrizio Brancati. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LimitedTextFieldDelegate.h"

@interface BFTextField : UITextField

@property int maxNumberofCharacters;
@property LimitedTextFieldDelegate * limitedDelegate;

//-(id)initWithFrame:(CGRect)frame;
- (id)initWithMaxCharacters:(int)max;

@end
