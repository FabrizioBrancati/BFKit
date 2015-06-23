//
//  BFLog.m
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

#import "BFLog.h"
#import "NSDate+BFKit.h"

static NSString *logString = @"";
static NSString *logDetailedString = @"";

@implementation BFLog

void ExtendNSLog(const char *file, int lineNumber, const char *functionName, NSString *format, ...)
{
    va_list ap;
    
    va_start(ap, format);
    
    if(![format hasSuffix: @"\n"])
    {
        format = [format stringByAppendingString: @"\n"];
    }
    
    NSString *body = [[NSString alloc] initWithFormat:format arguments:ap];
    
    va_end(ap);
    
    NSString *fileName = [[NSString stringWithUTF8String:file] lastPathComponent].stringByDeletingPathExtension;
    NSString *log = [NSString stringWithFormat:@"(%s) (%s:%d) %s", functionName, [fileName UTF8String], lineNumber, [body UTF8String]];
    fprintf(stderr, "%s (%s) (%s:%d) %s", [[NSDate dateInformationDescriptionWithInformation:[[NSDate date] dateInformation] dateSeparator:@"-" usFormat:YES] UTF8String], functionName, [fileName UTF8String], lineNumber, [body UTF8String]);
    
    if([logString isEqualToString:@""])
        logString = body;
    else
        logString = [NSString stringWithFormat:@"%@%@", logString, body];
    
    if([logDetailedString isEqualToString:@""])
        logDetailedString = log;
    else
        logDetailedString = [NSString stringWithFormat:@"%@%@", logDetailedString, log];
}

+ (NSString *)logString
{
    return logString;
}

+ (NSString *)detailedLogString
{
    return logDetailedString;
}

+ (NSString *)logDetailedString
{
    return logDetailedString;
}

+ (void)clearLog
{
    logString = @"";
    logDetailedString = @"";
}

@end
