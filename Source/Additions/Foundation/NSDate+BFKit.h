//
//  NSDate+BFKit.h
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

/**
 *  The simplified date structure
 */
struct BFDateInformation {
    /**
     *  Year
     */
    NSInteger year;
    /**
     *  Month of the year
     */
    NSInteger month;
    /**
     *  Day of the month
     */
    NSInteger day;
    
	
    /**
     *  Day of the week
     */
	NSInteger weekday;
	
    /**
     *  Hour of the day
     */
    NSInteger hour;
    /**
     *  Minute of the hour
     */
    NSInteger minute;
    /**
     *  Second of the minute
     */
	NSInteger second;
    /**
     *  Nanosecond of the second
     */
    NSInteger nanosecond;
	
};
typedef struct BFDateInformation BFDateInformation;

/**
 *  This category adds some useful methods to NSDate
 */
@interface NSDate (BFKit)

/**
 *  Create a NSDate with the yesterday date
 *
 *  @return Returns a NSDate with the yesterday date
 */
+ (NSDate * _Nonnull)yesterday;

/**
 *  Get the month from today
 *
 *  @return Returns the month
 */
+ (NSDate * _Nonnull)month;

/**
 *  Get the month from self
 *
 *  @return Returns the month
 */
- (NSDate * _Nonnull)month;

/**
 *  Get the weekday number from self
 *
 *  @return Returns weekday number
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
 *  @return Returns weekday as a localized string
 *  [1 - Sunday]
 *  [2 - Monday]
 *  [3 - Tuerday]
 *  [4 - Wednesday]
 *  [5 - Thursday]
 *  [6 - Friday]
 *  [7 - Saturday]
 */
- (NSString * _Nonnull)dayFromWeekday;

/**
 *  Compare self with another date
 *
 *  @param anotherDate The another date to compare as NSDate
 *
 *  @return Returns YES if is same day, NO if not
 */
- (BOOL)isSameDay:(NSDate * _Nonnull)anotherDate;

/**
 *  Get the months number between self and another date
 *
 *  @param toDate The another date
 *
 *  @return Returns the months between the two dates
 */
- (NSInteger)monthsBetweenDate:(NSDate * _Nonnull)toDate;

/**
 *  Get the days number between self and another date
 *
 *  @param toDate The another date
 *
 *  @return Returns the days between the two dates
 */
- (NSInteger)daysBetweenDate:(NSDate * _Nonnull)toDate;

/**
 *  Returns if self is today
 *
 *  @return Returns if self is today
 */
- (BOOL)isToday;

/**
 *  Add days to self
 *
 *  @param days The number of days to add
 *
 *  @return Returns self by adding the gived days number
 */
- (NSDate * _Nonnull)dateByAddingDays:(NSUInteger)days;

/**
 *  Create an NSDate with other two NSDate objects.
 *  Taken from the first date: day, month and year.
 *  Taken from the second date: hours and minutes.
 *
 *  @param aDate The first date for date
 *  @param aTime The second date for time
 *
 *  @return Returns the created NSDate
 */
+ (NSDate * _Nonnull)dateWithDatePart:(NSDate * _Nonnull)aDate
                          andTimePart:(NSDate * _Nonnull)aTime;

/**
 *  Get the month string from self
 *
 *  @return Returns the month string
 */
- (NSString * _Nonnull)monthString;

/**
 *  Get the year string from self
 *
 *  @return Returns the year string
 */
- (NSString * _Nonnull)yearString;

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
 *  @return Returns the given month as a localized string
 */
+ (NSString * _Nonnull)monthStringWithMonthNumber:(NSInteger)month;

/**
 *  Get self as a BFDateInformation structure
 *
 *  @return Returns self as a BFDateInformation structure
 */
- (BFDateInformation)dateInformation;

/**
 *  Get self as a BFDateInformation structure with a given time zone
 *
 *  @param timezone The timezone
 *
 *  @return Returns self as a BFDateInformation structure with a given time zone
 */
- (BFDateInformation)dateInformationWithTimeZone:(NSTimeZone * _Nonnull)timezone;

/**
 *  Returns a date from a given BFDateInformation structure
 *
 *  @param info The BFDateInformation to be converted
 *
 *  @return Returns a NSDate from a given BFDateInformation structure
 */
+ (NSDate * _Nonnull)dateFromDateInformation:(BFDateInformation)info;

/**
 *  Returns a date from a given BFDateInformation structure with a given time zone
 *
 *  @param info     The BFDateInformation to be converted
 *  @param timezone The timezone
 *
 *  @return Returns a NSDate from a given BFDateInformation structure with a given time zone
 */
+ (NSDate * _Nonnull)dateFromDateInformation:(BFDateInformation)info
                                    timeZone:(NSTimeZone * _Nonnull)timezone;

/**
 *  Get the given BFDateInformation structure as a formatted string
 *  Default dateSeparator = "/" and usFormat to NO
 *
 *  @param info The BFDateInformation to be formatted
 *
 *  @return Returns a NSString in the following format:
 *  D/M/Y H:M:S
 *  Example: 15/10/2013 10:38:43
 */
+ (NSString * _Nonnull)dateInformationDescriptionWithInformation:(BFDateInformation)info;

/**
 *  Get the given BFDateInformation structure as a formatted string
 *
 *  @param info          The BFDateInformation to be formatted
 *  @param dateSeparator The string to be used as date separator
 *  @param usFormat      Set if the timestamp is in US format or not
 *  @param nanosecond    Set if the timestamp has to have the nanosecond
 *
 *  @return Returns a NSString in the following format (dateSeparator = "/", usFormat to false and nanosecond to false). D/M/Y H:M:S. Example: 15/10/2013 10:38:43
 *  D/M/Y H:M:S
 *  Example: 15/10/2013 10:38:43
 */
+ (NSString * _Nonnull)dateInformationDescriptionWithInformation:(BFDateInformation)info
                                                   dateSeparator:(NSString * _Nonnull)dateSeparator
                                                        usFormat:(BOOL)usFormat
                                                      nanosecond:(BOOL)nanosecond;

/**
 *  Returns date with the year, month and day only
 *
 *  @return Date after removing all components but not year, month and day
 */
- (NSDate * _Nonnull)shortDate;

@end
