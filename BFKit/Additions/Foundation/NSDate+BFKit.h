//
//  NSDate+BFKit.h
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
 *  The simplified date structure
 */
struct BFDateInformation {
    /**
     *  Day of the year
     */
    NSInteger day;
    /**
     *  Month of the year
     */
	NSInteger month;
    /**
     *  Year
     */
	NSInteger year;
	
    /**
     *  Day of the week
     */
	NSInteger weekday;
	
    /**
     *  Minute of the day
     */
	NSInteger minute;
    /**
     *  Hour of the day
     */
	NSInteger hour;
    /**
     *  Second of the day
     */
	NSInteger second;
	
};
typedef struct BFDateInformation BFDateInformation;

/**
 *  This category add some useful methods to NSDate
 */
@interface NSDate (BFKit)

/**
 *  Create a NSDate with the yesterday date
 *
 *  @return Return a NSDate with the yesterday date
 */
+ (NSDate *)yesterday;

/**
 *  Get the month from today
 *
 *  @return Return the month
 */
+ (NSDate *)month;

/**
 *  Get the month from self
 *
 *  @return Return the month
 */
- (NSDate *)month;

/**
 *  Get the weekday number from self
 *
 *  @return Return weekday number
 *  [1 - Sunday]
 *  [2 - Monday]
 *  [3 - Tuerday]
 *  [4 - Wednesday]
 *  [5 - Thursday]
 *  [6 - Friday]
 *  [7 - Saturday]
 */
- (NSInteger)weekday;

/**
 *  Get the weekday as a localized string from self
 *
 *  @return Return weekday as a localized string
 *  [1 - Sunday]
 *  [2 - Monday]
 *  [3 - Tuerday]
 *  [4 - Wednesday]
 *  [5 - Thursday]
 *  [6 - Friday]
 *  [7 - Saturday]
 */
- (NSString *)dayFromWeekday;

/**
 *  Compare self with another date
 *
 *  @param anotherDate The another date to compare as NSDate
 *
 *  @return Return YES if is same day, NO if not
 */
- (BOOL)isSameDay:(NSDate *)anotherDate;

/**
 *  Get the months number between self and another date
 *
 *  @param toDate The another date
 *
 *  @return Return the months between the two dates
 */
- (NSInteger)monthsBetweenDate:(NSDate *)toDate;

/**
 *  Get the days number between self and another date
 *
 *  @param toDate The another date
 *
 *  @return Return the days between the two dates
 */
- (NSInteger)daysBetweenDate:(NSDate *)toDate;

/**
 *  Return if self is today
 *
 *  @return Return if self is today
 */
- (BOOL)isToday;

/**
 *  Add days to self
 *
 *  @param days The number of days to add
 *
 *  @return Return self by adding the gived days number
 */
- (NSDate *)dateByAddingDays:(NSUInteger)days;

/**
 *  Create an NSDate with other two NSDate objects.
 *  Taken from the first date: day, month and year.
 *  Taken from the second date: hours and minutes.
 *
 *  @param aDate The first date for date
 *  @param aTime The second date for time
 *
 *  @return Return the created NSDate
 */
+ (NSDate *)dateWithDatePart:(NSDate *)aDate
                 andTimePart:(NSDate *)aTime;

/**
 *  Get the month string from self
 *
 *  @return Return the month string
 */
- (NSString *)monthString;

/**
 *  Get the year string from self
 *
 *  @return Return the year string
 */
- (NSString *)yearString;

/**
 *  Get the month as a localized string from the given month number
 *
 *  @param month The month to be converted in string
 *  [1 - January]
 *  [2 - February]
 *  [3 - March]
 *  [4 - April]
 *  [5 - May]
 *  [6 - June]
 *  [7 - July]
 *  [8 - August]
 *  [9 - September]
 *  [10 - October]
 *  [11 - November]
 *  [12 - December]
 *
 *  @return Return the given month as a localized string
 */
+ (NSString *)monthStringWithMonthNumber:(NSInteger)month;

/**
 *  Get self as a BFDateInformation structure
 *
 *  @return Return self as a BFDateInformation structure
 */
- (BFDateInformation)dateInformation;

/**
 *  Get self as a BFDateInformation structure with a given time zone
 *
 *  @return Return self as a BFDateInformation structure with a given time zone
 */
- (BFDateInformation)dateInformationWithTimeZone:(NSTimeZone *)timezone;

/**
 *  Return a date from a given BFDateInformation structure
 *
 *  @param info The BFDateInformation to be converted
 *
 *  @return Return a NSDate from a given BFDateInformation structure
 */
+ (NSDate *)dateFromDateInformation:(BFDateInformation)info;

/**
 *  Return a date from a given BFDateInformation structure with a given time zone
 *
 *  @param info The BFDateInformation to be converted
 *
 *  @return Return a NSDate from a given BFDateInformation structure with a given time zone
 */
+ (NSDate *)dateFromDateInformation:(BFDateInformation)info
                           timeZone:(NSTimeZone *)timezone;

/**
 *  Get the given BFDateInformation structure as a formatted string
 *  Default dateSeparator = "/" and usFormat to NO
 *
 *  @param info The BFDateInformation to be formatted
 *
 *  @return Return a NSString in the following format:
 *  D/M/Y H:M:S
 *  Example: 15/10/2013 10:38:43
 */
+ (NSString *)dateInformationDescriptionWithInformation:(BFDateInformation)info;

/**
 *  Get the given BFDateInformation structure as a formatted string
 *
 *  @param info          The BFDateInformation to be formatted
 *  @param dateSeparator The string to be used as date separator
 *  @param usFormat       Set if the timestamp is in US format or not
 *
 *  @return Return a NSString in the following format (dateSeparator = "/" and usFormat to NO):
 *  D/M/Y H:M:S
 *  Example: 15/10/2013 10:38:43
 */
+ (NSString *)dateInformationDescriptionWithInformation:(BFDateInformation)info dateSeparator:(NSString *)dateSeparator usFormat:(BOOL)usFormat;

@end
