//
//  UIColor+BFKit.m
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

#import "UIColor+BFKit.h"

@implementation UIColor (BFKit)

+ (UIColor * _Nonnull)hex:(NSString *)hexString {
    NSString *colorString = [[hexString stringByReplacingOccurrencesOfString:@"#" withString:@""] uppercaseString];
    CGFloat alpha, red, blue, green;
    switch ([colorString length]) {
        case 3: // #RGB
            alpha = 1.0f;
            red = [self colorComponentFrom:colorString start:0 length:1];
            green = [self colorComponentFrom:colorString start:1 length:1];
            blue = [self colorComponentFrom:colorString start:2 length:1];
            break;
        case 4: // #ARGB
            alpha = [self colorComponentFrom:colorString start:0 length:1];
            red = [self colorComponentFrom:colorString start:1 length:1];
            green = [self colorComponentFrom:colorString start:2 length:1];
            blue = [self colorComponentFrom:colorString start:3 length:1];
            break;
        case 6: // #RRGGBB
            alpha = 1.0f;
            red = [self colorComponentFrom:colorString start:0 length:2];
            green = [self colorComponentFrom:colorString start:2 length:2];
            blue = [self colorComponentFrom:colorString start:4 length:2];
            break;
        case 8: // #AARRGGBB
            alpha = [self colorComponentFrom:colorString start:0 length:2];
            red = [self colorComponentFrom:colorString start:2 length:2];
            green = [self colorComponentFrom:colorString start:4 length:2];
            blue = [self colorComponentFrom:colorString start:6 length:2];
            break;
        default:
            return nil;
            break;
    }
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

+ (UIColor * _Nonnull )hexString:(NSString *)hexString {
    return [UIColor hex:hexString];
}

+ (UIColor * _Nonnull)colorWithHexString:(NSString *)hexString {
    return [UIColor hex:hexString];
}

+ (CGFloat)colorComponentFrom:(NSString * _Nonnull)string start:(NSUInteger)start length:(NSUInteger)length {
    NSString *substring = [string substringWithRange:NSMakeRange(start, length)];
    NSString *fullHex = length == 2 ? substring : [NSString stringWithFormat:@"%@%@", substring, substring];
    unsigned hexComponent;
    [[NSScanner scannerWithString:fullHex] scanHexInt:&hexComponent];
    
    return hexComponent / 255.0;
}

+ (id _Nonnull)colorWithHex:(unsigned int)hex {
	return [UIColor colorWithHex:hex alpha:1.0];
}

+ (id _Nonnull)colorWithHex:(unsigned int)hex alpha:(float)alpha {
	return [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16)) / 255.0 green:((float)((hex & 0xFF00) >> 8)) / 255.0 blue:((float)(hex & 0xFF)) / 255.0 alpha:alpha];
}

+ (UIColor * _Nonnull)colorForColorString:(NSString * _Nonnull)colorString {
    if (!colorString) {
        return [UIColor lightGrayColor];
    }
    
    SEL colorSelector = NSSelectorFromString([colorString.lowercaseString stringByAppendingString:@"Color"]);
    if ([UIColor respondsToSelector:colorSelector]) {
        return [UIColor performSelector:colorSelector];
    } else {
        return [UIColor hex:colorString];
    }
}

+ (UIColor * _Nonnull)randomColor {
	int r = arc4random() % 255;
	int g = arc4random() % 255;
	int b = arc4random() % 255;
    
	return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1.0];
}

+ (UIColor * _Nonnull)colorWithColor:(UIColor * _Nonnull)color alpha:(float)alpha {
    return [color colorWithAlphaComponent:alpha];
}

- (BOOL)canProvideRGBComponents {
    switch (CGColorSpaceGetModel(CGColorGetColorSpace(self.CGColor))) {
        case kCGColorSpaceModelRGB:
        case kCGColorSpaceModelMonochrome:
            return YES;
        default:
            return NO;
    }
}

- (CGFloat)red {
    if (self.canProvideRGBComponents) {
        const CGFloat *c = CGColorGetComponents(self.CGColor);
        return c[0];
    }
    
    return 0.0;
}

- (CGFloat)green {
    if (self.canProvideRGBComponents) {
        const CGFloat *c = CGColorGetComponents(self.CGColor);
        if (CGColorSpaceGetModel(CGColorGetColorSpace(self.CGColor)) == kCGColorSpaceModelMonochrome)
            return c[0];
        return c[1];
    }
    
    return 0.0;
}

- (CGFloat)blue {
    if (self.canProvideRGBComponents) {
        const CGFloat *c = CGColorGetComponents(self.CGColor);
        if (CGColorSpaceGetModel(CGColorGetColorSpace(self.CGColor)) == kCGColorSpaceModelMonochrome)
            return c[0];
        return c[2];
    }
    
    return 0.0;
}

- (CGFloat)white {
    if (CGColorSpaceGetModel(CGColorGetColorSpace(self.CGColor)) == kCGColorSpaceModelMonochrome) {
        const CGFloat *c = CGColorGetComponents(self.CGColor);
        return c[0];
    }
    
    return 0.0;
}

- (CGFloat)hue {
    if (self.canProvideRGBComponents) {
        CGFloat h = 0.0f;
        [self hue:&h saturation:nil brightness:nil alpha:nil];
        return h;
    }
    
    return 0.0;
}

- (CGFloat)saturation {
    if (self.canProvideRGBComponents) {
        CGFloat s = 0.0f;
        [self hue:nil saturation:&s brightness:nil alpha:nil];
        return s;
    }
    
    return 0.0;
}

- (CGFloat)brightness {
    if (self.canProvideRGBComponents) {
        CGFloat v = 0.0f;
        [self hue:nil saturation:nil brightness:&v alpha:nil];
        return v;
    }
    
    return 0.0;
}

- (CGFloat)alpha {
    return CGColorGetAlpha(self.CGColor);
}

- (CGFloat)luminance {
    if (self.canProvideRGBComponents) {
        CGFloat r, g, b;
        if (![self red:&r green:&g blue:&b alpha:nil]) {
            return 0.0f;
        }
        
        return r * 0.2126f + g * 0.7152f + b * 0.0722f;
    }
    
    return 0.0;
}

- (UIColor * _Nonnull)contrastingColor {
    return (self.luminance > 0.5f) ? [UIColor blackColor] : [UIColor whiteColor];
}

- (UIColor * _Nonnull)complementaryColor {
    CGFloat h, s, v, a;
    if (![self hue:&h saturation:&s brightness:&v alpha:&a]) {
        return nil;
    }

    h += 180.0f;
    if (h > 360.f)
        h -= 360.0f;
    
    return [UIColor colorWithHue:h saturation:s brightness:v alpha:a];
}

- (BOOL)hue:(CGFloat * _Nullable)hue saturation:(CGFloat * _Nullable)saturation brightness:(CGFloat * _Nullable)brightness alpha:(CGFloat * _Nullable)alpha {
    CGFloat r, g, b, a;
    if (![self red:&r green:&g blue:&b alpha:&a]) {
        return NO;
    }
    
    [UIColor red:r green:g blue:b toHue:hue saturation:saturation brightness:brightness];
    
    if (alpha)
        *alpha = a;
    
    return YES;
}

- (BOOL)red:(CGFloat * _Nonnull)red green:(CGFloat * _Nonnull)green blue:(CGFloat * _Nonnull)blue alpha:(CGFloat * _Nullable)alpha {
    const CGFloat *components = CGColorGetComponents(self.CGColor);
    
    CGFloat r, g, b, a;
    
    switch (CGColorSpaceGetModel(CGColorGetColorSpace(self.CGColor))) {
        case kCGColorSpaceModelMonochrome:
            r = g = b = components[0];
            a = components[1];
            break;
        case kCGColorSpaceModelRGB:
            r = components[0];
            g = components[1];
            b = components[2];
            a = components[3];
            break;
        default:
            return NO;
    }
    
    if (red) {
        *red = r;
    }
    
    if (green) {
        *green = g;
    }
    
    if (blue) {
        *blue = b;
    }
    
    if (alpha) {
        *alpha = a;
    }
    
    return YES;
}

+ (void)red:(CGFloat)r green:(CGFloat)g blue:(CGFloat)b toHue:(CGFloat * _Nonnull)pH saturation:(CGFloat * _Nonnull)pS brightness:(CGFloat * _Nonnull)pV {
    CGFloat h,s,v;
    
    CGFloat max = MAX(r, MAX(g, b));
    CGFloat min = MIN(r, MIN(g, b));
    
    v = max;
    
    s = (max != 0.0f) ? ((max - min) / max) : 0.0f;
    
    if (s == 0.0f) {
        h = 0.0f;
    } else {
        CGFloat rc = (max - r) / (max - min);
        CGFloat gc = (max - g) / (max - min);
        CGFloat bc = (max - b) / (max - min);
        
        if (r == max) {
            h = bc - gc;
        } else if (g == max) {
            h = 2 + rc - bc;
        } else {
            h = 4 + gc - rc;
        }
        
        h *= 60.0f;
        if (h < 0.0f) {
            h += 360.0f;
        }
    }
    
    if (pH) {
        *pH = h;
    }
    if (pS) {
        *pS = s;
    }
    if (pV) {
        *pV = v;
    }
}

@end
