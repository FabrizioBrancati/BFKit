//
//  NSData+BFKit.m
//  BFKit
//
//  Created by Fabio Nisci on 25/08/15.
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

#import "NSData+BFKit.h"

@implementation NSData (BFKit)

-(NSString *)HEXstring{
	const unsigned char *dataBuffer = (const unsigned char *)[self bytes];
	if (!dataBuffer)
		return [NSString string];
	NSMutableString *hexString  = [NSMutableString stringWithCapacity:([self length] * 2)];
	for (NSInteger i = 0; i < [self length]; ++i)
		[hexString appendString:[NSString stringWithFormat:@"%02lx ", (unsigned long)dataBuffer[i]]];
	return [NSString stringWithString:hexString];
}

- (NSString *)HEXstringRapresentation{
	return [[self HEXstring]stringFromHEXstring];
}

@end
