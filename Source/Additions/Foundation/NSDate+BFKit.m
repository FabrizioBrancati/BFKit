//
//  NSDate+BFKit.m
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

#import "NSDate+BFKit.h"
#import "BFApp.h"

@implementation NSDate (BFKit)

+ (NSDate * _Nonnull)yesterday {
	BFDateInformation inf = [[NSDate date] dateInformation];
	inf.day--;
	return [self dateFromDateInformation:inf];
}

+ (NSDate * _Nonnull)month {
    return [[NSDate date] month];
}

- (NSDate * _Nonnull)month {
	NSCalendar *calendar = [NSCalendar autoupdatingCurrentCalendar];
	NSDateComponents *comp = [calendar components:(NSCalendarUnitYear | NSCalendarUnitMonth) fromDate:self];
	[comp setDay:1];
    
    return [calendar dateFromComponents:comp];
}

- (NSInteger)weekday {
	NSCalendar *calendar = [NSCalendar autoupdatingCurrentCalendar];
	NSDateComponents *comps = [calendar components:(NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear | NSCalendarUnitWeekday) fromDate:self];
    
	return [comps weekday];
}

- (NSString * _Nonnull)dayFromWeekday {
    switch ([self weekday]) {
        case 1:
            return BFLocalizedString(@"SUNDAY", @"");
            break;
        case 2:
            return BFLocalizedString(@"MONDAY", @"");
            break;
        case 3:
            return BFLocalizedString(@"TUESDAY", @"");
            break;
        case 4:
            return BFLocalizedString(@"WEDNESDAY", @"");
            break;
        case 5:
            return BFLocalizedString(@"THURSDAY", @"");
            break;
        case 6:
            return BFLocalizedString(@"FRIDAY", @"");
            break;
        case 7:
            return BFLocalizedString(@"SATURDAY", @"");
            break;
        default:
            return @"";
            break;
    }
}

- (NSDate * _Nonnull)timelessDate  {
	NSCalendar *calendar = [NSCalendar autoupdatingCurrentCalendar];
	NSDateComponents *comp = [calendar components:(NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay) fromDate:self];
    
	return [calendar dateFromComponents:comp];
}

- (NSDate * _Nonnull)monthlessDate  {
	NSCalendar *calendar = [NSCalendar autoupdatingCurrentCalendar];
	NSDateComponents *comp = [calendar components:(NSCalendarUnitYear | NSCalendarUnitMonth) fromDate:self];
	
    return [calendar dateFromComponents:comp];
}

- (BOOL)isSameDay:(NSDate * _Nonnull)anotherDate {
	NSCalendar* calendar = [NSCalendar currentCalendar];
	NSDateComponents* components1 = [calendar components:(NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay) fromDate:self];
	NSDateComponents* components2 = [calendar components:(NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay) fromDate:anotherDate];
    
	return ([components1 year] == [components2 year] && [components1 month] == [components2 month] && [components1 day] == [components2 day]);
}

- (NSInteger)monthsBetweenDate:(NSDate * _Nonnull)toDate {
    NSCalendar *calendar = [NSCalendar autoupdatingCurrentCalendar];
    
    NSDateComponents *components = [calendar components:NSCalendarUnitMonth fromDate:[self monthlessDate] toDate:[toDate monthlessDate] options:0];
    
    return abs((int)[components month]);
}

- (NSInteger)daysBetweenDate:(NSDate * _Nonnull)anotherDate {
    NSTimeInterval time = [self timeIntervalSinceDate:anotherDate];
    return (NSInteger)fabs(time / 60 / 60 / 24);
}

- (BOOL)isToday {
	return [self isSameDay:[NSDate date]];
}

- (NSDate * _Nonnull)dateByAddingDays:(NSUInteger)days  {
    return [self dateByAddingTimeInterval:days * 24 * 60 * 60];
}

+ (NSDate * _Nonnull)dateWithDatePart:(NSDate *)aDate andTimePart:(NSDate *)aTime {
	NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
	[dateFormatter setDateFormat:@"dd/MM/yyyy"];
	NSString *datePortion = [dateFormatter stringFromDate:aDate];
	
	[dateFormatter setDateFormat:@"HH:mm"];
	NSString *timePortion = [dateFormatter stringFromDate:aTime];
	
	[dateFormatter setDateFormat:@"dd/MM/yyyy HH:mm"];
	NSString *dateTime = [NSString stringWithFormat:@"%@ %@",datePortion,timePortion];
    
	return [dateFormatter dateFromString:dateTime];
}

- (NSString * _Nonnull)monthString {
	NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];	
	[dateFormatter setDateFormat:@"MMMM"];
    
	return [dateFormatter stringFromDate:self];
}

+ (NSString * _Nonnull)monthStringWithMonthNumber:(NSInteger)month {
    switch (month) {
        case 1:
            return BFLocalizedString(@"JANUARY", @"");
            break;
        case 2:
            return BFLocalizedString(@"FEBRUARY", @"");
            break;
        case 3:
            return BFLocalizedString(@"MARCH", @"");
            break;
        case 4:
            return BFLocalizedString(@"APRIL", @"");
            break;
        case 5:
            return BFLocalizedString(@"MAY", @"");
            break;
        case 6:
            return BFLocalizedString(@"JUNE", @"");
            break;
        case 7:
            return BFLocalizedString(@"JULY", @"");
            break;
        case 8:
            return BFLocalizedString(@"AUGUST", @"");
            break;
        case 9:
            return BFLocalizedString(@"SEPTEMBER", @"");
            break;
        case 10:
            return BFLocalizedString(@"OCTOBER", @"");
            break;
        case 11:
            return BFLocalizedString(@"NOVEMBER", @"");
            break;
        case 12:
            return BFLocalizedString(@"DECEMBER", @"");
            break;
        default:
            return @"";
            break;
    }
}

- (NSString * _Nonnull)yearString {
	NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];	
	[dateFormatter setDateFormat:@"yyyy"];
    
	return [dateFormatter stringFromDate:self];
}

- (BFDateInformation)dateInformation {
    return [self dateInformationWithTimeZone:[NSTimeZone systemTimeZone]];
}

- (BFDateInformation)dateInformationWithTimeZone:(NSTimeZone * _Nonnull)timezone {
	BFDateInformation info;
	
	NSCalendar *calendar = [NSCalendar autoupdatingCurrentCalendar];
	[calendar setTimeZone:timezone];
	NSDateComponents *comp = [calendar components:(NSCalendarUnitMonth | NSCalendarUnitMinute | NSCalendarUnitYear | NSCalendarUnitDay | NSCalendarUnitWeekday | NSCalendarUnitHour | NSCalendarUnitSecond | NSCalendarUnitNanosecond) fromDate:self];
	info.day = [comp day];
	info.month = [comp month];
	info.year = [comp year];
	
	info.hour = [comp hour];
	info.minute = [comp minute];
	info.second = [comp second];
    info.nanosecond = [comp nanosecond];
    
	info.weekday = [comp weekday];
	
	return info;	
}

+ (NSDate * _Nonnull)dateFromDateInformation:(BFDateInformation)info {
    return [NSDate dateFromDateInformation:info timeZone:[NSTimeZone systemTimeZone]];
}

+ (NSDate * _Nonnull)dateFromDateInformation:(BFDateInformation)info timeZone:(NSTimeZone * _Nonnull)timezone {
	NSCalendar *calendar = [NSCalendar autoupdatingCurrentCalendar];
	[calendar setTimeZone:timezone];
	NSDateComponents *comp = [calendar components:(NSCalendarUnitYear | NSCalendarUnitMonth) fromDate:[NSDate date]];
	
	[comp setDay:info.day];
	[comp setMonth:info.month];
	[comp setYear:info.year];
	[comp setHour:info.hour];
	[comp setMinute:info.minute];
	[comp setSecond:info.second];
    [comp setNanosecond:info.nanosecond];
    
	[comp setTimeZone:timezone];
	
	return [calendar dateFromComponents:comp];
}

+ (NSString * _Nonnull)dateInformationDescriptionWithInformation:(BFDateInformation)info {
    return [NSDate dateInformationDescriptionWithInformation:info dateSeparator:@"/" usFormat:NO nanosecond:NO];
}

+ (NSString * _Nonnull)dateInformationDescriptionWithInformation:(BFDateInformation)info dateSeparator:(NSString *)dateSeparator usFormat:(BOOL)usFormat nanosecond:(BOOL)nanosecond {
    NSString *description;
    
    if (usFormat) {
        description = [NSString stringWithFormat:@"%04li%@%02li%@%02li %02li:%02li:%02li", (long)info.year, dateSeparator, (long)info.month, dateSeparator, (long)info.day, (long)info.hour, (long)info.minute, (long)info.second];
    } else {
        description = [NSString stringWithFormat:@"%02li%@%02li%@%04li %02li:%02li:%02li", (long)info.month, dateSeparator, (long)info.day, dateSeparator, (long)info.year, (long)info.hour, (long)info.minute, (long)info.second];
    }
    
    if (nanosecond) {
        description = [description stringByAppendingString:[NSString stringWithFormat:@":%03li", (long)info.nanosecond / 10000000]];
    }
    
    return description;
}

- (NSDate * _Nonnull)shortDate {
    NSCalendar *calendar = [NSCalendar autoupdatingCurrentCalendar];
    
    NSDateComponents *dateComponents = [calendar components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:self];
    
    return [calendar dateFromComponents:dateComponents];
}

@end
