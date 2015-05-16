//
//  UILabel+BFKit.m
//  BFKit
//
//  The MIT License (MIT)
//
//  Copyright (c) 2014 - 2015 Fabrizio Brancati. All rights reserved.
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

#import "UILabel+BFKit.h"

/**
 *  Remove the commment to this lines if you want to use an UILabel to show the progress of an operation in AFNetworking
 */
/*
@interface AFURLConnectionOperation (_UIProgressView)
@property (readwrite, nonatomic, copy) void (^uploadProgress)(NSUInteger bytes, NSInteger totalBytes, NSInteger totalBytesExpected);
@property (readwrite, nonatomic, assign, setter = af_setUploadProgressAnimated:) BOOL af_uploadProgressAnimated;
@end
*/

@implementation UILabel (BFKit)

+ (UILabel *)initWithFrame:(CGRect)frame text:(NSString *)text font:(FontName)fontName size:(CGFloat)size color:(UIColor *)color alignment:(NSTextAlignment)alignment lines:(NSInteger)lines
{
    return [UILabel initWithFrame:frame text:text font:fontName size:size color:color alignment:alignment lines:lines shadowColor:[UIColor clearColor]];
}

+ (UILabel *)initWithFrame:(CGRect)frame text:(NSString *)text font:(FontName)fontName size:(CGFloat)size color:(UIColor *)color alignment:(NSTextAlignment)alignment lines:(NSInteger)lines shadowColor:(UIColor *)colorShadow
{
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    [label setFont:[UIFont fontForFontName:fontName size:size]];
    [label setText:text];
    [label setBackgroundColor:[UIColor clearColor]];
    [label setTextColor:color];
    [label setShadowColor:colorShadow];
    [label setTextAlignment:alignment];
    [label setNumberOfLines:lines];
    
    return label;
}

/**
 *  Remove the commment to this lines if you want to use an UILabel to show the progress of an operation in AFNetworking
 */
/*
- (void)setProgressWithUploadProgressOfOperation:(AFURLConnectionOperation *)operation
{
    __weak __typeof(self)weakSelf = self;
    void (^original)(NSUInteger bytesWritten, NSInteger totalBytesWritten, NSInteger totalBytesExpectedToWrite) = [operation.uploadProgress copy];
    [operation setUploadProgressBlock:^(NSUInteger bytesWritten, NSInteger totalBytesWritten, NSInteger totalBytesExpectedToWrite) {
        if(original)
        {
            original(bytesWritten, totalBytesWritten, totalBytesExpectedToWrite);
        }
        
        dispatch_async(dispatch_get_main_queue(), ^{
            if(totalBytesExpectedToWrite > 0)
            {
                __strong __typeof(weakSelf)strongSelf = weakSelf;
                [strongSelf setText:[NSString stringWithFormat:@"%i%@", (int)((totalBytesWritten / (totalBytesExpectedToWrite * 1.0f)) * 100), @"%"]];
            }
        });
    }];
}
*/

@end
