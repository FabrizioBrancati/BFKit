//
//  NSString+BFKit.h
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

@import Foundation;

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
+ (NSString *)searchInString:(NSString *)string
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
- (NSString *)searchCharStart:(char)start
                      charEnd:(char)end;

/**
 *  Create a MD5 string from self
 *
 *  @return Returns the MD5 NSString from self
 */
- (NSString *)MD5;

/**
 *  Create a SHA1 string from self
 *
 *  @return Returns the SHA1 NSString from self
 */
- (NSString *)SHA1;

/**
 *  Create a SHA256 string from self
 *
 *  @return Returns the SHA256 NSString from self
 */
- (NSString *)SHA256;

/**
 *  Create a SHA512 string from self
 *
 *  @return Returns the SHA512 NSString from self
 */
- (NSString *)SHA512;

/**
 *  Check if self has the given substring in case-sensitive
 *
 *  @param substring The substring to be searched
 *
 *  @return Returns YES if founded, NO if not
 */
- (BOOL)hasString:(NSString *)substring;

/**
 *  Check if self has the given substring specifying if is case-sensitive or not
 *
 *  @param substring     The substring to be searched
 *  @param caseSensitive If the search has to be case-sensitive or not
 *
 *  @return Returns YES if founded, NO if not
 */
- (BOOL)hasString:(NSString *)substring caseSensitive:(BOOL)caseSensitive;

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
+ (BOOL)isEmail:(NSString *)email;

/**
 *  Convert a string to UTF8
 *
 *  @param string String to be converted
 *
 *  @return Returns the converted string
 */
+ (NSString *)convertToUTF8Entities:(NSString *)string;

/**
 *  Encode the given string to Base64
 *
 *  @param string String to encode
 *
 *  @return Returns the encoded string
 */
+ (NSString *)encodeToBase64:(NSString *)string;

/**
 *  Encode the given string to Base64
 *
 *  @return Returns the encoded string
 */
- (NSString *)encodeToBase64;

/**
 *  Decode the given Base64 to string
 *
 *  @param string String to decode
 *
 *  @return Returns the decoded string
 */
+ (NSString *)decodeBase64:(NSString *)string;

/**
 *  Decode the given Base64 to string
 *
 *  @return Returns the decoded string
 */
- (NSString *)decodeBase64;

/**
 *  Conver self to a capitalized string.
 *  Example: "This is a Test" will return "This is a test" and "this is a test" will return "This is a test"
 *
 *  @return Returns the capitalized sentence string
 */
- (NSString *)sentenceCapitalizedString;

/**
 *  Returns a human legible string from a timestamp
 *
 *  @return Returns a human legible string from a timestamp
 */
- (NSString *)dateFromTimestamp;

/**
 *  Encode self to an encoded url string
 *
 *  @return Returns the encoded NSString
 */
- (NSString *)urlEncode DEPRECATED_MSG_ATTRIBUTE("Use -URLEncode");

/**
 *  Encode self to an encoded url string
 *
 *  @return Returns the encoded NSString
 */
- (NSString *)URLEncode;

/**
 *  Returns a new string containing matching regular expressions replaced with the template string
 *
 *  @param regexString The regex string
 *  @param replacement The replacement string
 *
 *  @return Returns a new string containing matching regular expressions replaced with the template string
 */
- (NSString *)stringByReplacingWithRegex:(NSString *)regexString withString:(NSString *)replacement;

@end
