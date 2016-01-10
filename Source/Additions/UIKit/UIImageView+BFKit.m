//
//  UIImageView+BFKit.m
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

#import "UIImageView+BFKit.h"

@implementation UIImageView (BFKit)

+ (instancetype _Nonnull)initWithImage:(UIImage * _Nonnull)image frame:(CGRect)rect {
    UIImageView *_image = [[UIImageView alloc] init];
    [_image setFrame:rect];
    [_image setImage:image];
    return _image;
}

+ (instancetype _Nonnull)initWithImage:(UIImage * _Nonnull)image size:(CGSize)size center:(CGPoint)center {
    UIImageView *_image = [[UIImageView alloc] init];
    [_image setFrame:CGRectMake(0, 0, size.width, size.height)];
    [_image setImage:image];
    [_image setCenter:center];
    return _image;
}

+ (instancetype _Nonnull)initWithImage:(UIImage * _Nonnull)image center:(CGPoint)center {
    UIImageView *_image = [[UIImageView alloc] init];
    [_image setFrame:CGRectMake(0, 0, image.size.width, image.size.height)];
    [_image setImage:image];
    [_image setCenter:center];
    return _image;
}

+ (instancetype _Nonnull)initWithImageAsTemplate:(UIImage * _Nonnull)image tintColor:(UIColor * _Nonnull)tintColor {
    UIImageView *_image = [[UIImageView alloc] init];
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    [_image setImage:image];
    [_image setTintColor:tintColor];
    return _image;
}

- (void)setImageShadowColor:(UIColor * _Nonnull)color radius:(CGFloat)radius offset:(CGSize)offset opacity:(CGFloat)opacity {
    self.layer.shadowColor = color.CGColor;
    self.layer.shadowRadius = radius;
    self.layer.shadowOffset = offset;
    self.layer.shadowOpacity = opacity;
    self.clipsToBounds = NO;
}

- (void)setMaskImage:(UIImage * _Nonnull)image {
    CALayer *mask = [CALayer layer];
    mask.contents = (id)[image CGImage];
    mask.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    self.layer.mask = mask;
    self.layer.masksToBounds = YES;
}

@end
