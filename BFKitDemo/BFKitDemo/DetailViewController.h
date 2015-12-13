//
//  DetailViewController.h
//  BFKitDemo
//
//  Created by Fabrizio on 08/09/14.
//  Copyright (c) 2014 Fabrizio Brancati. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, DetailType) {
    DetailTypeBFApp = 0,
    DetailTypeBFButton,
    DetailTypeBFDataStructures,
    DetailTypeBFLog,
    DetailTypeBFPassword,
    DetailTypeBFSystemSound,
    DetailTypeBFTouchID,
    DetailTypeBFTextField,
    DetailTypeUIButton,
    DetailTypeUIColor,
    DetailTypeUIDevice,
    DetailTypeUIFont,
    DetailTypeUIImage,
    DetailTypeUIImageView,
    DetailTypeUILabel,
    DetailTypeUINavigationBar,
    DetailTypeUIScreen,
    DetailTypeUIScrollView,
    DetailTypeUITableView,
    DetailTypeUITextField,
    DetailTypeUITextView,
    DetailTypeUIToolbar,
    DetailTypeUIView,
    DetailTypeUIWebView,
    DetailTypeUIWindow,
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
    DetailTypeNSThread
};

@interface DetailViewController : UIViewController

- (void)prepareForDetail:(DetailType)detailType;

@end
