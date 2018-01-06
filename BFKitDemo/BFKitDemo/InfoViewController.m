//
//  InfoViewController.m
//  BFKitDemo
//
//  Created by Fabrizio on 15/11/14.
//  Copyright (c) 2014 Fabrizio Brancati.
//

#import "InfoViewController.h"

@interface InfoViewController ()

@end

@implementation InfoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        self.title = @"Info";
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(closeInfo:)];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIScrollView *scrollView = [UIScrollView initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) contentSize:CGSizeZero clipsToBounds:NO pagingEnabled:NO showScrollIndicators:YES delegate:nil];
    [self.view addSubview:scrollView];
    
    UIImageView *profileImage = [UIImageView initWithImage:[UIImage imageNamed:@"Profile"] size:CGSizeMake(200, 200) center:CGPointMake(SCREEN_WIDTH / 2, SCREEN_WIDTH / 2.5)];
    [profileImage setCornerRadius:profileImage.frame.size.width / 2];
    [profileImage createBordersWithColor:[UIColor colorWithRed:0.357 green:0.620 blue:0.746 alpha:1.000] withCornerRadius:100 andWidth:5];
    UIView *shadowLayer = [[UIView alloc] initWithFrame:CGRectMake(profileImage.frame.origin.x, profileImage.frame.origin.y, profileImage.frame.size.width, profileImage.frame.size.height)];
    [shadowLayer createCornerRadiusShadowWithCornerRadius:profileImage.frame.size.width / 2 offset:CGSizeMake(0, 0) opacity:0.5 radius:10];
    [scrollView addSubview:shadowLayer];
    [scrollView addSubview:profileImage];
    
    UIImageView *logoImage = [UIImageView initWithImage:[UIImage imageNamed:@"Logo2"] size:CGSizeMake(80, 80) center:CGPointMake(profileImage.frame.origin.x + profileImage.frame.size.width - 30, profileImage.frame.origin.y + profileImage.frame.size.height - 30)];
    [scrollView addSubview:logoImage];
    
    UILabel *nameLabel = [UILabel initWithFrame:CGRectMake(0, profileImage.frame.origin.y + profileImage.frame.size.height + 50, SCREEN_WIDTH, 30) text:@"Fabrizio Brancati" font:FontNameHelveticaNeueMedium size:25 color:[UIColor blackColor] alignment:NSTextAlignmentCenter lines:1];
    [scrollView addSubview:nameLabel];
    
    UILabel *workLabel = [UILabel initWithFrame:CGRectMake(0, nameLabel.frame.origin.y + nameLabel.frame.size.height + 40, SCREEN_WIDTH, 80) text:@"iOS Developer\n&\nWeb Developer" font:FontNameHelveticaNeue size:22 color:[UIColor blackColor] alignment:NSTextAlignmentCenter lines:3];
    [scrollView addSubview:workLabel];
    
    UIButton *siteButton = [UIButton initWithFrame:CGRectMake(0, workLabel.frame.origin.y + workLabel.frame.size.height + 35, SCREEN_WIDTH, 44) title:@"www.fabriziobrancati.com"];
    [siteButton setTitleColor:[UIColor colorWithRed:0.357 green:0.620 blue:0.746 alpha:1.000]];
    [siteButton setTitleFont:FontNameHelveticaNeueMedium size:20];
    [siteButton addTarget:self action:@selector(openWebsite:) forControlEvents:UIControlEventTouchDown];
    [scrollView addSubview:siteButton];
    
    [scrollView setContentSize:CGSizeMake(SCREEN_WIDTH, profileImage.frame.origin.y + profileImage.frame.size.height + 50 + nameLabel.frame.size.height + 40 + workLabel.frame.size.height + 35 + siteButton.frame.size.height + 20)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)closeInfo:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)openWebsite:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.fabriziobrancati.com"]];
}

@end
