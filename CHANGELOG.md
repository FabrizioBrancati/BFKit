Changelog
=========
###Version 1.7.0
- Added UINavigationBar category
- Added UIToolbar & UIBarButtonItem categories
- Added BFDataStructures class with primitive data structures
- Added new substring and indexOf methods in NSString category
- Added ```fallbackTitle``` parameter in ```showTouchIDAuthenticationWithReason``` method in BFTouchID class
- Added touch on screen with ```BFShowTouchOnScreen``` and ```BFHideTouchOnScreen``` macros
- Added support for iPod Touch 6G
- Now to create dummy images you have to explicitly call ```dummyImageNamed:``` method in UIImage
- Changed all ```id``` to ```instancetype``` in instance creation
- Removed UIScreen methods from UIDevice category and created UIScreen category
- Changed ```SCREEN_WIDTH``` & ```SCREEN_HEIGHT``` macros and Fixed #13. Thanks to @jiongge

###Version 1.6.8
- Added ```onFirstStart``` and ```onFirstStartForCurrentVersion``` in BFApp class
- Added ```stringByReplacingWithRegex:withString:``` in NSString category
- BFLog now prints: ```timestamp filename:line function message```
- NSDate category now has ```nanosecond``` and use ```autoupdatingCurrentCalendar```
- Bug fix in DEMO App

###Version 1.6.7
- Added ```initWithImageAsTemplate:tintColor:``` in UIImageView category
- Changed method to check if a NSString is an email

###Version 1.6.6
- Added ```colorForColorString``` in UIColor category
- Added ```getIndexPathsForSection``` in UITableView category
- Added ```takeScreenshotAndSave:``` and ```takeScreenshotWithDelay:save:completion:``` in UIWindow category to save screenshots and make it after a delay
- Minor changes on Documentation
- Fixed a bug with Retina and Retina HD displays while resizing images

###Version 1.6.5
- Added ```currentAppCPUUsage``` in NSProcessInfo category
- Minor bugfixes

###Version 1.6.4
- Added ```hex``` and ```hexString``` in UIColor category to easily create HEX colors from strings
- Added dummy images and any blend mode in UIImage category
- Added ```setMaskImage``` method in UIImageView category and deprecated the oldest ones in UIImage category
- ```macAddress``` method in UIDevice category is now deprecated (from iOS 7 you cannot request for mac address)
- Fixed quality loss on most UIImage category manipulation methods
- Minor enhancements

###Version 1.6.3
- Fixed a problem with CocoaPods & CocoaDocs (again)

###Version 1.6.2
- Fixed a problem with CocoaPods & CocoaDocs

###Version 1.6.1
- In NSString category the method ```allFamilyAndFonts``` now return an NSDictionary with all the family font names

###Version 1.6.0
- Added in NSString category the method ```hasString:caseSensitive:```
- Added system macros in UIDevice category
- Added iOS 9 fonts and marked as deprecated that is not available on iOS 9
- Performance improved

###Version 1.5.3
- Added Traditional Chinese (zh-Hant)

Thanks to [@simonlinj](https://github.com/simonlinj) for this release

###Version 1.5.2
- Added in UIView category the method ```createGradientWithColors:direction:```
- Added a comment on every enum, method or variable
- Fixed a warning on ```runOnMainThread``` method in NSThread category

###Version 1.5.1
- Fixed a problem with Pod

###Version 1.5.0
- Enhancements in NSDate category
- Added BFButton class
- Added in UIImageView category the method ```initWithImage:center:```
- Added in UIImage category the method ```imageWithSize:backgroundColor:maskedText:font:```
- Added in UIView category the method ```translateAroundTheView:duration:direction:repeat:startFromEdge:```
- Added in NSNumber category the methods ```nextPowerOfTwo``` and ```isPowerOfTwo```
- Added Vietnamese
- Minor enhancements & bugfixes

Thanks to [@simonlinj](https://github.com/simonlinj) & [@masd-duc](https://github.com/masd-duc) for this release

###Version 1.4.0
- Added UITextView category
- Added NSObject category
- Added ```BFLogDetailedString``` to get more detailed log string in BFLog class
- Added ```dateInformationDescriptionWithInformation:dateSeparator:usFormat``` method, to get timestamp in NSDate category
- Added ```fileSize:fromDirectory:``` method, to get size of a file in NSFileManager category
- Added some ```@property``` method, to get the RGB single component in UIColor category
- Added ```canProvideRGBComponents, contrastingColor & complementaryColor``` methods in UIColor category
- Added ```imageFromText:font:fontSize:imageSize:``` method, to create an UIImage from a given text in UIImage category
- Fixed UIImage category to support al types of display (Retina & Retina HD)
- Fixed UIImage category to remove all warnings

###Version 1.3.2
- Added in every class or category ```@import``` to import the needed frameworks

###Version 1.3.1
- Added NSDictionary category with ```dictionaryToJson:``` methods
- Fixed ```reversedArray:``` in NSArray category

Thanks to [@simonlinj](https://github.com/simonlinj) for this release

###Version 1.3.0
- Complete rewrite of BFLog class with more details in log and string of all logs
- Added ```APP_DELEGATE``` macro to retrive AppDelegate
- Added Base64 encode/decode
- Added NSThread class with function ```runOnMainThread```
- Added ```RGB & RGBA``` macros to create UIColor objects
- Added missing fonts (iOS 8)
- Added missing Audio IDs
- Added some localized strings

###Version 1.2.0
- Added NSMutableDictionary category
- Added in NSArray the method ```objectAtCircleIndex:```
- Added in BFSystemSound the ability to create and dispose custom sound
- Added BFApp and BFLog classes
- In NSArray the method ```arrayToJson:``` now returns the localized string error
- NSArray & NSMutableArray enhancements

Thanks to [@antwork](https://github.com/antwork) for this release

###Version 1.1.0
- Added UIWindow category
- Added system macros
- Added new iOS devices
- Added pulse animation
- Added Russian, Ukrainian, Indonesian and Chinese
- Minor enhancements & bugfixes

Thanks to [@hiralin](https://github.com/hiralin) & [@bontangster](https://github.com/bontangster) for this release

###Version 1.0.0
- Initial release
