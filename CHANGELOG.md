Changelog
=========

---

All notable changes to this project will be documented in this file.<br>
`BFKit` adheres to [Semantic Versioning](http://semver.org/).

---

### 3.x Releases
- `3.0.x` Releases - [3.0.0](#300)

### 2.x Releases
- `2.0.x` Releases - [2.0.0](#200)

### 1.x Releases
- `1.11.x` Releases - [1.11.0](#1110) | [1.11.1](#1111)
- `1.10.x` Releases - [1.10.0](#1100)
- `1.9.x` Releases - [1.9.0](#190) | [1.9.1](#191) | [1.9.2](#192) | [1.9.3](#193)
- `1.8.x` Releases - [1.8.0](#180)
- `1.7.x` Releases - [1.7.0](#170) | [1.7.1](#171)
- `1.6.x` Releases - [1.6.0](#160) | [1.6.1](#161) | [1.6.2](#162) | [1.6.3](#163) | [1.6.4](#164) | [1.6.5](#165) | [1.6.6](#166) | [1.6.7](#167) | [1.6.8](#168)
- `1.5.x` Releases - [1.5.0](#150) | [1.5.1](#151) | [1.5.2](#152) | [1.5.3](#153)
- `1.4.x` Releases - [1.4.0](#140)
- `1.3.x` Releases - [1.3.0](#130) | [1.3.1](#131) | [1.3.2](#132)
- `1.2.x` Releases - [1.2.0](#120)
- `1.1.x` Releases - [1.1.0](#110)
- `1.0.x` Releases - [1.0.0](#100)

---

## [3.0.0](https://github.com/FabrizioBrancati/BFKit/releases/tag/v3.0.0)
### 19 Mar 2020
#### Removed
- Renamed UIWebView additions due to Apple deprecation [#41](https://github.com/FabrizioBrancati/BFKit/issues/41)


## [2.0.0](https://github.com/FabrizioBrancati/BFKit/releases/tag/v2.0.0)
### 16 Oct 2019
#### Changed
- Renamed `isValid` to `isObjectValid` to avoid conflicts with other libraries [#39](https://github.com/FabrizioBrancati/BFKit/issues/39)
- Renamed `DegreesToRadians` to `BFDegreesToRadians` to avoid conflicts with other libraries [#37](https://github.com/FabrizioBrancati/BFKit/pull/37)
- Renamed `RadiansToDegrees` to `BFRadiansToDegrees` to avoid conflicts with other libraries [#37](https://github.com/FabrizioBrancati/BFKit/pull/37)

#### Added
- Added support to Objective-C++ projects [#37](https://github.com/FabrizioBrancati/BFKit/pull/37)

Thanks to [@ramonvic](https://github.com/ramonvic) and [tony-hoang999](https://github.com/tony-hoang999) for this release


## [1.11.1](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.11.1)
### 16 Oct 2019
#### Added
- Added support to Xcode 11.1

#### Fixed
- Fixed a typo in `onFirstStartForVersion:block:` that prevented the method to correctly work

Thanks to [@ramonvic](https://github.com/ramonvic) for this release


## [1.11.0](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.11.0)
### 26 Dec 2017
#### Added
- Added `isJailbroken` to UIDevice category to check if the device is Jailbroken [#33](https://github.com/FabrizioBrancati/BFKit/pull/33)
- Added missing devices [#33](https://github.com/FabrizioBrancati/BFKit/pull/29)

Thanks to [@Vanson](https://github.com/Vanson) for this release


## [1.10.0](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.10.0)
### 12 Jun 2017
#### Added
- Added Traditional Turkish (tr-TR) Localization [#28](https://github.com/FabrizioBrancati/BFKit/pull/28)
- Added support to Application Extensions [#29](https://github.com/FabrizioBrancati/BFKit/pull/29)

Thanks to [@durul](https://github.com/durul) and [@insanoid](https://github.com/insanoid) for this release


## [1.9.3](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.9.3)
### 11 Dec 2016
#### Fixed
- Fixed a crash in UIDevice category [#27](https://github.com/FabrizioBrancati/BFKit/pull/27)
- Fixed a bug on `imageAtRect` in UIImage category [#26](https://github.com/FabrizioBrancati/BFKit/pull/26)

Thanks to [@durul](https://github.com/durul) and for this release


## [1.9.2](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.9.2)
### 14 Jul 2016
#### Improved
- Adjusting pt-BR typo [#25](https://github.com/FabrizioBrancati/BFKit/pull/25)

#### Fixed
- Fixed a bug with Carthage

Thanks to [@gabrielPeart](https://github.com/gabrielPeart) for this release


## [1.9.1](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.9.1)
### 08 May 2016
#### Added
- Added missing devices
- Added Swedish translation [#24](https://github.com/FabrizioBrancati/BFKit/pull/24)

#### Improved
- Minor enhancements & bug fix

Thanks to [@pontus-andersson](https://github.com/pontus-andersson) for this release


## [1.9.0](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.9.0)
### 01 Feb 2016
#### Added
- Added [CONTRIBUTING.md](https://github.com/FabrizioBrancati/BFKit/blob/master/CONTRIBUTING.md) file
- Added BFCryptor class to encrypt/decrypt NSString and NSData
- Added NSData category with `convertToUTF8String` & `convertToASCIIString` methods to convert NSData to NSString and `convertUUIDToString` method to convert an NSData UUID to an APNS valid UUID
- Added `convertToNSData` method in NSString category to convert NSData to NSString
- Added `isUUID` & `isUUIDForAPNS` methods in NSString category to check if it is a valid UUID
- Added `updateUniqueIdentifier:block:` to UIDevice category to check if the UUID has to be updated (Useful for APNS)
- Added `brightness` methods directly to UIScreen category
- Added Brazilian Portuguese [#20](https://github.com/FabrizioBrancati/BFKit/pull/20) & [#22](https://github.com/FabrizioBrancati/BFKit/pull/22)
- Added BFTextField subclass of UITextField to limit the max characters
- Added automatic height for width for an UILabel [#21](https://github.com/FabrizioBrancati/BFKit/pull/21)
- Added `setFont:fromIndex:toIndex:` to sets a custom font from a range of characters [#21](https://github.com/FabrizioBrancati/BFKit/pull/21)
- Added `removeAllSubviews` from UIView category to remove all the subviews [#21](https://github.com/FabrizioBrancati/BFKit/pull/21)
- Added screen size macros in UIScreen category to check the device's screen size

#### Improved
- Changed how to access `lightFont`, `regularFont` and `boldFont` in UIFont category
- All the encrypt/decrypt methods has been moved to the new BFCryptor class. The old ones will call the new ones from that class
- Fixed warnings for deprecated fonts [#23](https://github.com/FabrizioBrancati/BFKit/pull/23)
- Minor enhancements & bug fix

Thanks to [@AshrafAbuBakr](https://github.com/AshrafAbuBakr), [@davidjelliott](https://github.com/davidjelliott), [@emersonbroga](https://github.com/emersonbroga) & [@liushixiang](https://github.com/liushixiang) for this release


## [1.8.0](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.8.0)
### 9 Nov 2015
#### Added
- Added support to [Nullability](https://developer.apple.com/swift/blog/?id=25)
- Added support to Carthage
- Added `flipImageHorizontally` & `flipImageVertically` methods in UIImage category
- Added missing devices
- Added more stronger check on BFDataStructures

#### Improved
- Now BFKit can be build as a Framework
- Moved `generateUUID:` from UIDevice category to String and NSString category
- Minor enhancements



## [1.7.1](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.7.1)
### 27 Sep 2015
#### Added
- Added new devices (iPhone, iPad and AppleTV)
- Added new methods for HEX representation

#### Fixed
- Fixed a bug with ```getSettings:objectForKey:``` & ```setSettings:object:forKey``` in NSFileManager category [#15](https://github.com/FabrizioBrancati/BFKit/issues/15)

Thanks to [@jiongge](https://github.com/jiongge) and [@fabiosoft](https://github.com/fabiosoft) for this release



## [1.7.0](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.7.0)
### 21 Jul 2015
#### Added
- Added UINavigationBar category
- Added UIToolbar & UIBarButtonItem categories
- Added BFDataStructures class with primitive data structures
- Added new substring and indexOf methods in NSString category
- Added ```fallbackTitle``` parameter in ```showTouchIDAuthenticationWithReason``` method in BFTouchID class
- Added touch on screen with ```BFShowTouchOnScreen``` and ```BFHideTouchOnScreen``` macros
- Added support for iPod Touch 6G

#### Improved
- Now to create dummy images you have to explicitly call ```dummyImageNamed:``` method in UIImage
- Changed all ```id``` to ```instancetype``` in instance creation
- Removed UIScreen methods from UIDevice category and created UIScreen category

#### Fixed
- Changed ```SCREEN_WIDTH``` & ```SCREEN_HEIGHT``` macros and fixed [#13](https://github.com/FabrizioBrancati/BFKit/issues/13)

Thanks to [@jiongge](https://github.com/jiongge) for this release



## [1.6.8](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.6.8)
### 9 Jul 2015
#### Added
- Added ```onFirstStart``` and ```onFirstStartForCurrentVersion``` in BFApp class
- Added ```stringByReplacingWithRegex:withString:``` in NSString category

#### Improved
- BFLog now prints: ```timestamp filename:line function message```
- NSDate category now has ```nanosecond``` and use ```autoupdatingCurrentCalendar```

#### Fixed
- Bug fix in DEMO App



## [1.6.7](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.6.7)
### 7 Jul 2015
#### Added
- Added ```initWithImageAsTemplate:tintColor:``` in UIImageView category

#### Improved
- Changed method to check if a NSString is an email



## [1.6.6](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.6.6)
### 5 Jul 2015
#### Added
- Added ```colorForColorString``` in UIColor category
- Added ```getIndexPathsForSection``` in UITableView category
- Added ```takeScreenshotAndSave:``` and ```takeScreenshotWithDelay:save:completion:``` in UIWindow category to save screenshots and make it after a delay

#### Improved
- Minor changes on Documentation

#### Fixed
- Fixed a bug with Retina and Retina HD displays while resizing images



## [1.6.5](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.6.5)
### 2 Jul 2015
#### Added
- Added ```currentAppCPUUsage``` in NSProcessInfo category

#### Fixed
- Minor bugfixes



## [1.6.4](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.6.4)
### 26 Jun 2015
#### Added
- Added ```hex``` and ```hexString``` in UIColor category to easily create HEX colors from strings
- Added dummy images and any blend mode in UIImage category
- Added ```setMaskImage``` method in UIImageView category and deprecated the oldest ones in UIImage category

#### Improved
- ```macAddress``` method in UIDevice category is now deprecated (from iOS 7 you cannot request for mac address)
- Minor enhancements

#### Fixed
- Fixed quality loss on most UIImage category manipulation methods



## [1.6.3](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.6.3)
### 23 Jun 2015
#### Fixed
- Fixed a problem with CocoaPods & CocoaDocs (again)



## [1.6.2](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.6.2)
### 23 Jun 2015
#### Fixed
- Fixed a problem with CocoaPods & CocoaDocs



## [1.6.1](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.6.1)
### 23 Jun 2015
#### Improved
- In NSString category the method ```allFamilyAndFonts``` now return an NSDictionary with all the family font names



## [1.6.0](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.6.0)
### 23 Jun 2015
#### Added
- Added in NSString category the method ```hasString:caseSensitive:```
- Added system macros in UIDevice category
- Added iOS 9 fonts and marked as deprecated that is not available on iOS 9

#### Improved
- Performance improved



## [1.5.3](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.5.3)
### 18 May 2015
#### Added
- Added Traditional Chinese (zh-Hant)

Thanks to [@simonlinj](https://github.com/simonlinj) for this release



## [1.5.2](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.5.2)
### 16 May 2015
#### Added
- Added in UIView category the method ```createGradientWithColors:direction:```
- Added a comment on every enum, method or variable

#### Fixed
- Fixed a warning on ```runOnMainThread``` method in NSThread category



## [1.5.1](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.5.1)
### 15 May 2015
#### Fixed
- Fixed a problem with CocoaPod



## [1.5.0](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.5.0)
### 15 May 2015
#### Added
- Added BFButton class
- Added in UIImageView category the method ```initWithImage:center:```
- Added in UIImage category the method ```imageWithSize:backgroundColor:maskedText:font:```
- Added in UIView category the method ```translateAroundTheView:duration:direction:repeat:startFromEdge:```
- Added in NSNumber category the methods ```nextPowerOfTwo``` and ```isPowerOfTwo```
- Added Vietnamese

#### Improved
- Enhancements in NSDate category

### Fixed
- Minor bugfixes

Thanks to [@simonlinj](https://github.com/simonlinj) & [@masd-duc](https://github.com/masd-duc) for this release



## [1.4.0](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.4.0)
### 25 Feb 2015
#### Added
- Added UITextView category
- Added NSObject category
- Added ```BFLogDetailedString``` to get more detailed log string in BFLog class
- Added ```dateInformationDescriptionWithInformation:dateSeparator:usFormat``` method, to get timestamp in NSDate category
- Added ```fileSize:fromDirectory:``` method, to get size of a file in NSFileManager category
- Added some ```@property``` method, to get the RGB single component in UIColor category
- Added ```canProvideRGBComponents, contrastingColor & complementaryColor``` methods in UIColor category
- Added ```imageFromText:font:fontSize:imageSize:``` method, to create an UIImage from a given text in UIImage category

#### Fixed
- Fixed UIImage category to support al types of display (Retina & Retina HD)
- Fixed UIImage category to remove all warnings



## [1.3.2](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.3.2)
### 21 Feb 2015
#### Added
- Added in every class or category ```@import``` to import the needed frameworks



## [1.3.1](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.3.1)
### 13 Jan 2015
#### Added
- Added NSDictionary category with ```dictionaryToJson:``` methods

#### Fixed
- Fixed ```reversedArray:``` in NSArray category

Thanks to [@simonlinj](https://github.com/simonlinj) for this release



## [1.3.0](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.3.0)
### 10 Jan 2015
#### Added
- Added ```APP_DELEGATE``` macro to retrive AppDelegate
- Added Base64 encode/decode
- Added NSThread class with function ```runOnMainThread```
- Added ```RGB & RGBA``` macros to create UIColor objects
- Added missing fonts (iOS 8)
- Added missing Audio IDs
- Added some localized strings

#### Improved
- Complete rewrite of BFLog class with more details in log and string of all logs



## [1.2.0](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.2.0)
### 2 Jan 2015
#### Added
- Added NSMutableDictionary category
- Added in NSArray the method ```objectAtCircleIndex:```
- Added in BFSystemSound the ability to create and dispose custom sound
- Added BFApp and BFLog classes

#### Improved
- In NSArray the method ```arrayToJson:``` now returns the localized string error
- NSArray & NSMutableArray enhancements

Thanks to [@antwork](https://github.com/antwork) for this release



## [1.1.0](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.1.0)
### 29 Dec 2014
#### Added
- Added UIWindow category
- Added system macros
- Added new iOS devices
- Added pulse animation
- Added Russian, Ukrainian, Indonesian and Chinese

#### Improved
- Minor enhancements

#### Fixed
- Minor bugfixes

Thanks to [@hiralin](https://github.com/hiralin) & [@bontangster](https://github.com/bontangster) for this release



## [1.0.0](https://github.com/FabrizioBrancati/BFKit/releases/tag/v1.0.0)
### 16 Nov 2014
- Initial release
