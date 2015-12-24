//
//  UIButton+BFKit.m
//  BFKit
//
//  The MIT License (MIT)
//
//  Copyright (c) 2014 - 2016 Fabrizio Brancati. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

#import "UIButton+BFKit.h"
#import "UIImage+BFKit.h"
#import "UIColor+BFKit.h"

@implementation UIButton (BFKit)

+ (instancetype _Nonnull)initWithFrame:(CGRect)frame {
    return [UIButton initWithFrame:frame title:nil];
}

+ (instancetype _Nonnull)initWithFrame:(CGRect)frame title:(NSString * _Nullable)title {
    return [UIButton initWithFrame:frame title:title backgroundImage:nil];
}

+ (instancetype _Nonnull )initWithFrame:(CGRect)frame title:(NSString * _Nullable)title backgroundImage:(UIImage * _Nullable)backgroundImage {
    return [UIButton initWithFrame:frame title:title backgroundImage:backgroundImage highlightedBackgroundImage:nil];
}

+ (instancetype _Nonnull)initWithFrame:(CGRect)frame title:(NSString * _Nullable)title backgroundImage:(UIImage * _Nullable)backgroundImage highlightedBackgroundImage:(UIImage * _Nullable)highlightedBackgroundImage {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
	[button setFrame:frame];
	[button setTitle:title forState:UIControlStateNormal];
	[button setBackgroundImage:backgroundImage forState:UIControlStateNormal];
	[button setBackgroundImage:highlightedBackgroundImage forState:UIControlStateHighlighted];
    
	return button;
}

+ (instancetype _Nonnull)initWithFrame:(CGRect)frame title:(NSString * _Nonnull)title color:(UIColor * _Nonnull)color {
    const CGFloat *components = CGColorGetComponents(color.CGColor);
    return [UIButton initWithFrame:frame title:title backgroundImage:[UIImage imageWithColor:color] highlightedBackgroundImage:[UIImage imageWithColor:[UIColor colorWithRed:components[0]-0.1 green:components[1]-0.1 blue:components[2]-0.1 alpha:1]]];
}

+ (instancetype _Nonnull)initWithFrame:(CGRect)frame title:(NSString * _Nonnull)title color:(UIColor * _Nonnull)color highlightedColor:(UIColor * _Nonnull)highlightedColor {
    return [UIButton initWithFrame:frame title:title backgroundImage:[UIImage imageWithColor:color] highlightedBackgroundImage:[UIImage imageWithColor:highlightedColor]];
}

+ (instancetype _Nonnull)initWithFrame:(CGRect)frame color:(UIColor * _Nonnull)color {
    const CGFloat *components = CGColorGetComponents(color.CGColor);
    return [UIButton initWithFrame:frame title:nil backgroundImage:[UIImage imageWithColor:color] highlightedBackgroundImage:[UIImage imageWithColor:[UIColor colorWithRed:components[0]-0.1 green:components[1]-0.1 blue:components[2]-0.1 alpha:1]]];
}

+ (instancetype _Nonnull)initWithFrame:(CGRect)frame color:(UIColor * _Nonnull)color highlightedColor:(UIColor * _Nonnull)highlightedColor {
    return [UIButton initWithFrame:frame title:nil backgroundImage:[UIImage imageWithColor:color] highlightedBackgroundImage:[UIImage imageWithColor:highlightedColor]];
}

+ (instancetype _Nonnull)initWithFrame:(CGRect)frame image:(UIImage * _Nonnull)image {
    return [UIButton initWithFrame:frame image:image highlightedImage:nil];
}

+ (instancetype _Nonnull)initWithFrame:(CGRect)frame image:(UIImage * _Nonnull)image highlightedImage:(UIImage * _Nullable)highlightedImage {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:frame];
    [button setImage:image forState:UIControlStateNormal];
    [button setImage:highlightedImage forState:UIControlStateHighlighted];
    
    return button;
}

- (void)setTitleFont:(FontName)fontName size:(CGFloat)size {
    [self.titleLabel setFont:[UIFont fontForFontName:fontName size:size]];
}

- (void)setTitleColor:(UIColor * _Nonnull)color {
    [self setTitleColor:color highlightedColor:[color colorWithAlphaComponent:0.4]];
}

- (void)setTitleColor:(UIColor * _Nonnull)color highlightedColor:(UIColor * _Nullable)highlightedColor {
    [self setTitleColor:color forState:UIControlStateNormal];
    [self setTitleColor:highlightedColor forState:UIControlStateHighlighted];
}

@end
