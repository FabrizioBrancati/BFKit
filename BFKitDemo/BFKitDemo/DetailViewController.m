//
//  DetailViewController.m
//  BFKitDemo
//
//  Created by Fabrizio on 08/09/14.
//  Copyright (c) 2014 Fabrizio Brancati.
//

#import "DetailViewController.h"
#import "AppDelegate.h"

@interface DetailViewController () {
    UIScrollView *_scrollView;
    DetailType _detailType;
}
@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization

        _scrollView = [UIScrollView initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) contentSize:CGSizeZero clipsToBounds:NO pagingEnabled:NO showScrollIndicators:YES delegate:nil];
        [self.view addSubview:_scrollView];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];

    switch (_detailType) {
        case DetailTypeUINavigationBar: {
            AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
            [appDelegate.kitNavigationController.navigationBar setTransparent:NO];

            break;
        }
        case DetailTypeUIWindow: {
            BFHideTouchOnScreen;

            break;
        }
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForDetail:(DetailType)detailType {
    _detailType = detailType;

    switch (_detailType) {
        case DetailTypeBFApp: {
            self.title = @"BFApp";
            [_scrollView removeFromSuperview];

            BFLogClear;

            BFLog(@"App name: %@", APP_NAME);
            BFLog(@"App build: %@", APP_BUILD);
            BFLog(@"App version: %@", APP_VERSION);
            BFLog(@"Localized string from BFKit: %@", BFLocalizedString(@"OPEN", @""));

            [BFApp onFirstStart:^(BOOL isFirstStart) {
                if (isFirstStart) {
                    BFLog(@"Is first start!")
                } else {
                    BFLog(@"Is not first start!")
                }
            }];

            UITextView *textView = [UITextView initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) text:BFLogString color:[UIColor blackColor] font:FontNameHelveticaNeue size:16 alignment:NSTextAlignmentLeft dataDetectorTypes:UIDataDetectorTypeAll editable:NO selectable:NO returnType:UIReturnKeyDefault keyboardType:UIKeyboardTypeDefault secure:NO autoCapitalization:UITextAutocapitalizationTypeNone keyboardAppearance:UIKeyboardAppearanceDefault enablesReturnKeyAutomatically:YES autoCorrectionType:UITextAutocorrectionTypeDefault delegate:nil];
            [self.view addSubview:textView];

            break;
        }
        case DetailTypeBFButton: {
            self.title = @"BFButton";
            [_scrollView removeFromSuperview];

            BFButton *button = [[BFButton alloc] initWithFrame:CGRectMake(20, 84, SCREEN_WIDTH - 40, 50) image:[UIImage imageWithSize:CGSizeMake(SCREEN_WIDTH, 50) backgroundColor:[UIColor colorWithRed:0.301 green:0.550 blue:0.686 alpha:1.000] maskedText:@"BFKit" font:FontNameHelveticaNeueBold fontSize:20] highlightedImage:[UIImage imageWithSize:CGSizeMake(SCREEN_WIDTH, 50) backgroundColor:[UIColor colorWithRed:0.9218 green:0.565 blue:0.139 alpha:1.0] maskedText:@"BFKit" font:FontNameHelveticaNeueBold fontSize:20] fadeDuration:1];
            [self.view addSubview:button];

            break;
        }
        case DetailTypeBFCryptor: {
            self.title = @"BFCryptor";
            [_scrollView removeFromSuperview];

            BFLogClear;

            NSString *string = @"Fabrizio Brancati";
            NSString *key = @"p4Ssw0rd";

            BFLog(@"The main string to be converted is: %@", string);
            BFLog(@"The key string (when required) is: %@\n\n", key);
            BFLog(@"MD5: %@", [BFCryptor MD5:string]);
            BFLog(@"SHA1: %@", [BFCryptor SHA1:string]);
            BFLog(@"SHA256: %@", [BFCryptor SHA256:string]);
            BFLog(@"SHA512: %@\n\n", [BFCryptor SHA512:string]);

            NSData *AES128 = [BFCryptor AES128EncryptString:string withKey:key];
            BFLog(@"AES128 Encrypt: %@", AES128);
            BFLog(@"AES128 Decrypt: %@\n\n", [BFCryptor AES128DecryptData:AES128 withKey:key]);

            NSData *AES256 = [BFCryptor AES256EncryptString:string withKey:key];
            BFLog(@"AES256 Encrypt: %@", AES256);
            BFLog(@"AES256 Decrypt: %@", [BFCryptor AES256DecryptData:AES256 withKey:key]);

            UITextView *textView = [UITextView initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) text:BFLogString color:[UIColor blackColor] font:FontNameHelveticaNeue size:16 alignment:NSTextAlignmentLeft dataDetectorTypes:UIDataDetectorTypeAll editable:NO selectable:NO returnType:UIReturnKeyDefault keyboardType:UIKeyboardTypeDefault secure:NO autoCapitalization:UITextAutocapitalizationTypeNone keyboardAppearance:UIKeyboardAppearanceDefault enablesReturnKeyAutomatically:YES autoCorrectionType:UITextAutocorrectionTypeDefault delegate:nil];
            [self.view addSubview:textView];

            break;
        }
        case DetailTypeBFDataStructures: {
            self.title = @"BFDataStructures";
            [_scrollView removeFromSuperview];

            BFLogClear;

            Stack *stack = [[Stack alloc] init];
            [stack push:@"1"];
            [stack push:@"2"];
            BFLog(@"Push: 1\nPush: 2\nStack: %@", stack);
            [stack pop];
            BFLog(@"Pop\nStack: %@", stack);
            if ([stack empty]) {
                BFLog(@"Is empty");
            } else {
                BFLog(@"Is not empty");
            }

            List *list = [[List alloc] init];
            [list insert:@"1"];
            [list insert:@"2"];
            [list insert:@"3"];
            BFLog(@"\n\nInsert: 1\nInsert: 2\nInsert: 3\nList: %@", list);
            BFLog(@"Search index 0: %@", [list searchObjectAtIndex:0]);
            NSInteger search = [list searchObject:@"3"];
            BFLog(@"Search object \"3\": %li", search);
            [list deleteObject:@"3"];
            BFLog(@"Delete: 3\nList: %@", list);
            [list deleteObjectAtIndex:0];
            BFLog(@"Delete index: 0\nList: %@", list);

            Queue *queue = [[Queue alloc] init];
            [queue enqueue:@"1"];
            [queue enqueue:@"2"];
            [queue enqueue:@"3"];
            BFLog(@"\n\nEnqueue: 1\nEnqueue: 2\nEnqueue: 3\nQueue: %@", queue);
            BFLog(@"Top: %@", [queue top]);
            [queue dequeue];
            BFLog(@"Dequeue\nQueue: %@", queue);
            [queue emptyQueue];
            BFLog(@"Empty queue: %@", queue);

            UITextView *textView = [UITextView initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) text:BFLogString color:[UIColor blackColor] font:FontNameHelveticaNeue size:16 alignment:NSTextAlignmentLeft dataDetectorTypes:UIDataDetectorTypeAll editable:NO selectable:NO returnType:UIReturnKeyDefault keyboardType:UIKeyboardTypeDefault secure:NO autoCapitalization:UITextAutocapitalizationTypeNone keyboardAppearance:UIKeyboardAppearanceDefault enablesReturnKeyAutomatically:YES autoCorrectionType:UITextAutocorrectionTypeDefault delegate:nil];
            [self.view addSubview:textView];

            break;
        }
        case DetailTypeBFLog: {
            self.title = @"BFLog";
            [_scrollView removeFromSuperview];

            BFLogClear;

            BFLog(@"This will be shown only if in DEBUG mode");

            UITextView *textView = [UITextView initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) text:BFLogString color:[UIColor blackColor] font:FontNameHelveticaNeue size:16 alignment:NSTextAlignmentLeft dataDetectorTypes:UIDataDetectorTypeAll editable:NO selectable:NO returnType:UIReturnKeyDefault keyboardType:UIKeyboardTypeDefault secure:NO autoCapitalization:UITextAutocapitalizationTypeNone keyboardAppearance:UIKeyboardAppearanceDefault enablesReturnKeyAutomatically:YES autoCorrectionType:UITextAutocorrectionTypeDefault delegate:nil];
            [self.view addSubview:textView];

            break;
        }
        case DetailTypeBFPassword: {
            self.title = @"BFPassword";
            [_scrollView removeFromSuperview];

            BFLogClear;

            NSString *pass1 = @"Password";
            PasswordStrengthLevel passLevel1 = [BFPassword checkPasswordStrength:pass1];
            BFLog(@"Password: %@ - Level: %d of %d", pass1, passLevel1, PasswordStrengthLevelVerySecure);
            NSString *pass2 = @"kqi019ASC.v1|!-2";
            PasswordStrengthLevel passLevel2 = [BFPassword checkPasswordStrength:pass2];
            BFLog(@"Password: %@ - Level: %d of %d", pass2, passLevel2, PasswordStrengthLevelVerySecure);

            UITextView *textView = [UITextView initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) text:BFLogString color:[UIColor blackColor] font:FontNameHelveticaNeue size:16 alignment:NSTextAlignmentLeft dataDetectorTypes:UIDataDetectorTypeAll editable:NO selectable:NO returnType:UIReturnKeyDefault keyboardType:UIKeyboardTypeDefault secure:NO autoCapitalization:UITextAutocapitalizationTypeNone keyboardAppearance:UIKeyboardAppearanceDefault enablesReturnKeyAutomatically:YES autoCorrectionType:UITextAutocorrectionTypeDefault delegate:nil];
            [self.view addSubview:textView];

            break;
        }
        case DetailTypeBFSystemSound: {
            self.title = @"BFSystemSound";
            [_scrollView removeFromSuperview];

            BFLogClear;

            [BFSystemSound playSystemSoundVibrate];
            BFLog(@"Vibrate");
            [BFSystemSound playSystemSound:AudioIDRecivedMessage];
            BFLog(@"Play sound");

            UITextView *textView = [UITextView initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) text:BFLogString color:[UIColor blackColor] font:FontNameHelveticaNeue size:16 alignment:NSTextAlignmentLeft dataDetectorTypes:UIDataDetectorTypeAll editable:NO selectable:NO returnType:UIReturnKeyDefault keyboardType:UIKeyboardTypeDefault secure:NO autoCapitalization:UITextAutocapitalizationTypeNone keyboardAppearance:UIKeyboardAppearanceDefault enablesReturnKeyAutomatically:YES autoCorrectionType:UITextAutocorrectionTypeDefault delegate:nil];
            [self.view addSubview:textView];

            break;
        }
        case DetailTypeBFTextField: {
            self.title = @"BFTextField";
            [_scrollView setContentSize:CGSizeMake(SCREEN_WIDTH, SCREEN_HEIGHT - 120)];

            BFTextField *textField = [[BFTextField alloc] initWithFrame:CGRectMake(20, 20, SCREEN_WIDTH - 40, 25)];
            [textField setBorderStyle:UITextBorderStyleBezel];
            [textField setMaxNumberOfCharacters:5];

            [_scrollView addSubview:textField];

            break;
        }
        case DetailTypeBFTouchID: {
            self.title = @"BFTouchID";
            [_scrollView setContentSize:CGSizeMake(SCREEN_WIDTH, SCREEN_HEIGHT - 120)];

            UILabel *normalLabel = [UILabel initWithFrame:CGRectMake(20, 20, SCREEN_WIDTH - 40, 50) text:@"Waiting for Touch ID..." font:FontNameHelveticaNeue size:16 color:[UIColor blackColor] alignment:NSTextAlignmentCenter lines:2];
            [_scrollView addSubview:normalLabel];

            if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"8.0")) {
                [BFTouchID showTouchIDAuthenticationWithReason:BFLocalizedString(@"AUTHENTICATION", @"") completion:^(TouchIDResult result) {

                    switch (result) {
                        case TouchIDResultSuccess: {
                            runOnMainThread(^{
                                [normalLabel setText:BFLocalizedString(@"AUTHORIZED", @"")];
                            });
                            break;
                        }
                        case TouchIDResultAuthenticationFailed: {
                            runOnMainThread(^{
                                [normalLabel setText:BFLocalizedString(@"NOT_OWNER", @"")];
                            });
                            break;
                        }
                        default: {
                            runOnMainThread(^{
                                [normalLabel setText:[NSString stringWithFormat:@"%@: %li", BFLocalizedString(@"ERROR", @""), (long)result]];
                            });
                            break;
                        }
                    }
                }];
            } else {
                [normalLabel setText:@"BFTouchID is available on iOS 8 or later"];
            }
            break;
        }
        case DetailTypeUIButton: {
            self.title = @"UIButton";
            [_scrollView setContentSize:CGSizeMake(SCREEN_WIDTH, SCREEN_HEIGHT - 120)];

            UIButton *clearButton = [UIButton initWithFrame:CGRectMake(20, 20, SCREEN_WIDTH - 40, 44) title:@"Button with clear color"];
            [clearButton setTitleColor:[UIColor colorWithRed:0.212 green:0.663 blue:0.878 alpha:1.000] highlightedColor:[UIColor colorWithRed:0.166 green:0.528 blue:0.700 alpha:1.000]];
            [_scrollView addSubview:clearButton];

            UIButton *borderedButton = [UIButton initWithFrame:CGRectMake(20, 80, SCREEN_WIDTH - 40, 44) title:@"Button with border"];
            [borderedButton setTitleColor:[UIColor colorWithRed:0.301 green:0.550 blue:0.686 alpha:1.000] highlightedColor:[UIColor colorWithRed:0.250 green:0.457 blue:0.572 alpha:1.000]];
            [borderedButton createBordersWithColor:[UIColor colorWithRed:0.301 green:0.550 blue:0.686 alpha:1.000] withCornerRadius:10 andWidth:3];
            [_scrollView addSubview:borderedButton];

            UIButton *coloredButton = [UIButton initWithFrame:CGRectMake(20, 140, SCREEN_WIDTH - 40, 44) title:@"Button with color" color:[UIColor colorWithRed:0.301 green:0.550 blue:0.686 alpha:1.000] highlightedColor:[UIColor colorWithRed:0.250 green:0.457 blue:0.572 alpha:1.000]];
            [coloredButton setTitleColor:[UIColor whiteColor] highlightedColor:[UIColor whiteColor]];
            [_scrollView addSubview:coloredButton];

            UIButton *coloredCornerRadiusButton = [UIButton initWithFrame:CGRectMake(20, 200, SCREEN_WIDTH - 40, 44) title:@"Button with corner radius" color:[UIColor colorWithRed:0.301 green:0.550 blue:0.686 alpha:1.000] highlightedColor:[UIColor colorWithRed:0.250 green:0.457 blue:0.572 alpha:1.000]];
            [coloredCornerRadiusButton setTitleColor:[UIColor whiteColor]];
            [coloredCornerRadiusButton setCornerRadius:10];
            [_scrollView addSubview:coloredCornerRadiusButton];

            UIButton *otherFontButton = [UIButton initWithFrame:CGRectMake(20, 260, SCREEN_WIDTH - 40, 44) title:@"Button with other font"];
            [otherFontButton setTitleFont:FontNameChalkduster size:17];
            [otherFontButton setTitleColor:[UIColor colorWithRed:0.212 green:0.663 blue:0.878 alpha:1.000]];
            [_scrollView addSubview:otherFontButton];

            break;
        }
        case DetailTypeUIColor: {
            self.title = @"UIColor";
            [_scrollView setContentSize:CGSizeMake(SCREEN_WIDTH, SCREEN_HEIGHT - 120)];

            UIView *hexStringColor = [[UIView alloc] initWithFrame:CGRectMake(20, 20, SCREEN_WIDTH - 40, 44)];
            [hexStringColor setBackgroundColor:[UIColor hex:@"#36a9e0"]];
            UILabel *hexStringColorLabel = [UILabel initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH - 40, 44) text:@"HEX String Color" font:FontNameHelveticaNeue size:16 color:[UIColor whiteColor] alignment:NSTextAlignmentCenter lines:1 shadowColor:[UIColor blackColor]];
            [hexStringColor addSubview:hexStringColorLabel];
            [_scrollView addSubview:hexStringColor];

            UIView *hexColor = [[UIView alloc] initWithFrame:CGRectMake(20, 80, SCREEN_WIDTH - 40, 44)];
            [hexColor setBackgroundColor:[UIColor colorWithHex:0xE23400]];
            UILabel *hexColorLabel = [UILabel initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH - 40, 44) text:@"HEX Color" font:FontNameHelveticaNeue size:16 color:[UIColor whiteColor] alignment:NSTextAlignmentCenter lines:1 shadowColor:[UIColor blackColor]];
            [hexColor addSubview:hexColorLabel];
            [_scrollView addSubview:hexColor];

            UIView *randomColor = [[UIView alloc] initWithFrame:CGRectMake(20, 140, SCREEN_WIDTH - 40, 44)];
            [randomColor setBackgroundColor:[UIColor randomColor]];
            UILabel *randomColorLabel = [UILabel initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH - 40, 44) text:@"Random Color" font:FontNameHelveticaNeue size:16 color:[UIColor whiteColor] alignment:NSTextAlignmentCenter lines:1 shadowColor:[UIColor blackColor]];
            [randomColor addSubview:randomColorLabel];
            [_scrollView addSubview:randomColor];

            break;
        }
        case DetailTypeUIDevice: {
            self.title = @"UIDevice";
            [_scrollView setContentSize:CGSizeMake(SCREEN_WIDTH, SCREEN_HEIGHT - 120)];

            NSMutableString *deviceInfoString = [[NSMutableString alloc] init];

            if ([UIDevice isiPhone]) {
                [deviceInfoString appendString:@"Device: iPhone\n"];
            } else if ([UIDevice isiPad]) {
                [deviceInfoString appendString:@"Device: iPad\n"];
            } else if ([UIDevice isiPod]) {
                [deviceInfoString appendString:@"Device: iPod\n"];
            } else if ([UIDevice isSimulator]) {
                [deviceInfoString appendString:@"Device: Simulator\n"];
            }

            [deviceInfoString appendString:[NSString stringWithFormat:@"iOS Version: %li\n", (long)[UIDevice iOSVersion]]];

            [deviceInfoString appendString:[NSString stringWithFormat:@"RAM Size: %lu MB\n", (long)[UIDevice ramSize] / 1024 / 1024]];

            [deviceInfoString appendString:[NSString stringWithFormat:@"Unique Identifier: %@\n", [UIDevice uniqueIdentifier]]];

            UILabel *deviceInfoLabel = [UILabel initWithFrame:CGRectMake(20, 20, SCREEN_WIDTH - 40, 200) text:deviceInfoString font:FontNameHelveticaLight size:16 color:[UIColor blackColor] alignment:NSTextAlignmentLeft lines:8];
            [_scrollView addSubview:deviceInfoLabel];

            break;
        }
        case DetailTypeUIFont: {
            self.title = @"UIFont";
            [_scrollView setContentSize:CGSizeMake(SCREEN_WIDTH, SCREEN_HEIGHT - 120)];

            [UIFont allFamilyAndFonts];

            UILabel *fontLabel = [UILabel initWithFrame:CGRectMake(20, 20, SCREEN_WIDTH - 40, 25) text:@"Use a font with just an ENUM ^_^" font:FontNameNoteworthyLight size:16 color:[UIColor blackColor] alignment:NSTextAlignmentLeft lines:1];
            [_scrollView addSubview:fontLabel];

            UILabel *otherFontLabel = [UILabel initWithFrame:CGRectMake(20, 60, SCREEN_WIDTH - 40, 25) text:@"It's awesome!" font:FontNamePapyrus size:16 color:[UIColor randomColor] alignment:NSTextAlignmentLeft lines:1];
            [_scrollView addSubview:otherFontLabel];

            break;
        }
        case DetailTypeUIImage: {
            self.title = @"UIImage";
            [_scrollView setContentSize:CGSizeMake(SCREEN_WIDTH, ((SCREEN_WIDTH - 40) * 10) + (20 * 11))];

            UIImage *blendOverlayImage = [[UIImage imageNamed:@"Logo"] blendOverlay];
            UIImageView *blendOverlayImageView = [UIImageView initWithImage:blendOverlayImage frame:CGRectMake(20, 20, SCREEN_WIDTH - 40, SCREEN_WIDTH - 40)];
            UILabel *blendOverlayLabel = [UILabel initWithFrame:CGRectMake(0, 20, SCREEN_WIDTH - 40, 25) text:@"Blend Overlay" font:FontNameHelveticaNeue size:16 color:[UIColor whiteColor] alignment:NSTextAlignmentCenter lines:1 shadowColor:[UIColor blackColor]];
            [blendOverlayImageView addSubview:blendOverlayLabel];
            [_scrollView addSubview:blendOverlayImageView];

            UIImage *imageAtRectImage = [[UIImage imageNamed:@"Logo"] imageAtRect:CGRectMake(0, 0, 200, 200)];
            UIImageView *imageAtRectImageView = [UIImageView initWithImage:imageAtRectImage frame:CGRectMake(20, 20 + blendOverlayImageView.frame.size.height + 20, SCREEN_WIDTH - 40, SCREEN_WIDTH - 40)];
            UILabel *imageAtRectLabel = [UILabel initWithFrame:CGRectMake(0, 20, SCREEN_WIDTH - 40, 25) text:@"Image At Rect" font:FontNameHelveticaNeue size:16 color:[UIColor whiteColor] alignment:NSTextAlignmentCenter lines:1 shadowColor:[UIColor blackColor]];
            [imageAtRectImageView addSubview:imageAtRectLabel];
            [_scrollView addSubview:imageAtRectImageView];

            UIImage *rotatedImage = [[UIImage imageNamed:@"Logo"] imageRotatedByDegrees:90];
            UIImageView *rotatedImageView = [UIImageView initWithImage:rotatedImage frame:CGRectMake(20, 20 + blendOverlayImageView.frame.size.height + 20 + imageAtRectImageView.frame.size.height + 20, SCREEN_WIDTH - 40, SCREEN_WIDTH - 40)];
            UILabel *rotatedLabel = [UILabel initWithFrame:CGRectMake(0, 20, SCREEN_WIDTH - 40, 25) text:@"Rotated Image" font:FontNameHelveticaNeue size:16 color:[UIColor whiteColor] alignment:NSTextAlignmentCenter lines:1 shadowColor:[UIColor blackColor]];
            [rotatedImageView addSubview:rotatedLabel];
            [_scrollView addSubview:rotatedImageView];

            UIImage *filledImage = [[UIImage imageNamed:@"Logo2"] fillAlphaWithColor:[UIColor colorWithRed:0.212 green:0.663 blue:0.878 alpha:1.000]];
            UIImageView *filledImageView = [UIImageView initWithImage:filledImage frame:CGRectMake(20, 20 + blendOverlayImageView.frame.size.height + 20 + imageAtRectImageView.frame.size.height + 20 + rotatedImageView.frame.size.height + 20, SCREEN_WIDTH - 40, SCREEN_WIDTH - 40)];
            UILabel *filledLabel = [UILabel initWithFrame:CGRectMake(0, 40, SCREEN_WIDTH - 40, 25) text:@"Filled Image" font:FontNameHelveticaNeue size:16 color:[UIColor whiteColor] alignment:NSTextAlignmentCenter lines:1 shadowColor:[UIColor blackColor]];
            [filledImageView addSubview:filledLabel];
            [_scrollView addSubview:filledImageView];

            UIImage *invertedImage = [[UIImage imageNamed:@"Logo"] invertColors];
            UIImageView *invertedImageView = [UIImageView initWithImage:invertedImage frame:CGRectMake(20, 20 + blendOverlayImageView.frame.size.height + 20  + imageAtRectImageView.frame.size.height + 20 + rotatedImageView.frame.size.height + 20 + filledImageView.frame.size.height + 20, SCREEN_WIDTH - 40, SCREEN_WIDTH - 40)];
            UILabel *invertedLabel = [UILabel initWithFrame:CGRectMake(0, 20, SCREEN_WIDTH - 40, 25) text:@"Inverted Image" font:FontNameHelveticaNeue size:16 color:[UIColor whiteColor] alignment:NSTextAlignmentCenter lines:1 shadowColor:[UIColor blackColor]];
            [invertedImageView addSubview:invertedLabel];
            [_scrollView addSubview:invertedImageView];

            UIImage *blurredImage = [[UIImage imageNamed:@"Logo"] blurImageWithBlur:1];
            UIImageView *blurredImageView = [UIImageView initWithImage:blurredImage frame:CGRectMake(20, 20 + blendOverlayImageView.frame.size.height + 20 + imageAtRectImageView.frame.size.height + 20 + rotatedImageView.frame.size.height + 20 + filledImageView.frame.size.height + 20 + invertedImageView.frame.size.height + 20, SCREEN_WIDTH - 40, SCREEN_WIDTH - 40)];
            UILabel *blurredLabel = [UILabel initWithFrame:CGRectMake(0, 20, SCREEN_WIDTH - 40, 25) text:@"Blurred Image" font:FontNameHelveticaNeue size:16 color:[UIColor whiteColor] alignment:NSTextAlignmentCenter lines:1 shadowColor:[UIColor blackColor]];
            [blurredImageView addSubview:blurredLabel];
            [_scrollView addSubview:blurredImageView];

            UIImage *bumpedImage = [[UIImage imageNamed:@"Logo"] bumpDistortionLinear:[CIVector vectorWithX:SCREEN_WIDTH - 40 Y:SCREEN_WIDTH - 40] radius:100 angle:M_PI scale:2];
            UIImageView *bumpedImageView = [UIImageView initWithImage:bumpedImage frame:CGRectMake(20, 20 + blendOverlayImageView.frame.size.height + 20 + imageAtRectImageView.frame.size.height + 20 + rotatedImageView.frame.size.height + 20 + filledImageView.frame.size.height + 20 + invertedImageView.frame.size.height + 20 + blurredImageView.frame.size.height + 20, SCREEN_WIDTH - 40, SCREEN_WIDTH - 40)];
            UILabel *bumpedLabel = [UILabel initWithFrame:CGRectMake(0, 20, SCREEN_WIDTH - 40, 25) text:@"Bump Distortion Linear Image" font:FontNameHelveticaNeue size:16 color:[UIColor whiteColor] alignment:NSTextAlignmentCenter lines:1 shadowColor:[UIColor blackColor]];
            [bumpedImageView addSubview:bumpedLabel];
            [_scrollView addSubview:bumpedImageView];

            UIImage *sepiaImage = [[UIImage imageNamed:@"Logo"] sepiaToneWithIntensity:1];
            UIImageView *sepiaImageView = [UIImageView initWithImage:sepiaImage frame:CGRectMake(20, 20 + blendOverlayImageView.frame.size.height + 20 + imageAtRectImageView.frame.size.height + 20 + rotatedImageView.frame.size.height + 20 + filledImageView.frame.size.height + 20 + invertedImageView.frame.size.height + 20 + blurredImageView.frame.size.height + 20 + bumpedImageView.frame.size.height + 20, SCREEN_WIDTH - 40, SCREEN_WIDTH - 40)];
            UILabel *sepiaLabel = [UILabel initWithFrame:CGRectMake(0, 20, SCREEN_WIDTH - 40, 25) text:@"Sepia Tone Image" font:FontNameHelveticaNeue size:16 color:[UIColor whiteColor] alignment:NSTextAlignmentCenter lines:1 shadowColor:[UIColor blackColor]];
            [sepiaImageView addSubview:sepiaLabel];
            [_scrollView addSubview:sepiaImageView];

            UIImage *colorImage = [UIImage imageWithColor:[UIColor colorWithRed:0.357 green:0.620 blue:0.746 alpha:1.000]];
            UIImageView *colorImageView = [UIImageView initWithImage:colorImage frame:CGRectMake(20, 20 + blendOverlayImageView.frame.size.height + 20 + imageAtRectImageView.frame.size.height + 20 + rotatedImageView.frame.size.height + 20 + filledImageView.frame.size.height + 20 + invertedImageView.frame.size.height + 20 + blurredImageView.frame.size.height + 20 + bumpedImageView.frame.size.height + 20 + sepiaImageView.frame.size.height + 20, SCREEN_WIDTH - 40, SCREEN_WIDTH - 40)];
            UILabel *colorLabel = [UILabel initWithFrame:CGRectMake(0, 20, SCREEN_WIDTH - 40, 25) text:@"Color Image" font:FontNameHelveticaNeue size:16 color:[UIColor whiteColor] alignment:NSTextAlignmentCenter lines:1 shadowColor:[UIColor blackColor]];
            [colorImageView addSubview:colorLabel];
            [_scrollView addSubview:colorImageView];

            UIImage *dummyImage = [UIImage dummyImageNamed:@"200x200.#5B9EBE"];
            UIImageView *dummyImageView = [UIImageView initWithImage:dummyImage frame:CGRectMake(20, 20 + blendOverlayImageView.frame.size.height + 20 + imageAtRectImageView.frame.size.height + 20 + rotatedImageView.frame.size.height + 20 + filledImageView.frame.size.height + 20 + invertedImageView.frame.size.height + 20 + blurredImageView.frame.size.height + 20 + bumpedImageView.frame.size.height + 20 + sepiaImageView.frame.size.height + 20 + colorImageView.frame.size.height + 20, SCREEN_WIDTH - 40, SCREEN_WIDTH - 40)];
            UILabel *dummyLabel = [UILabel initWithFrame:CGRectMake(0, 20, SCREEN_WIDTH - 40, 25) text:@"Dummy Image" font:FontNameHelveticaNeue size:16 color:[UIColor whiteColor] alignment:NSTextAlignmentCenter lines:1 shadowColor:[UIColor blackColor]];
            [dummyImageView addSubview:dummyLabel];
            [_scrollView addSubview:dummyImageView];

            break;
        }
        case DetailTypeUIImageView: {
            self.title = @"UIImageView";
            [_scrollView setContentSize:CGSizeMake(SCREEN_WIDTH, ((SCREEN_WIDTH - 40) * 2) + (20 * 3))];

            UIImageView *imageView = [UIImageView initWithImage:[UIImage imageNamed:@"Logo"] frame:CGRectMake(20, 20, SCREEN_WIDTH - 40, SCREEN_WIDTH - 40)];
            [_scrollView addSubview:imageView];

            UIImageView *maskedImageView = [UIImageView initWithImage:[UIImage imageNamed:@"Logo"] frame:CGRectMake(20, 20 + imageView.frame.size.height + 20, SCREEN_WIDTH - 40, SCREEN_WIDTH - 40)];
            [maskedImageView setMaskImage:[UIImage imageNamed:@"Logo2"]];
            UILabel *maskedImageLabel = [UILabel initWithFrame:CGRectMake(0, 40, SCREEN_WIDTH - 40, 25) text:@"Masked Image" font:FontNameHelveticaNeue size:16 color:[UIColor whiteColor] alignment:NSTextAlignmentCenter lines:1 shadowColor:[UIColor blackColor]];
            [maskedImageView addSubview:maskedImageLabel];
            [_scrollView addSubview:maskedImageView];

            break;
        }
        case DetailTypeUILabel: {
            self.title = @"UILabel";
            [_scrollView setContentSize:CGSizeMake(SCREEN_WIDTH, SCREEN_HEIGHT - 120)];

            UILabel *normalLabel = [UILabel initWithFrame:CGRectMake(20, 20, SCREEN_WIDTH - 40, 25) text:@"Normal Label" font:FontNameHelveticaNeue size:16 color:[UIColor blackColor] alignment:NSTextAlignmentCenter lines:1];
            [_scrollView addSubview:normalLabel];

            UILabel *shadowLabel = [UILabel initWithFrame:CGRectMake(20, 60, SCREEN_WIDTH - 40, 25) text:@"Label with Shadow and other font" font:FontNameHoeflerTextBlack size:12 color:[UIColor colorWithRed:0.166 green:0.528 blue:0.700 alpha:1.000] alignment:NSTextAlignmentCenter lines:1 shadowColor:[UIColor blackColor]];
            [_scrollView addSubview:shadowLabel];

            break;
        }
        case DetailTypeUINavigationBar: {
            self.title = @"UINavigationBar";
            [_scrollView setContentSize:CGSizeMake(SCREEN_WIDTH, SCREEN_HEIGHT - 120)];

            AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
            [appDelegate.kitNavigationController.navigationBar setTransparent:YES];

            UILabel *navigationInfoLabel = [UILabel initWithFrame:CGRectMake(20, 20, SCREEN_WIDTH - 40, 200) text:@"Check the transparent UINavigationBar 🔝" font:FontNameHelveticaNeue size:16 color:[UIColor blackColor] alignment:NSTextAlignmentCenter lines:1 shadowColor:[UIColor whiteColor]];
            [_scrollView addSubview:navigationInfoLabel];

            break;
        }
        case DetailTypeUIScreen: {
            self.title = @"UIScreen";
            [_scrollView setContentSize:CGSizeMake(SCREEN_WIDTH, SCREEN_HEIGHT - 120)];

            NSMutableString *screenInfoString = [[NSMutableString alloc] init];

            [UIScreen isRetina] ? [screenInfoString appendString:@"Retina: Yes\n"] : [screenInfoString appendString:@"Retina: No\n"];

            [UIScreen isRetinaHD] ? [screenInfoString appendString:@"Retina HD: Yes\n"] : [screenInfoString appendString:@"Retina HD: No\n"];

            UILabel *screenInfoLabel = [UILabel initWithFrame:CGRectMake(20, 20, SCREEN_WIDTH - 40, 200) text:screenInfoString font:FontNameHelveticaLight size:16 color:[UIColor blackColor] alignment:NSTextAlignmentLeft lines:8];
            [_scrollView addSubview:screenInfoLabel];

            break;
        }
        case DetailTypeUIScrollView: {
            self.title = @"UIScrollView";
            [_scrollView setContentSize:CGSizeMake(SCREEN_WIDTH, 1000)];

            UILabel *scrollLabel = [UILabel initWithFrame:CGRectMake(0, 20, SCREEN_WIDTH - 40, 25) text:@"You are just using an UIScrollView!" font:FontNameHelveticaNeue size:16 color:[UIColor blackColor] alignment:NSTextAlignmentCenter lines:1];
            [_scrollView addSubview:scrollLabel];

            break;
        }
        case DetailTypeUITableView: {
            self.title = @"UITableView";
            [_scrollView removeFromSuperview];

            UITableView *tableView = [UITableView initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) style:UITableViewStylePlain cellSeparatorStyle:UITableViewCellSeparatorStyleSingleLine separatorInset:UIEdgeInsetsMake(0, 15, 0, 0) dataSource:nil delegate:nil];
            [self.view addSubview:tableView];

            break;
        }
        case DetailTypeUITextField: {
            self.title = @"UITextField";
            [_scrollView setContentSize:CGSizeMake(SCREEN_WIDTH, SCREEN_HEIGHT - 120)];

            UITextField *textField = [UITextField initWithFrame:CGRectMake(20, 20, SCREEN_WIDTH - 40, 25) placeholder:@"Text field placeholder" color:[UIColor colorWithRed:0.166 green:0.528 blue:0.700 alpha:1.000] font:FontNameVerdana size:18 returnType:UIReturnKeyDone keyboardType:UIKeyboardTypeEmailAddress secure:NO borderStyle:UITextBorderStyleBezel autoCapitalization:UITextAutocapitalizationTypeWords keyboardAppearance:UIKeyboardAppearanceLight enablesReturnKeyAutomatically:YES clearButtonMode:UITextFieldViewModeWhileEditing autoCorrectionType:UITextAutocorrectionTypeDefault delegate:nil];

            [_scrollView addSubview:textField];

            break;
        }
        case DetailTypeUITextView: {
            self.title = @"UITextView";
            [_scrollView removeFromSuperview];

            UITextView *textView = [UITextView initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) text:@"This is a text view\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse lacinia blandit eros, sit amet aliquet tellus sollicitudin et. Nullam a ipsum nec libero hendrerit aliquet. Pellentesque faucibus pretium odio, sit amet accumsan arcu malesuada ut. Cras rhoncus volutpat nisl consequat eleifend. Donec tincidunt consectetur justo, molestie hendrerit justo dictum vel. Vestibulum nec commodo arcu. Donec sodales, augue vel fermentum ultrices, nunc augue vulputate tortor, sit amet eleifend nisl sapien eget magna. Donec aliquet mattis mi vel fermentum. Donec elementum pellentesque libero, in aliquam mauris luctus vel. In et vulputate nibh, id tristique ipsum. Donec fermentum ante et augue cursus aliquam. Vivamus nisi justo, pulvinar porta dolor id, tristique pretium augue. Nulla blandit felis felis, ut rutrum eros rutrum eu. Morbi mauris dolor, feugiat non placerat non, ultrices nec eros. Sed at eleifend felis. Mauris blandit feugiat nulla eget tempor. Nunc semper suscipit magna et semper. Suspendisse a arcu vitae diam scelerisque vestibulum ut eu dolor. Suspendisse accumsan venenatis leo, id maximus turpis. Pellentesque ac nunc augue. Etiam pharetra velit quis metus ornare vehicula. Cras eleifend sapien vitae est ultrices, a ullamcorper nibh scelerisque. Pellentesque tempor tortor dignissim, cursus tortor ac, sagittis felis. Praesent ultrices scelerisque odio, in fringilla sem tincidunt quis. Aenean sem augue, mattis luctus magna vel, accumsan volutpat felis. Nam blandit venenatis tincidunt. Pellentesque sodales lectus at orci tempus, vel pharetra massa vestibulum. Integer scelerisque ex aliquet quam molestie, a laoreet augue mattis. Etiam ut ex nisi. Mauris mollis tincidunt hendrerit. Nunc mi lectus, viverra ut nunc et, sagittis maximus augue. Pellentesque ullamcorper condimentum enim, vitae tempus risus. Maecenas facilisis lectus eget sem luctus porta. Etiam ut nunc non diam facilisis volutpat. Phasellus a augue feugiat, iaculis metus sit amet, pharetra lacus. Nulla facilisi. Maecenas sollicitudin justo ac auctor feugiat. Nunc ac dui sem. Aliquam fringilla porttitor massa, quis mattis nisl sodales a. Pellentesque iaculis non nisi aliquam malesuada. Aliquam erat volutpat. Donec arcu dui, rutrum ut tortor id, hendrerit aliquam ligula." color:[UIColor blackColor] font:FontNameHelveticaNeue size:16 alignment:NSTextAlignmentLeft dataDetectorTypes:UIDataDetectorTypeAll editable:NO selectable:NO returnType:UIReturnKeyDefault keyboardType:UIKeyboardTypeDefault secure:NO autoCapitalization:UITextAutocapitalizationTypeNone keyboardAppearance:UIKeyboardAppearanceDefault enablesReturnKeyAutomatically:YES autoCorrectionType:UITextAutocorrectionTypeDefault delegate:nil];
            [self.view addSubview:textView];

            break;
        }
        case DetailTypeUIToolbar: {
            self.title = @"UIToolbar";
            [_scrollView removeFromSuperview];

            UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, SCREEN_HEIGHT - 50 - 44, SCREEN_WIDTH, 44)];
            [toolbar setItems:@[[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(barButtonItemsAction:)], [[UIBarButtonItem alloc] initWithBarButtonFlexibleSpace], [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(barButtonItemsAction:)]] animated: YES];
            [toolbar setTransparent:YES];
            [self.view addSubview:toolbar];

            break;
        }
        case DetailTypeUIView: {
            self.title = @"UIView";
            [_scrollView setContentSize:CGSizeMake(SCREEN_WIDTH, 240 + SCREEN_WIDTH)];

            UIView *borderedView = [UIView initWithFrame:CGRectMake(20, 20, SCREEN_WIDTH - 40, 44) backgroundColor:[UIColor colorWithRed:0.729 green:0.306 blue:0.122 alpha:1.000]];
            [borderedView createBordersWithColor:[UIColor colorWithRed:0.886 green:0.204 blue:0.000 alpha:1.000] withCornerRadius:10 andWidth:3];
            UILabel *borderedLabel = [UILabel initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH - 40, 44) text:@"Border View" font:FontNameHelveticaNeue size:16 color:[UIColor whiteColor] alignment:NSTextAlignmentCenter lines:1 shadowColor:[UIColor blackColor]];
            [borderedView addSubview:borderedLabel];
            [_scrollView addSubview:borderedView];

            UIView *shadowView = [UIView initWithFrame:CGRectMake(20, 100, SCREEN_WIDTH - 40, 44)  backgroundColor:[UIColor colorWithRed:0.357 green:0.618 blue:0.746 alpha:1.000]];
            [shadowView createRectShadowWithOffset:CGSizeMake(10, 10) opacity:0.5 radius:10];
            UILabel *shadowLabel = [UILabel initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH - 40, 44) text:@"Shadow View" font:FontNameHelveticaNeue size:16 color:[UIColor whiteColor] alignment:NSTextAlignmentCenter lines:1 shadowColor:[UIColor blackColor]];
            [shadowView addSubview:shadowLabel];
            [_scrollView addSubview:shadowView];

            UIButton *shakeButton = [UIButton initWithFrame:CGRectMake(20, 180, SCREEN_WIDTH - 40, 44) title:@"Touch me!" color:[UIColor colorWithRed:0.301 green:0.550 blue:0.686 alpha:1.000] highlightedColor:[UIColor colorWithRed:0.250 green:0.457 blue:0.572 alpha:1.000]];
            [shakeButton setTitleColor:[UIColor whiteColor] highlightedColor:[UIColor whiteColor]];
            [shakeButton addTarget:self action:@selector(shakeButtonAction:) forControlEvents:UIControlEventTouchUpInside];
            [_scrollView addSubview:shakeButton];

            UIView *gradientView = [[UIView alloc] initWithFrame:CGRectMake(20, 260, SCREEN_WIDTH - 40, SCREEN_WIDTH - 40)];
            [gradientView createGradientWithColors:[NSArray arrayWithObjects:[UIColor redColor], [UIColor blueColor], nil] direction:UIViewLinearGradientDirectionDiagonalFromRightToLeftAndTopToDown];
            UILabel *gradientLabel = [UILabel initWithFrame:CGRectMake(0, 20, SCREEN_WIDTH - 40, 25) text:@"Gradient View" font:FontNameHelveticaNeue size:16 color:[UIColor whiteColor] alignment:NSTextAlignmentCenter lines:1 shadowColor:[UIColor blackColor]];
            [gradientView addSubview:gradientLabel];
            [_scrollView addSubview:gradientView];

            break;
        }
        case DetailTypeUIWindow: {
            self.title = @"UIWindow";
            [_scrollView removeFromSuperview];

            AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
            [appDelegate.window takeScreenshotWithDelay:1 save:NO completion:^(UIImage *screenshot) {
                screenshot = [screenshot imageByScalingProportionallyToSize:CGSizeMake(SCREEN_WIDTH - 40, SCREEN_HEIGHT - 40 - 64 - 50 - 20)];
                UIImageView *screenshotView = [[UIImageView alloc] initWithImage:screenshot];
                [screenshotView setCenter:CGPointMake(SCREEN_WIDTH / 2, (SCREEN_HEIGHT / 2) + 64 - 50 - 10)];
                [screenshotView createRectShadowWithOffset:CGSizeZero opacity:10.0 radius:10.0];
                [self.view addSubview:screenshotView];
            }];

            BFShowTouchOnScreen;

            break;
        }
        case DetailTypeNSArray: {
            self.title = @"NSArray";
            [_scrollView removeFromSuperview];

            BFLogClear;

            NSArray *array = @[@"1", @"2", @"3", @"4", @"5"];

            BFLog(@"Normal Array: %@", array);
            BFLog(@"Reversed Array: %@", [array reversedArray]);
            BFLog(@"Array to JSON: %@", [array arrayToJson]);

            UITextView *textView = [UITextView initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) text:BFLogString color:[UIColor blackColor] font:FontNameHelveticaNeue size:16 alignment:NSTextAlignmentLeft dataDetectorTypes:UIDataDetectorTypeAll editable:NO selectable:NO returnType:UIReturnKeyDefault keyboardType:UIKeyboardTypeDefault secure:NO autoCapitalization:UITextAutocapitalizationTypeNone keyboardAppearance:UIKeyboardAppearanceDefault enablesReturnKeyAutomatically:YES autoCorrectionType:UITextAutocorrectionTypeDefault delegate:nil];
            [self.view addSubview:textView];

            break;
        }
        case DetailTypeNSData: {
            self.title = @"NSData";
            [_scrollView removeFromSuperview];

            BFLogClear;

            NSString *string = @"This is a test";
            BFLog(@"String: %@", string);

            NSData *data = [string convertToNSData];
            BFLog(@"Converted to NSData: %@", data);

            string = [data convertToUTF8String];
            BFLog(@"NSData converted to NSString: %@", string);

            UITextView *textView = [UITextView initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) text:BFLogString color:[UIColor blackColor] font:FontNameHelveticaNeue size:16 alignment:NSTextAlignmentLeft dataDetectorTypes:UIDataDetectorTypeAll editable:NO selectable:NO returnType:UIReturnKeyDefault keyboardType:UIKeyboardTypeDefault secure:NO autoCapitalization:UITextAutocapitalizationTypeNone keyboardAppearance:UIKeyboardAppearanceDefault enablesReturnKeyAutomatically:YES autoCorrectionType:UITextAutocorrectionTypeDefault delegate:nil];
            [self.view addSubview:textView];

            break;
        }
        case DetailTypeNSDate: {
            self.title = @"NSDate";
            [_scrollView removeFromSuperview];

            BFLogClear;

            NSDate *today = [NSDate date];

            BFLog(@"Today: %@", today);
            BFLog(@"Yesterday: %@", [NSDate yesterday]);
            BFLog(@"Today is: %@", [today dayFromWeekday]);
            BFLog(@"Description of today: %@", [NSDate dateInformationDescriptionWithInformation:[today dateInformation]]);

            UITextView *textView = [UITextView initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) text:BFLogString color:[UIColor blackColor] font:FontNameHelveticaNeue size:16 alignment:NSTextAlignmentLeft dataDetectorTypes:UIDataDetectorTypeAll editable:NO selectable:NO returnType:UIReturnKeyDefault keyboardType:UIKeyboardTypeDefault secure:NO autoCapitalization:UITextAutocapitalizationTypeNone keyboardAppearance:UIKeyboardAppearanceDefault enablesReturnKeyAutomatically:YES autoCorrectionType:UITextAutocorrectionTypeDefault delegate:nil];
            [self.view addSubview:textView];

            break;
        }
        case DetailTypeNSDictionary: {
        	self.title = @"NSDictionary";
            [_scrollView removeFromSuperview];

            BFLogClear;

        	NSDate *today = [NSDate date];

        	NSDictionary *dic = @{@"Today": [today description], @"Description of today" :[NSDate dateInformationDescriptionWithInformation:[today dateInformation]], @"array": @[@1, @2, @3]};
        	BFLog(@"Normal Dictionary: %@", dic);
        	BFLog(@"Dictionary to JSON: %@", [dic dictionaryToJSON]);

            UITextView *textView = [UITextView initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) text:BFLogString color:[UIColor blackColor] font:FontNameHelveticaNeue size:16 alignment:NSTextAlignmentLeft dataDetectorTypes:UIDataDetectorTypeAll editable:NO selectable:NO returnType:UIReturnKeyDefault keyboardType:UIKeyboardTypeDefault secure:NO autoCapitalization:UITextAutocapitalizationTypeNone keyboardAppearance:UIKeyboardAppearanceDefault enablesReturnKeyAutomatically:YES autoCorrectionType:UITextAutocorrectionTypeDefault delegate:nil];
            [self.view addSubview:textView];
        	break;
    	}
        case DetailTypeNSFileManager: {
            self.title = @"NSFileManager";
            [_scrollView removeFromSuperview];

            BFLogClear;

            NSArray *array = @[@"1", @"2", @"3", @"4", @"5"];

            BFLog([NSFileManager saveArrayToPath:DirectoryTypeDocuments withFilename:@"temp" array:array] ? @"Save array: Yes" : @"Save array: No");
            BFLog(@"Directory: %@", [NSFileManager getDocumentsDirectoryForFile:@"temp.plist"]);
            BFLog([NSFileManager deleteFile:@"temp.plist" fromDirectory:DirectoryTypeDocuments] ? @"Delete file: Yes" : @"Delete file: No");
            BFLog([NSFileManager setSettings:@"temp" object:@"test" forKey:@"key"] ? @"Saved settings: YES" : @"Saved settings: NO");
            BFLog(@"%@", [NSFileManager getSettings:@"temp" objectForKey:@"key"]);

            UITextView *textView = [UITextView initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) text:BFLogString color:[UIColor blackColor] font:FontNameHelveticaNeue size:16 alignment:NSTextAlignmentLeft dataDetectorTypes:UIDataDetectorTypeAll editable:NO selectable:NO returnType:UIReturnKeyDefault keyboardType:UIKeyboardTypeDefault secure:NO autoCapitalization:UITextAutocapitalizationTypeNone keyboardAppearance:UIKeyboardAppearanceDefault enablesReturnKeyAutomatically:YES autoCorrectionType:UITextAutocorrectionTypeDefault delegate:nil];
            [self.view addSubview:textView];

            break;
        }
        case DetailTypeNSMutableArray: {
            self.title = @"NSMutableArray";
            [_scrollView removeFromSuperview];

            BFLogClear;

            NSMutableArray *array = [[NSMutableArray alloc] initWithArray:@[@"1", @"2", @"3", @"4", @"5"]];

            [array moveObjectFromIndex:0 toIndex:2];
            BFLog(@"Move objects: %@", array);
            BFLog(@"Reversed Array: %@", [array reversedArray]);

            UITextView *textView = [UITextView initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) text:BFLogString color:[UIColor blackColor] font:FontNameHelveticaNeue size:16 alignment:NSTextAlignmentLeft dataDetectorTypes:UIDataDetectorTypeAll editable:NO selectable:NO returnType:UIReturnKeyDefault keyboardType:UIKeyboardTypeDefault secure:NO autoCapitalization:UITextAutocapitalizationTypeNone keyboardAppearance:UIKeyboardAppearanceDefault enablesReturnKeyAutomatically:YES autoCorrectionType:UITextAutocorrectionTypeDefault delegate:nil];
            [self.view addSubview:textView];

            break;
        }
        case DetailTypeNSMutableDictionary: {
            self.title = @"NSMutableDictionary";
            [_scrollView removeFromSuperview];

            BFLogClear;

            NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];

            [dictionary safeSetObject:[UIImage new] forKey:@"Image"];
            BFLog(@"Dictionary: %@", dictionary);

            UITextView *textView = [UITextView initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) text:BFLogString color:[UIColor blackColor] font:FontNameHelveticaNeue size:16 alignment:NSTextAlignmentLeft dataDetectorTypes:UIDataDetectorTypeAll editable:NO selectable:NO returnType:UIReturnKeyDefault keyboardType:UIKeyboardTypeDefault secure:NO autoCapitalization:UITextAutocapitalizationTypeNone keyboardAppearance:UIKeyboardAppearanceDefault enablesReturnKeyAutomatically:YES autoCorrectionType:UITextAutocorrectionTypeDefault delegate:nil];
            [self.view addSubview:textView];

            break;
        }
        case DetailTypeNSNumber: {
            self.title = @"NSNumber";
            [_scrollView removeFromSuperview];

            BFLogClear;

            BFLog(@"Radians to degrees: %f", BFRadiansToDegrees(M_PI));
            BFLog(@"Random int: %li", (long)[NSNumber randomIntBetweenMin:10 andMax:50]);
            BFLog(@"Random float: %f", [NSNumber randomFloatBetweenMin:0.1 andMax:0.9]);

            UITextView *textView = [UITextView initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) text:BFLogString color:[UIColor blackColor] font:FontNameHelveticaNeue size:16 alignment:NSTextAlignmentLeft dataDetectorTypes:UIDataDetectorTypeAll editable:NO selectable:NO returnType:UIReturnKeyDefault keyboardType:UIKeyboardTypeDefault secure:NO autoCapitalization:UITextAutocapitalizationTypeNone keyboardAppearance:UIKeyboardAppearanceDefault enablesReturnKeyAutomatically:YES autoCorrectionType:UITextAutocorrectionTypeDefault delegate:nil];
            [self.view addSubview:textView];

            break;
        }
        case DetailTypeNSObject: {
            self.title = @"NSObject";
            [_scrollView removeFromSuperview];

            BFLogClear;

            NSObject *nilObject = nil;
            NSObject *object = @"Object";

            BFLog([nilObject isObjectValid] ? @"Object is valid" : @"Object is not valid");
            BFLog([object isObjectValid] ? @"Object is valid" : @"Object is not valid");

            [self performSelector:@selector(multiArgumentsSelectorWithString:string:string:string:) withObjects:@"String 1", @"String 2", @"String 3", @"String 4", nil];

            UITextView *textView = [UITextView initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) text:BFLogString color:[UIColor blackColor] font:FontNameHelveticaNeue size:16 alignment:NSTextAlignmentLeft dataDetectorTypes:UIDataDetectorTypeAll editable:NO selectable:NO returnType:UIReturnKeyDefault keyboardType:UIKeyboardTypeDefault secure:NO autoCapitalization:UITextAutocapitalizationTypeNone keyboardAppearance:UIKeyboardAppearanceDefault enablesReturnKeyAutomatically:YES autoCorrectionType:UITextAutocorrectionTypeDefault delegate:nil];
            [self.view addSubview:textView];

            break;
        }
        case DetailTypeNSProcessInfo: {
            self.title = @"NSProcessInfo";
            [_scrollView removeFromSuperview];

            BFLogClear;

            BFLog(@"CPU usage: %f", [NSProcessInfo currentAppCPUUsage]);

            UITextView *textView = [UITextView initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) text:BFLogString color:[UIColor blackColor] font:FontNameHelveticaNeue size:16 alignment:NSTextAlignmentLeft dataDetectorTypes:UIDataDetectorTypeAll editable:NO selectable:NO returnType:UIReturnKeyDefault keyboardType:UIKeyboardTypeDefault secure:NO autoCapitalization:UITextAutocapitalizationTypeNone keyboardAppearance:UIKeyboardAppearanceDefault enablesReturnKeyAutomatically:YES autoCorrectionType:UITextAutocorrectionTypeDefault delegate:nil];
            [self.view addSubview:textView];

            break;
        }
        case DetailTypeNSString: {
            self.title = @"NSString";
            [_scrollView removeFromSuperview];

            BFLogClear;

            NSString *search = @"Search in this string!";
            BFLog(@"Search: %@", [search searchCharStart:'a' charEnd:'s']);
            BFLog(@"Search: %@", [search searchCharStart:'a' charEnd:'a']);
            BFLog([search isEmail] ? @"Is email: Yes" : @"Is email: No");

			NSString *testHEX = @"68 65 6c 6c 6f";
			NSString *testString = @"hello";
            BFLog(@"String: %@ - To HEX: %@", testString, [testString stringToHEX]);
            BFLog(@"HEX: %@ - To String: %@", testHEX, [testHEX HEXToString]);

			testString = @"This    is    a     test";
			BFLog(testString);
			testString = [testString removeExtraSpaces];
			BFLog(testString);

            UITextView *textView = [UITextView initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) text:BFLogString color:[UIColor blackColor] font:FontNameHelveticaNeue size:16 alignment:NSTextAlignmentLeft dataDetectorTypes:UIDataDetectorTypeAll editable:NO selectable:NO returnType:UIReturnKeyDefault keyboardType:UIKeyboardTypeDefault secure:NO autoCapitalization:UITextAutocapitalizationTypeNone keyboardAppearance:UIKeyboardAppearanceDefault enablesReturnKeyAutomatically:YES autoCorrectionType:UITextAutocorrectionTypeDefault delegate:nil];
            [self.view addSubview:textView];

            break;
        }
        case DetailTypeNSThread: {
            self.title = @"NSThread";
            [_scrollView removeFromSuperview];

            BFLogClear;

            [self performSelectorInBackground:@selector(threadMethod) withObject:nil];

            break;
        }
    }
}

- (IBAction)shakeButtonAction:(UIButton *)button {
    [button shakeView];
}

- (IBAction)barButtonItemsAction:(UIBarButtonItem *)button {
    BFLog(@"Bar button pressed");
}

- (void)threadMethod {
    BFLog(@"Background: %@", [NSThread currentThread]);

    runOnMainThread(^{
        BFLog(@"Main: %@", [NSThread currentThread]);

        UITextView *textView = [UITextView initWithFrame:CGRectMake(0, 64, SCREEN_WIDTH, SCREEN_HEIGHT) text:BFLogString color:[UIColor blackColor] font:FontNameHelveticaNeue size:16 alignment:NSTextAlignmentLeft dataDetectorTypes:UIDataDetectorTypeAll editable:NO selectable:NO returnType:UIReturnKeyDefault keyboardType:UIKeyboardTypeDefault secure:NO autoCapitalization:UITextAutocapitalizationTypeNone keyboardAppearance:UIKeyboardAppearanceDefault enablesReturnKeyAutomatically:YES autoCorrectionType:UITextAutocorrectionTypeDefault delegate:nil];
        [self.view addSubview:textView];
    });
}

- (void)multiArgumentsSelectorWithString:(NSString *)string1 string:(NSString *)string2 string:(NSString *)string3 string:(NSString *)string4 {
    BFLog(@"\nString 1: %@\nString 2: %@\nString 3: %@\nString 4: %@", string1, string2, string3, string4);
}

@end
