//
//  NSString+BFKit.m
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

#import "NSString+BFKit.h"
#import "NSData+BFKit.h"
#import "BFCryptor.h"

@implementation NSString (BFKit)

+ (NSString * _Nonnull)searchInString:(NSString *)string charStart:(char)charStart charEnd:(char)charEnd {
    int start = 0, end = 0;
    
    for (int i = 0; i < [string length]; i++) {
        if ([string characterAtIndex:i] == charStart && start == 0) {
            start = i+1;
            i += 1;
            continue;
        }
        if ([string characterAtIndex:i] == charEnd) {
            end = i;
            break;
        }
    }
    
    end -= start;
    
    if (end < 0) {
        end = 0;
    }
    
    return [[string substringFromIndex:start] substringToIndex:end];
}

- (NSString * _Nonnull)searchCharStart:(char)start charEnd:(char)end {
    return [NSString searchInString:self charStart:start charEnd:end];
}

- (NSInteger)indexOfCharacter:(char)character {
    for (NSUInteger i = 0; i < [self length]; i++) {
        if ([self characterAtIndex:i] == character) {
            return i;
        }
    }
    
    return -1;
}

- (NSString * _Nonnull)substringFromCharacter:(char)character {
    NSInteger index = [self indexOfCharacter:character];
    if (index != -1) {
        return [self substringFromIndex:index];
    } else {
        return @"";
    }
}

- (NSString * _Nonnull)substringToCharacter:(char)character {
    NSInteger index = [self indexOfCharacter:character];
    if (index != -1) {
        return [self substringToIndex:index];
    } else {
        return @"";
    }
}

- (NSString * _Nullable)MD5 {
	return [BFCryptor MD5:self];
}

- (NSString * _Nullable)SHA1 {
    return [BFCryptor SHA1:self];
}

- (NSString * _Nullable)SHA256 {
    return [BFCryptor SHA256:self];
}

- (NSString * _Nullable)SHA512 {
    return [BFCryptor SHA512:self];
}

- (BOOL)hasString:(NSString * _Nonnull)substring {
    return [self hasString:substring caseSensitive:YES];
}

- (BOOL)hasString:(NSString *)substring caseSensitive:(BOOL)caseSensitive {
    if (caseSensitive) {
        return [self rangeOfString:substring].location != NSNotFound;
    } else {
        return [self.lowercaseString rangeOfString:substring.lowercaseString].location != NSNotFound;
    }
}

- (BOOL)isEmail {
    return [NSString isEmail:self];
}

+ (BOOL)isEmail:(NSString * _Nonnull)email {
    NSString *emailRegEx = @"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$";
	
    NSPredicate *regExPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegEx];
    return [regExPredicate evaluateWithObject:[email lowercaseString]];
}

+ (NSString * _Nonnull)convertToUTF8Entities:(NSString * _Nonnull)string {
    return [[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[string
                                             stringByReplacingOccurrencesOfString:@"%27" withString:@"'"]
                                             stringByReplacingOccurrencesOfString:[@"%e2%80%99" capitalizedString] withString:@"’"]
                                             stringByReplacingOccurrencesOfString:[@"%2d" capitalizedString] withString:@"-"]
                                             stringByReplacingOccurrencesOfString:[@"%c2%ab" capitalizedString] withString:@"«"]
                                             stringByReplacingOccurrencesOfString:[@"%c2%bb" capitalizedString] withString:@"»"]
                                             stringByReplacingOccurrencesOfString:[@"%c3%80" capitalizedString] withString:@"À"]
                                             stringByReplacingOccurrencesOfString:[@"%c3%82" capitalizedString] withString:@"Â"]
                                             stringByReplacingOccurrencesOfString:[@"%c3%84" capitalizedString] withString:@"Ä"]
                                             stringByReplacingOccurrencesOfString:[@"%c3%86" capitalizedString] withString:@"Æ"]
                                             stringByReplacingOccurrencesOfString:[@"%c3%87" capitalizedString] withString:@"Ç"]
                                             stringByReplacingOccurrencesOfString:[@"%c3%88" capitalizedString] withString:@"È"]
                                             stringByReplacingOccurrencesOfString:[@"%c3%89" capitalizedString] withString:@"É"]
                                             stringByReplacingOccurrencesOfString:[@"%c3%8a" capitalizedString] withString:@"Ê"]
                                             stringByReplacingOccurrencesOfString:[@"%c3%8b" capitalizedString] withString:@"Ë"]
                                             stringByReplacingOccurrencesOfString:[@"%c3%8f" capitalizedString] withString:@"Ï"]
                                             stringByReplacingOccurrencesOfString:[@"%c3%91" capitalizedString] withString:@"Ñ"]
                                             stringByReplacingOccurrencesOfString:[@"%c3%94" capitalizedString] withString:@"Ô"]
                                             stringByReplacingOccurrencesOfString:[@"%c3%96" capitalizedString] withString:@"Ö"]
                                             stringByReplacingOccurrencesOfString:[@"%c3%9b" capitalizedString] withString:@"Û"]
                                             stringByReplacingOccurrencesOfString:[@"%c3%9c" capitalizedString] withString:@"Ü"]
                                             stringByReplacingOccurrencesOfString:[@"%c3%a0" capitalizedString] withString:@"à"]
                                             stringByReplacingOccurrencesOfString:[@"%c3%a2" capitalizedString] withString:@"â"]
                                             stringByReplacingOccurrencesOfString:[@"%c3%a4" capitalizedString] withString:@"ä"]
                                             stringByReplacingOccurrencesOfString:[@"%c3%a6" capitalizedString] withString:@"æ"]
                                             stringByReplacingOccurrencesOfString:[@"%c3%a7" capitalizedString] withString:@"ç"]
                                             stringByReplacingOccurrencesOfString:[@"%c3%a8" capitalizedString] withString:@"è"]
                                             stringByReplacingOccurrencesOfString:[@"%c3%a9" capitalizedString] withString:@"é"]
                                             stringByReplacingOccurrencesOfString:[@"%c3%af" capitalizedString] withString:@"ï"]
                                             stringByReplacingOccurrencesOfString:[@"%c3%b4" capitalizedString] withString:@"ô"]
                                             stringByReplacingOccurrencesOfString:[@"%c3%b6" capitalizedString] withString:@"ö"]
                                             stringByReplacingOccurrencesOfString:[@"%c3%bb" capitalizedString] withString:@"û"]
                                             stringByReplacingOccurrencesOfString:[@"%c3%bc" capitalizedString] withString:@"ü"]
                                             stringByReplacingOccurrencesOfString:[@"%c3%bf" capitalizedString] withString:@"ÿ"]
                                             stringByReplacingOccurrencesOfString:@"%20" withString:@" "];
}

+ (NSString * _Nonnull)encodeToBase64:(NSString * _Nonnull)string {
    NSData *data = [string convertToNSData];
    return [data base64EncodedStringWithOptions:0];
}

- (NSString * _Nonnull)encodeToBase64 {
    return [NSString encodeToBase64:self];
}

+ (NSString * _Nonnull)decodeBase64:(NSString * _Nonnull)string {
    NSData *data = [[NSData alloc] initWithBase64EncodedString:string options:0];
    return [data convertToUTF8String];
}

- (NSString * _Nonnull)decodeBase64 {
    return [NSString decodeBase64:self];
}

+ (NSData * _Nonnull)convertToNSData:(NSString * _Nonnull)string {
    return [string dataUsingEncoding:NSUTF8StringEncoding];
}

- (NSData * _Nonnull)convertToNSData {
    return [NSString convertToNSData:self];
}

- (NSString * _Nonnull)sentenceCapitalizedString {
    if (![self length]) {
        return @"";
    }
    NSString *uppercase = [[self substringToIndex:1] uppercaseString];
    NSString *lowercase = [[self substringFromIndex:1] lowercaseString];
    
    return [uppercase stringByAppendingString:lowercase];
}

- (NSString * _Nonnull)dateFromTimestamp {
    NSString *year = [self substringToIndex:4];
    NSString *month = [[self substringFromIndex:5] substringToIndex:2];
    NSString *day = [[self substringFromIndex:8] substringToIndex:2];
    NSString *hours = [[self substringFromIndex:11] substringToIndex:2];
    NSString *minutes = [[self substringFromIndex:14] substringToIndex:2];
    
    return [NSString stringWithFormat:@"%@/%@/%@ %@:%@", day, month, year, hours, minutes];
}

- (NSString * _Nonnull)urlEncode {
    return [self URLEncode];
}

- (NSString * _Nonnull)URLEncode {
    return [self stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLHostAllowedCharacterSet]];
}

- (NSString * _Nonnull)removeExtraSpaces {
    NSString *squashed = [self stringByReplacingOccurrencesOfString:@"[ ]+" withString:@" " options:NSRegularExpressionSearch range:NSMakeRange(0, self.length)];
    return [squashed stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (NSString * _Nonnull)stringByReplacingWithRegex:(NSString * _Nonnull)regexString withString:(NSString * _Nonnull)replacement {
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:regexString options:NSRegularExpressionCaseInsensitive error:nil];
    return [regex stringByReplacingMatchesInString:self options:0 range:NSMakeRange(0, [self length]) withTemplate:@""];
}

- (NSString * _Nonnull)HEXToString {
	NSMutableString *newString = [NSMutableString string];
	NSArray *components = [self componentsSeparatedByString:@" "];
	for (NSString * component in components) {
		int value = 0;
		sscanf([component cStringUsingEncoding:NSASCIIStringEncoding], "%x", &value);
		[newString appendFormat:@"%c", (char)value];
	}
	return newString;
}

- (NSString * _Nonnull)stringToHEX {
    NSUInteger len = [self length];
    unichar *chars = malloc(len * sizeof(unichar));
    [self getCharacters:chars];
    
    NSMutableString *hexString = [[NSMutableString alloc] init];
    
    for (NSUInteger i = 0; i < len; i++ ) {
        [hexString appendFormat:@"%02x", chars[i]];
    }
    free(chars);
    
    return hexString;
}

+ (NSString * _Nonnull)generateUUID {
    CFUUIDRef theUUID = CFUUIDCreate(NULL);
    CFStringRef string = CFUUIDCreateString(NULL, theUUID);
    CFRelease(theUUID);
    return (__bridge_transfer NSString *)string;
}

- (BOOL)isUUID {
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$" options:NSRegularExpressionCaseInsensitive error:nil];
    NSUInteger matches = [regex numberOfMatchesInString:self options:0 range:NSMakeRange(0, [self length])];
    return matches == 1;
}

- (BOOL)isUUIDForAPNS {
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[0-9a-f]{32}$" options:NSRegularExpressionCaseInsensitive error:nil];
    NSUInteger matches = [regex numberOfMatchesInString:self options:0 range:NSMakeRange(0, [self length])];
    return matches == 1;
}

- (NSString * _Nonnull)convertToAPNSUUID {
    return [[[self stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"<>"]] stringByReplacingOccurrencesOfString:@" " withString:@""] stringByReplacingOccurrencesOfString:@"-" withString:@""];
}

- (CGFloat)heightForWidth:(float)width andFont:(UIFont * _Nonnull)font {
    CGSize size = CGSizeZero;
    if (self.length > 0) {
        CGRect frame = [self boundingRectWithSize:CGSizeMake(width, 999999) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{ NSFontAttributeName: font } context:nil];
        size = CGSizeMake(frame.size.width, frame.size.height + 1);
    }
    return size.height;
}

@end
