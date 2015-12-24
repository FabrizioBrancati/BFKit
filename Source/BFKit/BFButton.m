//
//  BFButton.m
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

#import "BFButton.h"

@interface BFButton ()

@property(nonatomic, strong) UIImageView *overlayImgView;
@property(nonatomic, assign) CGFloat fadeDuration;

@end

@implementation BFButton

- (instancetype _Nonnull)initWithFrame:(CGRect)frame image:(UIImage * _Nonnull)image highlightedImage:(UIImage * _Nonnull)highlightedImage fadeDuration:(CGFloat)fadeDuration {
    if ((self = [BFButton buttonWithType:UIButtonTypeCustom])) {
        self.frame = frame;
        
        self.fadeDuration = fadeDuration;
        
        [self setImage:image forState:UIControlStateNormal];
        self.overlayImgView = [[UIImageView alloc] initWithImage:highlightedImage];
        self.overlayImgView.frame = self.imageView.frame;
        self.overlayImgView.bounds = self.imageView.bounds;
        
        self.adjustsImageWhenHighlighted = NO;
    }
    
    return self;
}


- (void)setHighlighted:(BOOL)highlighted {
    if (![self isHighlighted] && highlighted) {
        [self addSubview:self.overlayImgView];
        
        [UIView animateWithDuration:self.fadeDuration animations:^{
            self.overlayImgView.alpha = 1;
        } completion:NULL];
    } else if ([self isHighlighted] && !highlighted) {
        [UIView animateWithDuration:self.fadeDuration animations:^{
            self.overlayImgView.alpha = 0;
        } completion:^(BOOL finished) {
            [self.overlayImgView removeFromSuperview];
        }];
    }
    
    [super setHighlighted:highlighted];
}

- (void)setOverlayImgView:(UIImageView *)overlayImgView {
    if (overlayImgView != _overlayImgView) {
        _overlayImgView = overlayImgView;
    }
    
    self.overlayImgView.alpha = 0;
}

@end
