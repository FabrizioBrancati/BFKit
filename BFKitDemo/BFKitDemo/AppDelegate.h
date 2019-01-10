//
//  AppDelegate.h
//  BFKitDemo
//
//  Created by Fabrizio on 08/09/14.
//  Copyright (c) 2014 Fabrizio Brancati.
//

#import <UIKit/UIKit.h>

#import "UserInterfaceKitViewController.h"
#import "FoundationViewController.h"
#import "BFKitViewController.h"
#import "InfoViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UITabBarController *tabBarController;

@property (strong, nonatomic) UINavigationController *kitNavigationController;
@property (strong, nonatomic) UserInterfaceKitViewController *kitViewController;

@property (strong, nonatomic) UINavigationController *foundationNavigationController;
@property (strong, nonatomic) FoundationViewController *foundationViewController;

@property (strong, nonatomic) UINavigationController *bfkitNavigationController;
@property (strong, nonatomic) BFKitViewController *bfkitViewController;

@property (strong, nonatomic) UINavigationController *infoNavigationController;
@property (strong, nonatomic) InfoViewController *infoViewController;

@property (strong, nonatomic) NSMutableArray *uikitArray;
@property (strong, nonatomic) NSMutableArray *foundationArray;
@property (strong, nonatomic) NSMutableArray *bfkitArray;

@end
