![BFKit Banner](http://github.fabriziobrancati.com/bfkit/resources/banner.png)

[![Build Status](https://travis-ci.org/FabrizioBrancati/BFKit.svg?branch=master)](https://travis-ci.org/FabrizioBrancati/BFKit)
[![Version](https://img.shields.io/cocoapods/v/BFKit.svg?style=flat)](http://cocoadocs.org/docsets/BFKit)
[![License](https://img.shields.io/cocoapods/l/BFKit.svg?style=flat)](http://cocoadocs.org/docsets/BFKit)
[![Platform](https://img.shields.io/cocoapods/p/BFKit.svg?style=flat)](http://cocoadocs.org/docsets/BFKit)
[![Issues](https://img.shields.io/github/issues/FabrizioBrancati/BFKit.svg?style=flat)](https://github.com/FabrizioBrancati/BFKit/issues)

BFKit is a collection of useful classes to **develop Apps faster**.

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
- Add the **AudioToolbox** and **LocalAuthentication** (if you want to use **BFTouchID** class) frameworks to the project
- Import the file "**BFKit.h**"
- Enjoy!

Requirements
============
- iOS SDK **7.0** or later
- ARC

Language support
================
```English(en), Italian(it), Russian(ru), Ukrainian(uk), Indonesian(id), Chinese Simplified(zh)```

What does it do?
================
Adds some useful method to some classes.

###Foundation:
- NSArray
- NSDate
- NSFileManager
- NSMutableArray
- NSMutableDictionary
- NSNumber
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
- UIView
- UIWebView
- UIWindow

###BFKit:
- BFApp
- BFLog
- BFPassword
- BFSystemSound
- BFTouchID (Require iOS 8)

Documentation
=============

###[CocoaDocs](http://cocoadocs.org/docsets/BFKit)

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
