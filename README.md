<p align="center"><img src="http://github.fabriziobrancati.com/bfkit/resources/banner.png" alt="BFKit Banner"></p>

[![Build Status](https://travis-ci.org/FabrizioBrancati/BFKit.svg?branch=master)](https://travis-ci.org/FabrizioBrancati/BFKit)
[![Version](https://img.shields.io/cocoapods/v/BFKit.svg?style=flat)](http://cocoadocs.org/docsets/BFKit)
[![License](https://img.shields.io/cocoapods/l/BFKit.svg?style=flat)](http://cocoadocs.org/docsets/BFKit)
[![Platform](https://img.shields.io/cocoapods/p/BFKit.svg?style=flat)](http://cocoadocs.org/docsets/BFKit)
[![Issues](https://img.shields.io/github/issues/FabrizioBrancati/BFKit.svg?style=flat)](https://github.com/FabrizioBrancati/BFKit/issues)

BFKit is a collection of useful classes to **develop Apps faster**.

For example you can use every iOS font with just an enum!

Installing and Usage
====================
###Pod
- Create a **Podfile** in your **project directory**
- Write:
```ruby
  platform :ios, '7.0'
  xcodeproj 'Project.xcodeproj'
  pod 'BFKit'
```
- Obviously **change "Project"**  with your **real project name**
- Open **Terminal**, go to **project directory** and type:
```bash
  pod install
```
- Import the file "**BFKit.h**"
- Enjoy!

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
- Import the file "**BFKit.h**"
- Enjoy!

Requirements
============
- iOS SDK **7.0** or later
- ARC

Language support
================
- English (en)
- Indonesian (id)
- Italian (it)
- Russian (ru)
- Simplified Chinese (zh-Hans)
- Traditional Chinese (zh-Hant)
- Ukrainian (uk)
- Vietnamese (vi)

What does it do?
================
Adds some useful method to some classes like:

###Foundation:
- NSArray
- NSDate
- NSFileManager
- NSMutableArray
- NSMutableDictionary
- NSNumber
- NSObject
- NSProcessInfo
- NSString
- NSThread

###UIKit:
- UIButton
- UIColor
- UIDevice
- UIFont
- UIImage
- UIImageView
- UILabel
- UIScrollView
- UITableView
- UITextField
- UITextView
- UIView
- UIWebView
- UIWindow

###BFKit:
- BFApp
- BFButton
- BFLog
- BFPassword
- BFSystemSound
- BFTouchID (iOS 8)

Documentation
=============
###[CocoaDocs](http://cocoadocs.org/docsets/BFKit) - 100% Documented

Changelog
=========
To see what has changed in recent version of BFKit, see the **[CHANGELOG](https://github.com/FabrizioBrancati/BFKit/blob/master/CHANGELOG.md)**

Todo
====
- [ ] Create instance methods for UIKit categories
- [ ] Create a category for every UIKit element
- [x] Add missing font (iOS 8)
- [x] Add missing system sound ids

Author
======
**Fabrizio Brancati**

- **[Website](http://www.fabriziobrancati.com)**
- **[Email](mailto:fabrizio.brancati@gmail.com)**

License
=======
BFKit is available under the MIT license. See the **[LICENSE](https://github.com/FabrizioBrancati/BFKit/blob/master/LICENSE)** file for more info.

Contributing :octocat:
======================
I'd love to see your ideas for improving this library.

The best way to contribute is by submitting a pull request.
I'll do my best to respond to you as soon as possible.

You can also submit a new Github issue if you find bugs or have questions.

Please make sure to follow my general coding style for new features!
