<p align="center"><img src="http://github.fabriziobrancati.com/bfkit/resources/banner-objc.png" alt="BFKit Banner"></p>

[![Build Status](https://travis-ci.org/FabrizioBrancati/BFKit.svg?branch=master)](https://travis-ci.org/FabrizioBrancati/BFKit)
[![Issues](https://img.shields.io/github/issues/FabrizioBrancati/BFKit.svg?style=flat)](https://github.com/FabrizioBrancati/BFKit/issues)
[![Version](https://img.shields.io/cocoapods/v/BFKit.svg?style=flat)][CocoaDocs]
[![Language](https://img.shields.io/badge/language-Objective--C-blue.svg)](https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/Introduction/Introduction.html)
[![Platform](https://img.shields.io/badge/platform-iOS-ffc713.svg)][CocoaDocs]
[![License](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://github.com/FabrizioBrancati/BFKit/blob/master/LICENSE)

###Swift  <img src="http://github.fabriziobrancati.com/bfkit/resources/swift-icon.png" height="20" width="20">
If you are looking for Swift version check it out here: **[BFKit-Swift](https://github.com/FabrizioBrancati/BFKit-Swift)**

What does it do :question:
===========================
BFKit is a collection of useful classes to **develop Apps faster**.

For example you can use every iOS font with just an enum!

It also adds some useful method to some classes like:

###BFKit:
- [BFApp](http://cocoadocs.org/docsets/BFKit/1.6.8/Classes/BFApp.html)
- [BFButton](http://cocoadocs.org/docsets/BFKit/1.6.8/Classes/BFButton.html)
- [BFLog](http://cocoadocs.org/docsets/BFKit/1.6.8/Classes/BFLog.html)
- [BFPassword](http://cocoadocs.org/docsets/BFKit/1.6.8/Classes/BFPassword.html)
- [BFSystemSound](http://cocoadocs.org/docsets/BFKit/1.6.8/Classes/BFSystemSound.html)
- [BFTouchID](http://cocoadocs.org/docsets/BFKit/1.6.8/Classes/BFTouchID.html) (iOS 8 or later)

###Foundation:
- [NSArray](http://cocoadocs.org/docsets/BFKit/1.6.8/Categories/NSArray+BFKit.html)
- [NSDate](http://cocoadocs.org/docsets/BFKit/1.6.8/Categories/NSDate+BFKit.html)
- [NSDictionary](http://cocoadocs.org/docsets/BFKit/1.6.8/Categories/NSDictionary+BFKit.html)
- [NSFileManager](http://cocoadocs.org/docsets/BFKit/1.6.8/Categories/NSFileManager+BFKit.html)
- [NSMutableArray](http://cocoadocs.org/docsets/BFKit/1.6.8/Categories/NSMutableArray+BFKit.html)
- [NSMutableDictionary](http://cocoadocs.org/docsets/BFKit/1.6.8/Categories/NSMutableDictionary+BFKit.html)
- [NSNumber](http://cocoadocs.org/docsets/BFKit/1.6.8/Categories/NSNumber+BFKit.html)
- [NSObject](http://cocoadocs.org/docsets/BFKit/1.6.8/Categories/NSObject+BFKit.html)
- [NSProcessInfo](http://cocoadocs.org/docsets/BFKit/1.6.8/Categories/NSProcessInfo+BFKit.html)
- [NSString](http://cocoadocs.org/docsets/BFKit/1.6.8/Categories/NSString+BFKit.html)
- [NSThread](http://cocoadocs.org/docsets/BFKit/1.6.8/Categories/NSThread+BFKit.html)

###UIKit:
- [UIButton](http://cocoadocs.org/docsets/BFKit/1.6.8/Categories/NSArray+BFKit.html)
- [UIColor](http://cocoadocs.org/docsets/BFKit/1.6.8/Categories/UIColor+BFKit.html)
- [UIDevice](http://cocoadocs.org/docsets/BFKit/1.6.8/Categories/UIDevice+BFKit.html)
- [UIFont](http://cocoadocs.org/docsets/BFKit/1.6.8/Categories/UIFont+BFKit.html)
- [UIImage](http://cocoadocs.org/docsets/BFKit/1.6.8/Categories/UIImage+BFKit.html)
- [UIImageView](http://cocoadocs.org/docsets/BFKit/1.6.8/Categories/UIImageView+BFKit.html)
- [UILabel](http://cocoadocs.org/docsets/BFKit/1.6.8/Categories/UILabel+BFKit.html)
- [UIScrollView](http://cocoadocs.org/docsets/BFKit/1.6.8/Categories/UIScrollView+BFKit.html)
- [UITableView](http://cocoadocs.org/docsets/BFKit/1.6.8/Categories/UITableView+BFKit.html)
- [UITextField](http://cocoadocs.org/docsets/BFKit/1.6.8/Categories/UITextField+BFKit.html)
- [UITextView](http://cocoadocs.org/docsets/BFKit/1.6.8/Categories/UITextView+BFKit.html)
- [UIView](http://cocoadocs.org/docsets/BFKit/1.6.8/Categories/UIView+BFKit.html)
- [UIWebView](http://cocoadocs.org/docsets/BFKit/1.6.8/Categories/UIWebView+BFKit.html)
- [UIWindow](http://cocoadocs.org/docsets/BFKit/1.6.8/Categories/UIWindow+BFKit.html)

Language support :it:
=====================
- English (en)
- Indonesian (id)
- Italian (it)
- Russian (ru)
- Simplified Chinese (zh-Hans)
- Traditional Chinese (zh-Hant)
- Ukrainian (uk)
- Vietnamese (vi)

Requirements :iphone:
=====================
- iOS SDK **7.0** or later
- **ARC**

Communication :speaker:
=======================
- If you need help, use Stack Overflow.
- If you found a bug, open an issue.
- If you have a feature request, open an issue.
- If you want to contribute, see [Contributing](https://github.com/FabrizioBrancati/BFKit#contributing-octocat) section.

Contributing :octocat:
======================
I'd love to see your ideas for improving this library.

The best way to contribute is by submitting a pull request.
I'll do my best to respond to you as soon as possible.

Please make sure to follow my general coding style for new features!

Installing and Usage :computer:
===============================
###Manual
- Copy the **library** folder (**BFKit**) to the project
- Add the following frameworks to the project:
  - **UIKit**
  - **Foundation**
  - **CoreImage**
  - **CoreGraphics**
  - **QuartzCore**
  - **Accelerate**
  - **AudioToolbox** (if you want to use **BFSystemSound** class)
  - **LocalAuthentication** (if you want to use **BFTouchID** class, and set it as weak if your App runs on iOS 7)
- Import BFKit with ```#import "BFKit.h"```
- Enjoy!

###CocoaPods
####Newbie version
- Create a **Podfile** in your **project directory**
- Write:
```ruby
  platform :ios, '7.0'
  xcodeproj 'Project.xcodeproj'
  pod 'BFKit'
```
- Obviously **change "Project"**  with your **real project name**
- Open **Terminal**, go to **project directory** and type: ```pod install```
- Import BFKit with ```#import "BFKit.h"```
- Enjoy!

####Pro version
- ```pod 'BFKit'```
- Import BFKit with ```#import "BFKit.h"```
- Enjoy!

Documentation :100:
===================
###[CocoaDocs] - 100% Documented

Changelog :bookmark_tabs:
=========================
To see what has changed in recent version of BFKit, see the **[CHANGELOG](https://github.com/FabrizioBrancati/BFKit/blob/master/CHANGELOG.md)**

Demo :wrench:
=============
Open and run the BFKitDemo project in Xcode and see BFKit in action!

Todo :ballot_box_with_check:
============================
- :heavy_minus_sign: Create a category for every UIKit element
- :heavy_minus_sign: Create tests
- :heavy_check_mark: Add missing font for iOS 9
- :heavy_check_mark: Add missing system sound ids

Author :neckbeard:
==================
**Fabrizio Brancati**

[![Website](https://img.shields.io/badge/website-fabriziobrancati.com-4fb0c8.svg)](http://www.fabriziobrancati.com)
<br>
[![Email](https://img.shields.io/badge/email-fabrizio.brancati%40gmail.com-green.svg)](mailto:fabrizio.brancati@gmail.com)

License :scroll:
================
BFKit is available under the MIT license. See the **[LICENSE](https://github.com/FabrizioBrancati/BFKit/blob/master/LICENSE)** file for more info.

[CocoaDocs]: http://cocoadocs.org/docsets/BFKit/1.6.8/
