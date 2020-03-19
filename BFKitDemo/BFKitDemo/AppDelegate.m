//
//  AppDelegate.m
//  BFKitDemo
//
//  Created by Fabrizio on 08/09/14.
//  Copyright (c) 2014 Fabrizio Brancati.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.

    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:0.357 green:0.620 blue:0.746 alpha:1.000]}];
    [[UINavigationBar appearance] setTintColor:[UIColor colorWithRed:0.357 green:0.620 blue:0.746 alpha:1.000]];
    [[UITabBar appearance] setTintColor:[UIColor colorWithRed:0.357 green:0.620 blue:0.746 alpha:1.000]];
    [[UIBarButtonItem appearance] setTintColor:[UIColor colorWithRed:0.357 green:0.620 blue:0.746 alpha:1.000]];

    _bfkitArray = [[NSMutableArray alloc] initWithArray:@[@"BFApp",
                                                          @"BFButton",
                                                          @"BFCryptor",
                                                          @"BFDataStructures",
                                                          @"BFLog",
                                                          @"BFPassword",
                                                          @"BFSystemSound",
                                                          @"BFTextField",
                                                          @"BFTouchID",
                                                          ]];

    _uikitArray = [[NSMutableArray alloc] initWithArray:@[@"UIButton",
                                                          @"UIColor",
                                                          @"UIDevice",
                                                          @"UIFont",
                                                          @"UIImage",
                                                          @"UIImageView",
                                                          @"UILabel",
                                                          @"UINavigationBar",
                                                          @"UIScreen",
                                                          @"UIScrollView",
                                                          @"UITableView",
                                                          @"UITextField",
                                                          @"UITextView",
                                                          @"UIToolbar",
                                                          @"UIView",
                                                          @"UIWindow"]];

    _foundationArray = [[NSMutableArray alloc] initWithArray:@[@"NSArray",
                                                               @"NSData",
                                                               @"NSDate",
                                                               @"NSDictionary",
                                                               @"NSFileManager",
                                                               @"NSMutableArray",
                                                               @"NSMutableDictionary",
                                                               @"NSNumber",
                                                               @"NSObject",
                                                               @"NSProcessInfo",
                                                               @"NSString",
                                                               @"NSThread"]];

    _infoViewController = [[InfoViewController alloc] init];
    _infoNavigationController = [[UINavigationController alloc] initWithRootViewController:_infoViewController];

    _bfkitViewController = [[BFKitViewController alloc] init];
    _bfkitNavigationController = [[UINavigationController alloc] initWithRootViewController:_bfkitViewController];

    _kitViewController = [[UserInterfaceKitViewController alloc] init];
    _kitNavigationController = [[UINavigationController alloc] initWithRootViewController:_kitViewController];

    _foundationViewController = [[FoundationViewController alloc] init];
    _foundationNavigationController = [[UINavigationController alloc] initWithRootViewController:_foundationViewController];

    _tabBarController = [[UITabBarController alloc] init];
    [_tabBarController setViewControllers:@[_bfkitNavigationController, _kitNavigationController ,_foundationNavigationController]];

    self.window.rootViewController = _tabBarController;
    [self.window makeKeyAndVisible];

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
