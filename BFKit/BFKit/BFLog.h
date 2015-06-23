//
//  BFLog.h
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
 *  Exented NSLog
 *
 *  @param file         File
 *  @param lineNumber   Line number
 *  @param functionName Function name
 *  @param format       Format
 */
void ExtendNSLog(const char *file, int lineNumber, const char *functionName, NSString *format, ...);

/**
 *  This class add some useful methods to NSLog
 */
@interface BFLog : NSObject

/**
 *  BFLog only if in DEBUG mode
 */
#ifdef DEBUG
    /**
     *  Exented NSLog
     */
    #define BFLog(args ...) ExtendNSLog(__FILE__, __LINE__, __PRETTY_FUNCTION__, args);
    /**
     *  Log string
     */
    #define BFLogString [BFLog logString]
    /**
     *  Detailed log string
     */
    #define BFLogDetailedString [BFLog logDetailedString]
    /**
     *  Clear the log string
     */
    #define BFLogClear [BFLog clearLog]
#else
    #define BFLog(args ...)
    #define BFLogString
    #define BFLogDetailedString
    #define BFLogClear
#endif

/**
 *  Clear the log string.
 *  You can call it with the BFLogClear macro   
 */
+ (void)clearLog;

/**
 *  Get the log string.
 *  You can call it with the BFLogString macro
 *
 *  @return Return the log string
 */
+ (NSString *)logString;

/**
 *  Get the detailed log string.
 *  You can call it with the BFLogDetailedString macro
 *
 *  @return Return the detailed log string
 */
+ (NSString *)detailedLogString;

/**
 *  Get the detailed log string.
 *  You can call it with the BFLogDetailedString macro
 *
 *  @return Return the detailed log string
 */
+ (NSString *)logDetailedString DEPRECATED_MSG_ATTRIBUTE("Use -detailedLogString");

@end
