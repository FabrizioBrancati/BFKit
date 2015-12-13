//
//  LimitedTextFieldDelegate.h
//  BFKitDemo
//
//  Created by Ashraf Abu Bakr on 12/13/15.
//  Copyright © 2015 Fabrizio Brancati. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LimitedTextFieldDelegate : NSObject<UITextFieldDelegate>
@property int maxCharacters;

@end
