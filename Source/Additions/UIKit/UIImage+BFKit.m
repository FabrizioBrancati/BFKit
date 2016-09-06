//
//  UIImage+BFKit.m
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

#import "UIImage+BFKit.h"
#import "NSNumber+BFKit.h"
#import "UIColor+BFKit.h"
#import "UIDevice+BFKit.h"
#import "BFLog.h"

@implementation UIImage (BFKit)

+ (UIImage * _Nullable)dummyImageNamed:(NSString * _Nonnull)dummy {
    if (!dummy) {
        return nil;
    }
    
    CGSize size = CGSizeZero;
    UIColor *color = [UIColor lightGrayColor];
    
    NSArray *array = [dummy componentsSeparatedByString:@"."];
    if (array.count > 0)
    {
        NSString *sizeString = array[0];
        if (!sizeString) {
            return nil;
        }
        
        NSString *colorString = nil;
        if (array.count >= 2) {
            colorString = array[1];
        }
        
        size = [UIImage sizeForSizeString:sizeString];
    }
    
    UIGraphicsBeginImageContextWithOptions(size, NO, [[UIScreen mainScreen] scale]);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGRect rect = CGRectMake(0.0, 0.0, size.width, size.height);
    
    [color setFill];
    CGContextFillRect(context, rect);
    
    NSString *sizeString = [NSString stringWithFormat:@"%d x %d", (int)size.width, (int)size.height];
    NSMutableParagraphStyle *style = [[NSParagraphStyle defaultParagraphStyle] mutableCopy];
    style.alignment = NSTextAlignmentCenter;
    style.minimumLineHeight = size.height / 2;
    NSDictionary *attributes = @{NSParagraphStyleAttributeName : style};
    [sizeString drawInRect:rect withAttributes:attributes];
    
    UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return result;
}

+ (CGSize)sizeForSizeString:(NSString * _Nonnull)sizeString {
    NSArray *array = [sizeString componentsSeparatedByString:@"x"];
    if (array.count != 2) {
        return CGSizeZero;
    }
    
    return CGSizeMake([array[0] floatValue], [array[1] floatValue]);
}

- (UIImage * _Nonnull)blendMode:(CGBlendMode)blendMode {
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(self.size.width, self.size.height), NO, [[UIScreen mainScreen] scale]);
    [self drawInRect:CGRectMake(0.0, 0.0, self.size.width, self.size.height) blendMode:blendMode alpha:1];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

- (UIImage * _Nonnull)blendOverlay {
    return [self blendMode:kCGBlendModeOverlay];
}

- (UIImage * _Nullable)maskWithImage:(UIImage * _Nonnull)image andSize:(CGSize)size {
	CGContextRef mainViewContentContext;
	CGColorSpaceRef colorSpace;
	colorSpace = CGColorSpaceCreateDeviceRGB();
	mainViewContentContext = CGBitmapContextCreate(NULL, size.width, size.height, 8, 0, colorSpace, (CGBitmapInfo)kCGImageAlphaPremultipliedLast);
	CGColorSpaceRelease(colorSpace);
	
    if (mainViewContentContext == NULL) {
        return nil;
    }
	
	CGContextClipToMask(mainViewContentContext, CGRectMake(0, 0, size.width, size.height), image.CGImage);
	CGContextDrawImage(mainViewContentContext, CGRectMake(0, 0, size.width, size.height), self.CGImage);
	CGImageRef mainViewContentBitmapContext = CGBitmapContextCreateImage(mainViewContentContext);
	CGContextRelease(mainViewContentContext);
	UIImage *returnImage = [UIImage imageWithCGImage:mainViewContentBitmapContext];
	CGImageRelease(mainViewContentBitmapContext);
    
	return returnImage;
}

- (UIImage * _Nullable)maskWithImage:(UIImage * _Nonnull)image {
    CGContextRef context;
    CGColorSpaceRef colorSpace;
    colorSpace = CGColorSpaceCreateDeviceRGB();
    context = CGBitmapContextCreate(NULL, self.size.width, self.size.height, 8, 0, colorSpace, (CGBitmapInfo)kCGImageAlphaPremultipliedLast);
    CGColorSpaceRelease(colorSpace);
    
    if (context == NULL) {
        return NULL;
    }
    
    CGContextClipToMask(context, CGRectMake(0, 0, self.size.width, self.size.height), image.CGImage);
    CGContextDrawImage(context, CGRectMake(0, 0, self.size.width, self.size.height), self.CGImage);
    CGImageRef bitmapContext = CGBitmapContextCreateImage(context);
    CGContextRelease(context);
    UIImage *returnImage = [UIImage imageWithCGImage:bitmapContext];
    CGImageRelease(bitmapContext);
    
    return returnImage;
}

- (UIImage * _Nonnull)imageAtRect:(CGRect)rect {
    CGRect realRect;
    if (rect.origin.x != 0 && rect.origin.y != 0) {
        realRect = CGRectMake(0, 0, rect.size.width * self.scale, rect.size.height * self.scale);
    } else {
        realRect = CGRectMake(rect.origin.x * self.scale, rect.origin.y * self.scale, rect.size.width * self.scale, rect.size.height * self.scale);
    }
    CGImageRef imageRef = CGImageCreateWithImageInRect([self CGImage], realRect);
    UIImage *subImage = [UIImage imageWithCGImage:imageRef scale:self.scale orientation:self.imageOrientation];
    CGImageRelease(imageRef);
    
    return subImage;
}

- (UIImage * _Nonnull)imageByScalingProportionallyToMinimumSize:(CGSize)targetSize  {
    UIImage *sourceImage = self;
    UIImage *newImage = nil;
    
    CGSize imageSize = sourceImage.size;
    CGFloat width = imageSize.width;
    CGFloat height = imageSize.height;
    
    CGFloat targetWidth = targetSize.width;
    CGFloat targetHeight = targetSize.height;
    
    CGFloat scaleFactor = 0.0;
    CGFloat scaledWidth = targetWidth;
    CGFloat scaledHeight = targetHeight;
    
    CGPoint thumbnailPoint = CGPointMake(0.0,0.0);
    
    if (CGSizeEqualToSize(imageSize, targetSize) == NO) {
        CGFloat widthFactor = targetWidth / width;
        CGFloat heightFactor = targetHeight / height;
        
        if (widthFactor > heightFactor) {
            scaleFactor = widthFactor;
        } else {
            scaleFactor = heightFactor;
        }
        
        scaledWidth = width * scaleFactor;
        scaledHeight = height * scaleFactor;
        
        if (widthFactor > heightFactor) {
            thumbnailPoint.y = (targetHeight - scaledHeight) * 0.5;
        } else if (widthFactor < heightFactor) {
            thumbnailPoint.x = (targetWidth - scaledWidth) * 0.5;
        }
    }
    
    UIGraphicsBeginImageContextWithOptions(targetSize, NO, [[UIScreen mainScreen] scale]);
    CGRect thumbnailRect = CGRectZero;
    thumbnailRect.origin = thumbnailPoint;
    thumbnailRect.size.width  = scaledWidth;
    thumbnailRect.size.height = scaledHeight;
    
    [sourceImage drawInRect:thumbnailRect];
    
    newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    if (newImage == nil) {
        BFLog(@"Could not scale image");
    }
    
    return newImage;
}

- (UIImage * _Nonnull)imageByScalingProportionallyToMaximumSize:(CGSize)targetSize {
    if ((self.size.width > targetSize.width || targetSize.width == targetSize.height) && self.size.width > self.size.height)
    {
        float factor = (targetSize.width * 100) / self.size.width;
        float newWidth = (self.size.width * factor) / 100;
        float newHeight = (self.size.height * factor) / 100;
        
        CGSize newSize = CGSizeMake(newWidth, newHeight);
        UIGraphicsBeginImageContextWithOptions(newSize, NO, [[UIScreen mainScreen] scale]);
        [self drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    } else if ((self.size.height > targetSize.height || targetSize.width == targetSize.height) && self.size.width < self.size.height) {
        float factor = (targetSize.height * 100) / self.size.height;
        float newWidth = (self.size.width * factor) / 100;
        float newHeight = (self.size.height * factor) / 100;
        
        CGSize newSize = CGSizeMake(newWidth, newHeight);
        UIGraphicsBeginImageContextWithOptions(newSize, NO, [[UIScreen mainScreen] scale]);
        [self drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    } else if ((self.size.height > targetSize.height || self.size.width > targetSize.width ) && self.size.width == self.size.height) {
        float factor = (targetSize.height * 100) / self.size.height;
        float newDimension = (self.size.height * factor) / 100;
        
        CGSize newSize = CGSizeMake(newDimension, newDimension);
        UIGraphicsBeginImageContextWithOptions(newSize, NO, [[UIScreen mainScreen] scale]);
        [self drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    } else {
        CGSize newSize = CGSizeMake(self.size.width, self.size.height);
        UIGraphicsBeginImageContextWithOptions(newSize, NO, [[UIScreen mainScreen] scale]);
        [self drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    }
    
    UIImage *returnImage = UIGraphicsGetImageFromCurrentImageContext();    
    UIGraphicsEndImageContext();
    
    return returnImage;
}


- (UIImage * _Nonnull)imageByScalingProportionallyToSize:(CGSize)targetSize {
    UIImage *sourceImage = self;
    UIImage *newImage = nil;
    
    CGSize imageSize = sourceImage.size;
    CGFloat width = imageSize.width;
    CGFloat height = imageSize.height;
    
    CGFloat targetWidth = targetSize.width;
    CGFloat targetHeight = targetSize.height;
    
    CGFloat scaleFactor = 0.0;
    CGFloat scaledWidth = targetWidth;
    CGFloat scaledHeight = targetHeight;
    
    CGPoint thumbnailPoint = CGPointMake(0.0, 0.0);
    
    if (CGSizeEqualToSize(imageSize, targetSize) == NO) {
        CGFloat widthFactor = targetWidth / width;
        CGFloat heightFactor = targetHeight / height;
        
        if (widthFactor < heightFactor) {
            scaleFactor = widthFactor;
        } else {
            scaleFactor = heightFactor;
        }
        
        scaledWidth = width * scaleFactor;
        scaledHeight = height * scaleFactor;
        
        if (widthFactor < heightFactor) {
            thumbnailPoint.y = (targetHeight - scaledHeight) * 0.5;
        } else if (widthFactor > heightFactor) {
            thumbnailPoint.x = (targetWidth - scaledWidth) * 0.5;
        }
    }
    
    UIGraphicsBeginImageContextWithOptions(targetSize, NO, [[UIScreen mainScreen] scale]);
    
    CGRect thumbnailRect = CGRectZero;
    thumbnailRect.origin = thumbnailPoint;
    thumbnailRect.size.width = scaledWidth;
    thumbnailRect.size.height = scaledHeight;
    
    [sourceImage drawInRect:thumbnailRect];
    
    newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    if (newImage == nil) {
        BFLog(@"Could not scale image");
    }
    
    return newImage;
}


- (UIImage * _Nonnull)imageByScalingToSize:(CGSize)targetSize {
    UIImage *sourceImage = self;
    UIImage *newImage = nil;
    
    CGFloat targetWidth = targetSize.width;
    CGFloat targetHeight = targetSize.height;
    
    CGFloat scaledWidth = targetWidth;
    CGFloat scaledHeight = targetHeight;
    
    CGPoint thumbnailPoint = CGPointMake(0.0,0.0);
    
    UIGraphicsBeginImageContextWithOptions(targetSize, NO, [[UIScreen mainScreen] scale]);
    
    CGRect thumbnailRect = CGRectZero;
    thumbnailRect.origin = thumbnailPoint;
    thumbnailRect.size.width = scaledWidth;
    thumbnailRect.size.height = scaledHeight;
    
    [sourceImage drawInRect:thumbnailRect];
    
    newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    if (newImage == nil) {
        BFLog(@"Could not scale image");
    }
    
    return newImage;
}


- (UIImage * _Nonnull)imageRotatedByRadians:(CGFloat)radians {
    return [self imageRotatedByDegrees:RadiansToDegrees(radians)];
}

- (UIImage * _Nonnull)imageRotatedByDegrees:(CGFloat)degrees {
    UIView *rotatedViewBox = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.size.width, self.size.height)];
    CGAffineTransform t = CGAffineTransformMakeRotation(DegreesToRadians(degrees));
    rotatedViewBox.transform = t;
    CGSize rotatedSize = rotatedViewBox.frame.size;
    
    UIGraphicsBeginImageContextWithOptions(rotatedSize, NO, [[UIScreen mainScreen] scale]);
    CGContextRef bitmap = UIGraphicsGetCurrentContext();
    
    CGContextTranslateCTM(bitmap, rotatedSize.width / 2, rotatedSize.height / 2);
    
    CGContextRotateCTM(bitmap, DegreesToRadians(degrees));
    
    CGContextScaleCTM(bitmap, 1.0, -1.0);
    CGContextDrawImage(bitmap, CGRectMake(-self.size.width / 2, -self.size.height / 2, self.size.width, self.size.height), [self CGImage]);
    
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return newImage;
}

- (UIImage * _Nonnull)flipImageHorizontally {
    return [[UIImage alloc] initWithCGImage:self.CGImage scale:self.scale orientation:UIImageOrientationUpMirrored];
}

- (UIImage * _Nonnull)flipImageVertically {
    return [[UIImage alloc] initWithCGImage:self.CGImage scale:self.scale orientation:UIImageOrientationLeftMirrored];
}

- (BOOL)hasAlpha {
    CGImageAlphaInfo alpha = CGImageGetAlphaInfo(self.CGImage);
    return (alpha == kCGImageAlphaFirst || alpha == kCGImageAlphaLast || alpha == kCGImageAlphaPremultipliedFirst || alpha == kCGImageAlphaPremultipliedLast);
}

- (UIImage * _Nonnull)removeAlpha {
    if (![self hasAlpha]) {
        return self;
    }
    
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef mainViewContentContext = CGBitmapContextCreate(NULL, self.size.width, self.size.height, 8, 0, colorSpace, (CGBitmapInfo)kCGImageAlphaNoneSkipLast);
	CGColorSpaceRelease(colorSpace);
    
    CGContextDrawImage(mainViewContentContext, CGRectMake(0, 0, self.size.width, self.size.height), self.CGImage);
	CGImageRef mainViewContentBitmapContext = CGBitmapContextCreateImage(mainViewContentContext);
	CGContextRelease(mainViewContentContext);
	UIImage *returnImage = [UIImage imageWithCGImage:mainViewContentBitmapContext];
	CGImageRelease(mainViewContentBitmapContext);
    
    return returnImage;
}

- (UIImage * _Nonnull)fillAlpha {
    return [self fillAlphaWithColor:[UIColor whiteColor]];
}

- (UIImage * _Nonnull)fillAlphaWithColor:(UIColor * _Nonnull)color {
    CGRect imageRect;
	imageRect.origin = CGPointZero;
	imageRect.size = self.size;
    
    CGColorRef cgColor = [color CGColor];
    
    UIGraphicsBeginImageContextWithOptions(self.size, NO, [[UIScreen mainScreen] scale]);
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGContextSetFillColorWithColor(context, cgColor);
    CGContextFillRect(context, imageRect);
    [self drawInRect:imageRect];
    
	UIImage *returnImage = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
    
	return returnImage;
}

- (BOOL)isGrayscale {
    CGImageRef imgRef = [self CGImage];
    CGColorSpaceModel clrMod = CGColorSpaceGetModel(CGImageGetColorSpace(imgRef));
    
    switch (clrMod) {
        case kCGColorSpaceModelMonochrome:
            return YES;
        default:
            return NO;
    }
}

- (UIImage * _Nonnull)imageToGrayscale {
    CGSize size = self.size;
    CGRect rect = CGRectMake(0.0f, 0.0f, size.width, size.height);
    
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceGray(); 
    CGContextRef context = CGBitmapContextCreate(nil, size.width, size.height, 8, 0, colorSpace, (CGBitmapInfo)kCGImageAlphaNone);
    CGColorSpaceRelease(colorSpace); 
    CGContextDrawImage(context, rect, [self CGImage]);
    CGImageRef grayscale = CGBitmapContextCreateImage(context);
    UIImage *returnImage = [UIImage imageWithCGImage:grayscale];
    CGContextRelease(context);
    CGImageRelease(grayscale);
    
    return returnImage;
}

- (UIImage * _Nonnull)imageToBlackAndWhite {
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceGray();
    CGContextRef context = CGBitmapContextCreate(nil, self.size.width, self.size.height, 8, self.size.width, colorSpace, (CGBitmapInfo)kCGImageAlphaNone);
    CGContextSetInterpolationQuality(context, kCGInterpolationHigh);
    CGContextSetShouldAntialias(context, NO);
    CGContextDrawImage(context, CGRectMake(0, 0, self.size.width, self.size.height), [self CGImage]);
    
    CGImageRef bwImage = CGBitmapContextCreateImage(context);
    CGContextRelease(context);
    CGColorSpaceRelease(colorSpace);
    
    UIImage *returnImage = [UIImage imageWithCGImage:bwImage];
    CGImageRelease(bwImage);
    
    return returnImage;
}

- (UIImage * _Nonnull)invertColors {
    UIGraphicsBeginImageContextWithOptions(self.size, NO, [[UIScreen mainScreen] scale]);
    CGContextSetBlendMode(UIGraphicsGetCurrentContext(), kCGBlendModeCopy);
    [self drawInRect:CGRectMake(0, 0, self.size.width, self.size.height)];
    CGContextSetBlendMode(UIGraphicsGetCurrentContext(), kCGBlendModeDifference);
    CGContextSetFillColorWithColor(UIGraphicsGetCurrentContext(), [UIColor whiteColor].CGColor);
    CGContextFillRect(UIGraphicsGetCurrentContext(), CGRectMake(0, 0, self.size.width, self.size.height));
    
    UIImage *returnImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return returnImage;
}

- (UIImage * _Nonnull)bloom:(float)radius intensity:(float)intensity {
    CIContext *context = [CIContext contextWithOptions:nil];
    CIImage *image = [CIImage imageWithCGImage:[self CGImage]];
    CIFilter *filter = [CIFilter filterWithName:@"CIBloom"];
    [filter setValue:image forKey:kCIInputImageKey];
    [filter setValue:[NSNumber numberWithFloat:radius] forKey:@"inputRadius"];
    [filter setValue:[NSNumber numberWithFloat:intensity] forKey:@"inputIntensity"];
    CIImage *result = [filter valueForKey:kCIOutputImageKey];
    CGImageRef cgImage = [context createCGImage:result fromRect:[result extent]];
    
    UIImage *returnImage = [UIImage imageWithCGImage:cgImage];
    CFRelease(cgImage);
    
    return returnImage;
}

- (UIImage * _Nonnull)bumpDistortion:(CIVector *)center radius:(float)radius scale:(float)scale {
    CIContext *context = [CIContext contextWithOptions:nil];
    CIImage *image = [CIImage imageWithCGImage:[self CGImage]];
    CIFilter *filter = [CIFilter filterWithName:@"CIBumpDistortion"];
    [filter setValue:image forKey:kCIInputImageKey];
    [filter setValue:center forKey:@"inputCenter"];
    [filter setValue:[NSNumber numberWithFloat:radius] forKey:@"inputRadius"];
    [filter setValue:[NSNumber numberWithFloat:scale] forKey:@"inputScale"];
    CIImage *result = [filter valueForKey:kCIOutputImageKey];
    CGImageRef cgImage = [context createCGImage:result fromRect:[result extent]];
    
    UIImage *returnImage = [UIImage imageWithCGImage:cgImage];
    CFRelease(cgImage);
    
    return returnImage;
}

- (UIImage * _Nonnull)bumpDistortionLinear:(CIVector * _Nonnull)center radius:(float)radius angle:(float)angle scale:(float)scale {
    CIContext *context = [CIContext contextWithOptions:nil];
    CIImage *image = [CIImage imageWithCGImage:[self CGImage]];
    CIFilter *filter = [CIFilter filterWithName:@"CIBumpDistortionLinear"];
    [filter setValue:image forKey:kCIInputImageKey];
    [filter setValue:center forKey:@"inputCenter"];
    [filter setValue:[NSNumber numberWithFloat:radius] forKey:@"inputRadius"];
    [filter setValue:[NSNumber numberWithFloat:angle] forKey:@"inputAngle"];
    [filter setValue:[NSNumber numberWithFloat:scale] forKey:@"inputScale"];
    CIImage *result = [filter valueForKey:kCIOutputImageKey];
    CGImageRef cgImage = [context createCGImage:result fromRect:[result extent]];
    
    UIImage *returnImage = [UIImage imageWithCGImage:cgImage];
    CFRelease(cgImage);
    
    return returnImage;
}

- (UIImage * _Nonnull)circleSplashDistortion:(CIVector * _Nonnull)center radius:(float)radius {
    CIContext *context = [CIContext contextWithOptions:nil];
    CIImage *image = [CIImage imageWithCGImage:[self CGImage]];
    CIFilter *filter = [CIFilter filterWithName:@"CICircleSplashDistortion"];
    [filter setValue:image forKey:kCIInputImageKey];
    [filter setValue:center forKey:@"inputCenter"];
    [filter setValue:[NSNumber numberWithFloat:radius] forKey:@"inputRadius"];
    CIImage *result = [filter valueForKey:kCIOutputImageKey];
    CGImageRef cgImage = [context createCGImage:result fromRect:[result extent]];
    
    UIImage *returnImage = [UIImage imageWithCGImage:cgImage];
    CFRelease(cgImage);
    
    return returnImage;
}

- (UIImage * _Nonnull)circularWrap:(CIVector * _Nonnull)center radius:(float)radius angle:(float)angle {
    CIContext *context = [CIContext contextWithOptions:nil];
    CIImage *image = [CIImage imageWithCGImage:[self CGImage]];
    CIFilter *filter = [CIFilter filterWithName:@"CICircularWrap"];
    [filter setValue:image forKey:kCIInputImageKey];
    [filter setValue:center forKey:@"inputCenter"];
    [filter setValue:[NSNumber numberWithFloat:radius] forKey:@"inputRadius"];
    [filter setValue:[NSNumber numberWithFloat:angle] forKey:@"inputAngle"];
    CIImage *result = [filter valueForKey:kCIOutputImageKey];
    CGImageRef cgImage = [context createCGImage:result fromRect:[result extent]];
    
    UIImage *returnImage = [UIImage imageWithCGImage:cgImage];
    CFRelease(cgImage);
    
    return returnImage;
}

- (UIImage * _Nonnull)cmykHalftone:(CIVector * _Nonnull)center width:(float)width angle:(float)angle sharpness:(float)sharpness gcr:(float)gcr ucr:(float)ucr {
    CIContext *context = [CIContext contextWithOptions:nil];
    CIImage *image = [CIImage imageWithCGImage:[self CGImage]];
    CIFilter *filter = [CIFilter filterWithName:@"CICMYKHalftone"];
    [filter setValue:image forKey:kCIInputImageKey];
    [filter setValue:center forKey:@"inputCenter"];
    [filter setValue:[NSNumber numberWithFloat:width] forKey:@"inputWidth"];
    [filter setValue:[NSNumber numberWithFloat:angle] forKey:@"inputAngle"];
    [filter setValue:[NSNumber numberWithFloat:sharpness] forKey:@"inputSharpness"];
    [filter setValue:[NSNumber numberWithFloat:gcr] forKey:@"inputGCR"];
    [filter setValue:[NSNumber numberWithFloat:ucr] forKey:@"inputUCR"];
    CIImage *result = [filter valueForKey:kCIOutputImageKey];
    CGImageRef cgImage = [context createCGImage:result fromRect:[result extent]];
    
    UIImage *returnImage = [UIImage imageWithCGImage:cgImage];
    CFRelease(cgImage);
    
    return returnImage;
}

- (UIImage * _Nonnull)sepiaToneWithIntensity:(float)intensity {
    CIContext *context = [CIContext contextWithOptions:nil];
    CIImage *image = [CIImage imageWithCGImage:[self CGImage]];
    CIFilter *filter = [CIFilter filterWithName:@"CISepiaTone"];
    [filter setValue:image forKey:kCIInputImageKey];
    [filter setValue:[NSNumber numberWithFloat:intensity] forKey:@"inputIntensity"];
    CIImage *result = [filter valueForKey:kCIOutputImageKey];
    CGImageRef cgImage = [context createCGImage:result fromRect:[result extent]];
    
    UIImage *returnImage = [UIImage imageWithCGImage:cgImage];
    CFRelease(cgImage);
    
    return returnImage;
}

+ (UIImage * _Nonnull)imageWithColor:(UIColor * _Nonnull)color {
    CGRect rect = CGRectMake(0, 0, 1, 1);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, [[UIScreen mainScreen] scale]);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

- (UIImage * _Nonnull)boxBlurImageWithBlur:(CGFloat)blur {
    return [self blurImageWithBlur:blur];
}

- (UIImage * _Nonnull)blurImageWithBlur:(CGFloat)blur {
    if (blur < 0.f || blur > 1.f) {
        blur = 0.5f;
    }
    int boxSize = (int)(blur * 50);
    boxSize = boxSize - (boxSize % 2) + 1;
    
    CGImageRef img = self.CGImage;
    
    vImage_Buffer inBuffer, outBuffer;
    
    vImage_Error error;
    
    void *pixelBuffer;
    
    CGDataProviderRef inProvider = CGImageGetDataProvider(img);
    CFDataRef inBitmapData = CGDataProviderCopyData(inProvider);
    
    inBuffer.width = CGImageGetWidth(img);
    inBuffer.height = CGImageGetHeight(img);
    inBuffer.rowBytes = CGImageGetBytesPerRow(img);
    
    inBuffer.data = (void*)CFDataGetBytePtr(inBitmapData);
    
    pixelBuffer = malloc(CGImageGetBytesPerRow(img) * CGImageGetHeight(img));
    
    if (pixelBuffer == NULL) {
        BFLog(@"No pixelbuffer");
    }
    
    outBuffer.data = pixelBuffer;
    outBuffer.width = CGImageGetWidth(img);
    outBuffer.height = CGImageGetHeight(img);
    outBuffer.rowBytes = CGImageGetBytesPerRow(img);
    
    error = vImageBoxConvolve_ARGB8888(&inBuffer, &outBuffer, NULL, 0, 0, boxSize, boxSize, NULL, kvImageEdgeExtend);
    
    if (error) {
        BFLog(@"Error from convolution %ld", error);
    }
    
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef ctx = CGBitmapContextCreate(outBuffer.data, outBuffer.width, outBuffer.height, 8, outBuffer.rowBytes, colorSpace, (CGBitmapInfo)kCGImageAlphaNoneSkipLast);
    CGImageRef imageRef = CGBitmapContextCreateImage (ctx);
    UIImage *returnImage = [UIImage imageWithCGImage:imageRef];
    
    CGContextRelease(ctx);
    CGColorSpaceRelease(colorSpace);
    
    free(pixelBuffer);
    CFRelease(inBitmapData);
    
    CGImageRelease(imageRef);
    
    return returnImage;
}

+ (UIImage * _Nonnull)imageFromText:(NSString * _Nonnull)text font:(FontName)fontName fontSize:(CGFloat)fontSize imageSize:(CGSize)imageSize {
    UIGraphicsBeginImageContextWithOptions(imageSize, NO, [UIScreen mainScreen].scale);
    
    [text drawAtPoint:CGPointMake(0.0, 0.0) withAttributes:@{NSFontAttributeName:[UIFont fontForFontName:fontName size:fontSize]}];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+ (UIImage * _Nonnull)imageWithSize:(CGSize)imageSize backgroundColor:(UIColor * _Nonnull)backgroundColor maskedText:(NSString *)string font:(FontName)fontName fontSize:(CGFloat)fontSize {
    UIFont *font = [UIFont fontForFontName:fontName size:fontSize];
    NSDictionary *textAttributes = @{NSFontAttributeName:font};
    
    CGSize textSize = [string sizeWithAttributes:textAttributes];
    
    UIGraphicsBeginImageContextWithOptions(imageSize, NO, [[UIScreen mainScreen] scale]);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(ctx, backgroundColor.CGColor);
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, imageSize.width, imageSize.height)];
    CGContextAddPath(ctx, path.CGPath);
    CGContextFillPath(ctx);
    
    CGContextSetBlendMode(ctx, kCGBlendModeDestinationOut);
    CGPoint center = CGPointMake(imageSize.width / 2 - textSize.width / 2, imageSize.height / 2 - textSize.height / 2);
    [string drawAtPoint:center withAttributes:textAttributes];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
}

@end

