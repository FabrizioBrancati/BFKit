//
//  DetailViewController.h
//  BFKitDemo
//
//  Created by Fabrizio on 08/09/14.
//  Copyright (c) 2014 Fabrizio Brancati.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, DetailType) {
    DetailTypeBFApp = 0,
    DetailTypeBFButton,
    DetailTypeBFCryptor,
    DetailTypeBFDataStructures,
    DetailTypeBFLog,
    DetailTypeBFPassword,
    DetailTypeBFSystemSound,
    DetailTypeBFTextField,
    DetailTypeBFTouchID,
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
    DetailTypeUIWindow,
    DetailTypeNSArray,
    DetailTypeNSData,
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

@interface DetailViewController : UIViewController <UITextFieldDelegate>

- (void)prepareForDetail:(DetailType)detailType;

@end
