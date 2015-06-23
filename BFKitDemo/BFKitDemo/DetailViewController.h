//
//  DetailViewController.h
//  BFKitDemo
//
//  Created by Fabrizio on 08/09/14.
//  Copyright (c) 2014 Fabrizio Brancati. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, DetailType)
{
    DetailTypeUIButton = 0,
    DetailTypeUIColor,
    DetailTypeUIDevice,
    DetailTypeUIFont,
    DetailTypeUIImage,
    DetailTypeUIImageView,
    DetailTypeUILabel,
    DetailTypeUIScrollView,
    DetailTypeUITableView,
    DetailTypeUITextField,
    DetailTypeUITextView,
    DetailTypeUIView,
    DetailTypeUIWebView,
    DetailTypeNSArray,
    DetailTypeNSDate,
    DetailTypeNSDictionary,
    DetailTypeNSFileManager,
    DetailTypeNSMutableArray,
    DetailTypeNSMutableDictionary,
    DetailTypeNSNumber,
    DetailTypeNSObject,
    DetailTypeNSProcessInfo,
    DetailTypeNSString,
    DetailTypeNSThread,
    DetailTypeBFApp,
    DetailTypeBFButton,
    DetailTypeBFLog,
    DetailTypeBFPassword,
    DetailTypeBFSystemSound,
    DetailTypeBFTouchID
};

@interface DetailViewController : UIViewController

- (void)prepareForDetail:(DetailType)detailType;

@end
