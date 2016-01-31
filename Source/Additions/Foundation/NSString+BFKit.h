//
//  NSString+BFKit.h
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

@import Foundation;
@import UIKit;

/**
 *  This category adds some useful methods to NSString
 */
@interface NSString (BFKit)

/**
 *  Search in a given string a substring from the start char to the end char (excluded form final string).
 *  Example: "This is a test" with start char 'h' and end char 't' will return "is is a "
 *
 *  @param string The string to search in
 *  @param start  The start char
 *  @param end    The end char
 *
 *  @return Returns the substring
 */
+ (NSString * _Nonnull)searchInString:(NSString *_Nonnull)string
                            charStart:(char)start
                              charEnd:(char)end;

/**
 *  Search in a given string a substring from the start char to the end char (excluded form final string).
 *  Example: "This is a test" with start char 'h' and end char 't' will return "is is a "
 *
 *  @param start  The start char
 *  @param end    The end char
 *
 *  @return Returns the substring
 */
- (NSString * _Nonnull)searchCharStart:(char)start
                               charEnd:(char)end;

/**
 *  Returns the index of the given character
 *
 *  @param character The character to search
 *
 *  @return Returns the index of the given character, -1 if not found
 */
- (NSInteger)indexOfCharacter:(char)character;

/**
 *  Creates a substring from the given character
 *
 *  @param character The character
 *
 *  @return Returns the substring from character
 */
- (NSString * _Nonnull)substringFromCharacter:(char)character;

/**
 *  Creates a substring to the given character
 *
 *  @param character The character
 *
 *  @return Returns the substring to character
 */
- (NSString * _Nonnull)substringToCharacter:(char)character;

/**
 *  Create a MD5 string from self
 *
 *  @return Returns the MD5 NSString from self
 */
- (NSString * _Nullable)MD5 DEPRECATED_MSG_ATTRIBUTE("Use BFCryptor MD5");

/**
 *  Create a SHA1 string from self
 *
 *  @return Returns the SHA1 NSString from self
 */
- (NSString * _Nullable)SHA1 DEPRECATED_MSG_ATTRIBUTE("Use BFCryptor SHA1");

/**
 *  Create a SHA256 string from self
 *
 *  @return Returns the SHA256 NSString from self
 */
- (NSString * _Nullable)SHA256 DEPRECATED_MSG_ATTRIBUTE("Use BFCryptor SHA256");

/**
 *  Create a SHA512 string from self
 *
 *  @return Returns the SHA512 NSString from self
 */
- (NSString * _Nullable)SHA512 DEPRECATED_MSG_ATTRIBUTE("Use BFCryptor SHA512");

/**
 *  Check if self has the given substring in case-sensitive
 *
 *  @param substring The substring to be searched
 *
 *  @return Returns YES if founded, NO if not
 */
- (BOOL)hasString:(NSString * _Nonnull)substring;

/**
 *  Check if self has the given substring specifying if is case-sensitive or not
 *
 *  @param substring     The substring to be searched
 *  @param caseSensitive If the search has to be case-sensitive or not
 *
 *  @return Returns YES if founded, NO if not
 */
- (BOOL)hasString:(NSString * _Nonnull)substring
    caseSensitive:(BOOL)caseSensitive;

/**
 *  Check if self is an email
 *
 *  @return Returns YES if it's an email, NO if not
 */
- (BOOL)isEmail;

/**
 *  Check if the given string is an email
 *
 *  @param email The string to be checked
 *
 *  @return Returns YES if it's an email, NO if not
 */
+ (BOOL)isEmail:(NSString * _Nonnull)email;

/**
 *  Convert a string to UTF8
 *
 *  @param string String to be converted
 *
 *  @return Returns the converted string
 */
+ (NSString * _Nonnull)convertToUTF8Entities:(NSString * _Nonnull)string;

/**
 *  Encode the given string to Base64
 *
 *  @param string String to encode
 *
 *  @return Returns the encoded string
 */
+ (NSString * _Nonnull)encodeToBase64:(NSString * _Nonnull)string;

/**
 *  Encode the given string to Base64
 *
 *  @return Returns the encoded string
 */
- (NSString * _Nonnull)encodeToBase64;

/**
 *  Decode the given Base64 to string
 *
 *  @param string String to decode
 *
 *  @return Returns the decoded string
 */
+ (NSString * _Nonnull)decodeBase64:(NSString * _Nonnull)string;

/**
 *  Decode the given Base64 to string
 *
 *  @return Returns the decoded string
 */
- (NSString * _Nonnull)decodeBase64;

/**
 *  Convert the given NSString to NSData
 *
 *  @param string The NSString to be converted
 *
 *  @return Returns the converted NSString as NSData
 */
+ (NSData * _Nonnull)convertToNSData:(NSString * _Nonnull)string;

/**
 *  Convert self to a NSData
 *
 *  @return Returns self as NSData
 */
- (NSData * _Nonnull)convertToNSData;

/**
 *  Conver self to a capitalized string.
 *  Example: "This is a Test" will return "This is a test" and "this is a test" will return "This is a test"
 *
 *  @return Returns the capitalized sentence string
 */
- (NSString * _Nonnull)sentenceCapitalizedString;

/**
 *  Returns a human legible string from a timestamp
 *
 *  @return Returns a human legible string from a timestamp
 */
- (NSString * _Nonnull)dateFromTimestamp;

/**
 *  Encode self to an encoded url string
 *
 *  @return Returns the encoded NSString
 */
- (NSString * _Nonnull)urlEncode DEPRECATED_MSG_ATTRIBUTE("Use -URLEncode");

/**
 *  Encode self to an encoded url string
 *
 *  @return Returns the encoded NSString
 */
- (NSString * _Nonnull)URLEncode;

/**
 *  Remove double or more duplicated spaces
 *
 *  @return String without additional spaces
 */
- (NSString * _Nonnull)removeExtraSpaces;

/**
 *  Returns a new string containing matching regular expressions replaced with the template string
 *
 *  @param regexString The regex string
 *  @param replacement The replacement string
 *
 *  @return Returns a new string containing matching regular expressions replaced with the template string
 */
- (NSString * _Nonnull)stringByReplacingWithRegex:(NSString * _Nonnull)regexString
                                       withString:(NSString * _Nonnull)replacement;

/**
 *  Convert HEX string (separated by space) to "usual" characters string.
 *	Example: "68 65 6c 6c 6f" -> "hello"
 *
 *  @return Readable string
 */
- (NSString * _Nonnull)HEXToString;

/**
 *  Convert string to HEX string.
 *	Example: "hello" -> "68656c6c6f"
 *
 *  @return HEX string
 */
- (NSString * _Nonnull)stringToHEX;

/**
 *  Used to create an UUID as NSString
 *
 *  @return Returns the created UUID string
 */
+ (NSString * _Nonnull)generateUUID;

/**
 *  Returns if self is a valid UUID or not
 *
 *  @return Returns if self is a valid UUID or not
 */
- (BOOL)isUUID;

/**
 *  Returns if self is a valid UUID for APNS (Apple Push Notification System) or not
 *
 *  @return Returns if self is a valid UUID for APNS (Apple Push Notification System) or not
 */
- (BOOL)isUUIDForAPNS;

/**
 *  Converts self to an UUID APNS valid (No "<>" or "-" or spaces)
 *
 *  @return Converts self to an UUID APNS valid (No "<>" or "-" or spaces)
 */
- (NSString * _Nonnull)convertToAPNSUUID;


/**
 *  Used to calculate text height for max width and font
 *
 *  @param width Max width to fit text
 *  @param font  Font used in text
 *
 *  @return Returns the calculated height of string within width using given font
 */
- (CGFloat)heightForWidth:(float)width
                  andFont:(UIFont * _Nonnull)font;

@end
