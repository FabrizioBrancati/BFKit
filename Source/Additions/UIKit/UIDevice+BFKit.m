//
//  UIDevice+BFKit.m
//  BFKit
//
//  The MIT License (MIT)
//
//  Copyright (c) 2014 - 2018 Fabrizio Brancati.
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

#import "UIDevice+BFKit.h"
#import "UIScreen+BFKit.h"
#import "NSString+BFKit.h"
#import "NSData+BFKit.h"
#include <sys/types.h>
#include <sys/sysctl.h>
#include <sys/socket.h>
#include <net/if.h>
#include <net/if_dl.h>

static NSString * const BFUniqueIdentifierDefaultsKey = @"BFUniqueIdentifier";
static NSString * const BFUserUniqueIdentifierDefaultsKey = @"BFUserUniqueIdentifier";

@implementation UIDevice (BFKit)

+ (NSString * _Nonnull)devicePlatform {
    size_t size;
    sysctlbyname("hw.machine", NULL, &size, NULL, 0);
    char *machine = malloc(size);
    sysctlbyname("hw.machine", machine, &size, NULL, 0);
    NSString *platform = [NSString stringWithUTF8String:machine];
    free(machine);
    return platform;
}

+ (NSString * _Nonnull)devicePlatformString {
    NSString *platform = [self devicePlatform];
    // iPhone
    if ([platform isEqualToString:@"iPhone1,1"])    return @"iPhone 2G";
    if ([platform isEqualToString:@"iPhone1,2"])    return @"iPhone 3G";
    if ([platform isEqualToString:@"iPhone2,1"])    return @"iPhone 3GS";
    if ([platform isEqualToString:@"iPhone3,1"])    return @"iPhone 4";
    if ([platform isEqualToString:@"iPhone3,1"])    return @"iPhone 4";
    if ([platform isEqualToString:@"iPhone3,3"])    return @"iPhone 4";
    if ([platform isEqualToString:@"iPhone4,1"])    return @"iPhone 4S";
    if ([platform isEqualToString:@"iPhone5,1"])    return @"iPhone 5";
    if ([platform isEqualToString:@"iPhone5,2"])    return @"iPhone 5";
    if ([platform isEqualToString:@"iPhone5,3"])    return @"iPhone 5c";
    if ([platform isEqualToString:@"iPhone5,4"])    return @"iPhone 5c";
    if ([platform isEqualToString:@"iPhone6,1"])    return @"iPhone 5s";
    if ([platform isEqualToString:@"iPhone6,2"])    return @"iPhone 5s";
    if ([platform isEqualToString:@"iPhone7,1"])    return @"iPhone 6 Plus";
    if ([platform isEqualToString:@"iPhone7,2"])    return @"iPhone 6";
    if ([platform isEqualToString:@"iPhone8,1"])    return @"iPhone 6s";
    if ([platform isEqualToString:@"iPhone8,2"])    return @"iPhone 6s Plus";
    if ([platform isEqualToString:@"iPhone8,4"])    return @"iPhone SE";
    if ([platform isEqualToString:@"iPhone9,1"])    return @"iPhone 7";
    if ([platform isEqualToString:@"iPhone9,3"])    return @"iPhone 7";
    if ([platform isEqualToString:@"iPhone9,2"])    return @"iPhone 7 Plus";
    if ([platform isEqualToString:@"iPhone9,4"])    return @"iPhone 7 Plus";
    if ([platform isEqualToString:@"iPhone10,1"])   return @"iPhone 8";
    if ([platform isEqualToString:@"iPhone10,4"])   return @"iPhone 8";
    if ([platform isEqualToString:@"iPhone10,2"])   return @"iPhone 8 Plus";
    if ([platform isEqualToString:@"iPhone10,5"])   return @"iPhone 8 Plus";
    if ([platform isEqualToString:@"iPhone10,3"])   return @"iPhone X";
    if ([platform isEqualToString:@"iPhone10,6"])   return @"iPhone X";
    // iPod
    if ([platform isEqualToString:@"iPod1,1"])      return @"iPod Touch 1G";
    if ([platform isEqualToString:@"iPod2,1"])      return @"iPod Touch 2G";
    if ([platform isEqualToString:@"iPod3,1"])      return @"iPod Touch 3G";
    if ([platform isEqualToString:@"iPod4,1"])      return @"iPod Touch 4G";
    if ([platform isEqualToString:@"iPod5,1"])      return @"iPod Touch 5G";
    if ([platform isEqualToString:@"iPod7,1"])      return @"iPod Touch 6G";
    // iPad
    if ([platform isEqualToString:@"iPad1,1"])      return @"iPad 1";
    if ([platform isEqualToString:@"iPad2,1"])      return @"iPad 2";
    if ([platform isEqualToString:@"iPad2,2"])      return @"iPad 2";
    if ([platform isEqualToString:@"iPad2,3"])      return @"iPad 2";
    if ([platform isEqualToString:@"iPad2,4"])      return @"iPad 2";
    if ([platform isEqualToString:@"iPad3,1"])      return @"iPad 3";
    if ([platform isEqualToString:@"iPad3,2"])      return @"iPad 3";
    if ([platform isEqualToString:@"iPad3,3"])      return @"iPad 3";
    if ([platform isEqualToString:@"iPad3,4"])      return @"iPad 4";
    if ([platform isEqualToString:@"iPad3,5"])      return @"iPad 4";
    if ([platform isEqualToString:@"iPad3,6"])      return @"iPad 4";
    if ([platform isEqualToString:@"iPad4,1"])      return @"iPad Air";
    if ([platform isEqualToString:@"iPad4,2"])      return @"iPad Air";
    if ([platform isEqualToString:@"iPad4,3"])      return @"iPad Air";
    if ([platform isEqualToString:@"iPad5,3"])      return @"iPad Air 2";
    if ([platform isEqualToString:@"iPad5,4"])      return @"iPad Air 2";
    // iPad mini
    if ([platform isEqualToString:@"iPad2,5"])      return @"iPad mini";
    if ([platform isEqualToString:@"iPad2,6"])      return @"iPad mini";
    if ([platform isEqualToString:@"iPad2,7"])      return @"iPad mini";
    if ([platform isEqualToString:@"iPad4,4"])      return @"iPad mini 2";
    if ([platform isEqualToString:@"iPad4,5"])      return @"iPad mini 2";
    if ([platform isEqualToString:@"iPad4,6"])      return @"iPad mini 2";
    if ([platform isEqualToString:@"iPad4,7"])      return @"iPad mini 3";
    if ([platform isEqualToString:@"iPad4,8"])      return @"iPad mini 3";
    if ([platform isEqualToString:@"iPad4,9"])      return @"iPad mini 3";
    if ([platform isEqualToString:@"iPad5,1"])      return @"iPad mini 4";
    if ([platform isEqualToString:@"iPad5,2"])      return @"iPad mini 4";
    // iPad Pro 9.7
    if ([platform isEqualToString:@"iPad6,3"])      return @"iPad Pro (9.7-inch)";
    if ([platform isEqualToString:@"iPad6,4"])      return @"iPad Pro (9.7-inch)";
    // iPad Pro 12.9
    if ([platform isEqualToString:@"iPad6,7"])      return @"iPad Pro (12.9-inch)";
    if ([platform isEqualToString:@"iPad6,8"])      return @"iPad Pro (12.9-inch)";
    // iPad (5th generation)
    if ([platform isEqualToString:@"iPad6,11"])      return @"iPad (5th generation)";
    if ([platform isEqualToString:@"iPad6,12"])      return @"iPad (5th generation)";
    // iPad Pro (12.9-inch, 2nd generation)
    if ([platform isEqualToString:@"iPad7,1"])      return @"iPad Pro (12.9-inch, 2nd generation)";
    if ([platform isEqualToString:@"iPad7,2"])      return @"iPad Pro (12.9-inch, 2nd generation)";
    // iPad Pro (10.5-inch)
    if ([platform isEqualToString:@"iPad7,3"])      return @"iPad Pro (10.5-inch)";
    if ([platform isEqualToString:@"iPad7,4"])      return @"iPad Pro (10.5-inch)";
    // Apple TV
    if ([platform isEqualToString:@"AppleTV2,1"])   return @"Apple TV (2nd generation)";
    if ([platform isEqualToString:@"AppleTV3,1"])   return @"Apple TV (3rd generation)";
    if ([platform isEqualToString:@"AppleTV3,2"])   return @"Apple TV (3rd generation)";
    if ([platform isEqualToString:@"AppleTV5,3"])   return @"Apple TV (4th generation)";
    if ([platform isEqualToString:@"AppleTV6,2"])   return @"Apple TV 4K";
    // Apple Watch
    if ([platform isEqualToString:@"Watch1,1"])     return @"Apple Watch (1st generation) 38mm";
    if ([platform isEqualToString:@"Watch1,2"])     return @"Apple Watch (1st generation) 42mm";
    if ([platform isEqualToString:@"Watch2,6"])     return @"Apple Watch Series 1 38mm";
    if ([platform isEqualToString:@"Watch2,7"])     return @"Apple Watch Series 1 42mm";
    if ([platform isEqualToString:@"Watch2,3"])     return @"Apple Watch Series 2 38mm";
    if ([platform isEqualToString:@"Watch2,4"])     return @"Apple Watch Series 2 42mm";
    if ([platform isEqualToString:@"Watch3,1"])     return @"Apple Watch Series 3 38mm";
    if ([platform isEqualToString:@"Watch3,2"])     return @"Apple Watch Series 3 42mm";
    if ([platform isEqualToString:@"Watch3,3"])     return @"Apple Watch Series 3 38mm";
    if ([platform isEqualToString:@"Watch3,4"])     return @"Apple Watch Series 3 42mm";
    // Simulator
    if ([platform isEqualToString:@"i386"])         return @"Simulator";
    if ([platform isEqualToString:@"x86_64"])       return @"Simulator";
    
    return platform;
}

+ (BOOL)isiPad {
    if ([[[self devicePlatform] substringToIndex:4] isEqualToString:@"iPad"]) {
        return YES;
    } else {
        return NO;
    }
}

+ (BOOL)isiPhone {
    if ([[[self devicePlatform] substringToIndex:6] isEqualToString:@"iPhone"]) {
        return YES;
    } else {
        return NO;
    }
}

+ (BOOL)isiPod {
    if ([[[self devicePlatform] substringToIndex:4] isEqualToString:@"iPod"]) {
        return YES;
    } else {
        return NO;
    }
}

+ (BOOL)isAppleTV {
    if ([[[self devicePlatform] substringToIndex:7] isEqualToString:@"AppleTV"]) {
        return YES;
    } else {
        return NO;
    }
}

+ (BOOL)isAppleWatch {
    if ([[[self devicePlatform] substringToIndex:5] isEqualToString:@"Watch"]) {
        return YES;
    } else {
        return NO;
    }
}

+ (BOOL)isSimulator {
    if ([[self devicePlatform] isEqualToString:@"i386"] || [[self devicePlatform] isEqualToString:@"x86_64"]) {
        return YES;
    } else {
        return NO;
    }
}

+ (BOOL)isJailbroken {
    #if !(TARGET_IPHONE_SIMULATOR)
        // Check 1 : existence of files that are common for jailbroken devices
        if ([[NSFileManager defaultManager] fileExistsAtPath:@"/Applications/Cydia.app"] ||
            [[NSFileManager defaultManager] fileExistsAtPath:@"/Library/MobileSubstrate/MobileSubstrate.dylib"] ||
            [[NSFileManager defaultManager] fileExistsAtPath:@"/bin/bash"] ||
            [[NSFileManager defaultManager] fileExistsAtPath:@"/usr/sbin/sshd"] ||
            [[NSFileManager defaultManager] fileExistsAtPath:@"/private/var/lib/apt/"] ||
            [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"cydia://package/com.example.package"]]) {
               return YES;
           }

           FILE *f = NULL ;
           if ((f = fopen("/bin/bash", "r")) ||
               (f = fopen("/Applications/Cydia.app", "r")) ||
               (f = fopen("/Library/MobileSubstrate/MobileSubstrate.dylib", "r")) ||
               (f = fopen("/usr/sbin/sshd", "r")) ||
               (f = fopen("/etc/apt", "r"))) {
               fclose(f);
               return YES;
           }
           fclose(f);
           // Check 2 : Reading and writing in system directories (sandbox violation)
           NSError *error;
           NSString *stringToBeWritten = @"Jailbreak Test.";
           [stringToBeWritten writeToFile:@"/private/jailbreak.txt" atomically:YES
                                 encoding:NSUTF8StringEncoding error:&error];
           if(error==nil){
               //Device is jailbroken
               return YES;
           } else {
               [[NSFileManager defaultManager] removeItemAtPath:@"/private/jailbreak.txt" error:nil];
           }
    #endif
    return NO;
}

+ (BOOL)isRetina {
    return [UIScreen isRetina];
}

+ (BOOL)isRetinaHD {
    return [UIScreen isRetinaHD];
}

+ (NSInteger)iOSVersion {
    return [[[UIDevice currentDevice] systemVersion] integerValue];
}

+ (NSUInteger)getSysInfo:(uint)typeSpecifier {
    size_t size = sizeof(int);
    int results;
    int mib[2] = {CTL_HW, typeSpecifier};
    sysctl(mib, 2, &results, &size, NULL, 0);
    return (NSUInteger) results;
}

+ (NSUInteger)cpuFrequency {
    return [self getSysInfo:HW_CPU_FREQ];
}

+ (NSUInteger)busFrequency {
    return [self getSysInfo:HW_TB_FREQ];
}

+ (NSUInteger)ramSize {
    return [self getSysInfo:HW_MEMSIZE];
}

+ (NSUInteger)cpuNumber {
    return [self getSysInfo:HW_NCPU];
}

+ (NSUInteger)totalMemory {
    return [self getSysInfo:HW_PHYSMEM];
}

+ (NSUInteger)userMemory {
    return [self getSysInfo:HW_USERMEM];
}

+ (NSNumber * _Nonnull)totalDiskSpace {
    NSDictionary *attributes = [[NSFileManager defaultManager] attributesOfFileSystemForPath:NSHomeDirectory() error:nil];
    return [attributes objectForKey:NSFileSystemSize];
}

+ (NSNumber * _Nonnull)freeDiskSpace {
    NSDictionary *attributes = [[NSFileManager defaultManager] attributesOfFileSystemForPath:NSHomeDirectory() error:nil];
    return [attributes objectForKey:NSFileSystemFreeSize];
}

+ (NSString * _Nonnull)macAddress {
    // In iOS 7 and later, if you ask for the MAC address of an iOS device, the system returns the value 02:00:00:00:00:00
    /*int                 mib[6];
    size_t              len;
    char                *buf;
    unsigned char       *ptr;
    struct if_msghdr    *ifm;
    struct sockaddr_dl  *sdl;
    
    mib[0] = CTL_NET;
    mib[1] = AF_ROUTE;
    mib[2] = 0;
    mib[3] = AF_LINK;
    mib[4] = NET_RT_IFLIST;
    
    if ((mib[5] = if_nametoindex("en0")) == 0) {
        printf("Error: if_nametoindex error\n");
        return NULL;
    }
    
    if (sysctl(mib, 6, NULL, &len, NULL, 0) < 0) {
        printf("Error: sysctl, take 1\n");
        return NULL;
    }
    
    if ((buf = malloc(len)) == NULL) {
        printf("Could not allocate memory. Error!\n");
        return NULL;
    }
    
    if (sysctl(mib, 6, buf, &len, NULL, 0) < 0) {
        printf("Error: sysctl, take 2");
        return NULL;
    }
    
    ifm = (struct if_msghdr *)buf;
    sdl = (struct sockaddr_dl *)(ifm + 1);
    ptr = (unsigned char *)LLADDR(sdl);
    NSString *outstring = [NSString stringWithFormat:@"%02X:%02X:%02X:%02X:%02X:%02X",
                           *ptr, *(ptr+1), *(ptr+2), *(ptr+3), *(ptr+4), *(ptr+5)];
    free(buf);
    
    return outstring;*/
    return @"02:00:00:00:00:00";
}

+ (NSString * _Nonnull)uniqueIdentifier {
    NSString *UUID;
    if ([[UIDevice currentDevice] respondsToSelector:@selector(identifierForVendor)]) {
        UUID = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        UUID = [defaults stringForKey:BFUniqueIdentifierDefaultsKey];
        if (!UUID) {
            UUID = [NSString generateUUID];
            [defaults setObject:UUID forKey:BFUniqueIdentifierDefaultsKey];
            [defaults synchronize];
        }
    }
    return UUID;
}

+ (void)updateUniqueIdentifier:(NSObject * _Nonnull)uniqueIdentifier block:(void (^ _Nullable)(BOOL isValid, BOOL hasToUpdateUniqueIdentifier, NSString * _Nullable oldUUID))block {
    NSString *userUUID, *savedUUID = nil;
    BOOL isValid = false, hasToUpdate = false;
    
    if ([uniqueIdentifier isKindOfClass:[NSData class]]) {
        userUUID = [(NSData *)uniqueIdentifier convertUUIDToString];
    } else if ([uniqueIdentifier isKindOfClass:[NSString class]]) {
        userUUID = [(NSString *)uniqueIdentifier convertToAPNSUUID];
    }
    
    isValid = [userUUID isUUIDForAPNS];
    
    if (isValid) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        savedUUID = [defaults stringForKey:BFUserUniqueIdentifierDefaultsKey];
        if (!savedUUID || ![savedUUID isEqualToString:userUUID]) {
            [defaults setObject:userUUID forKey:BFUserUniqueIdentifierDefaultsKey];
            [defaults synchronize];
            
            hasToUpdate = true;
        }
    }
    
    block(isValid, hasToUpdate, savedUUID);
}

@end
