//
//  BFButton.m
//  UpToU
//
//  Created by Fabrizio on 01/04/15.
//  Copyright (c) 2015 Fabrizio Brancati. All rights reserved.
//

#import "BFButton.h"

@interface BFButton ()

@property(strong, nonatomic) UIImageView *overlayImgView;
@property(nonatomic, assign) CGFloat fadeDuration;

@end

@implementation BFButton

- (id)initWithFrame:(CGRect)frame image:(UIImage*)image highlightedImage:(UIImage*)highlightedImage fadeDuration:(CGFloat)fadeDuration
{
    if((self = [BFButton buttonWithType:UIButtonTypeCustom]))
    {
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


- (void)setHighlighted:(BOOL)highlighted
{
    // Check if button is going from not highlighted to highlighted
    if(![self isHighlighted] && highlighted)
    {
        [self addSubview:self.overlayImgView];
        
        [UIView animateWithDuration:self.fadeDuration animations:^{
            self.overlayImgView.alpha = 1;
        } completion:NULL];
    }
    // Check if button is going from highlighted to not highlighted
    else if([self isHighlighted] && !highlighted)
    {
        [UIView animateWithDuration:self.fadeDuration animations:^{
            self.overlayImgView.alpha = 0;
        } completion:NULL];
    }
    
    [super setHighlighted:highlighted];
}

- (void)setOverlayImgView:(UIImageView *)overlayImgView
{
    if(overlayImgView != _overlayImgView)
    {
        _overlayImgView = overlayImgView;
    }
    
    self.overlayImgView.alpha = 0;
}

@end
