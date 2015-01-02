![BFKit Banner](http://github.fabriziobrancati.com/bfkit/resources/banner.png)

[![Build Status](https://travis-ci.org/FabrizioBrancati/BFKit.svg?branch=master)](https://travis-ci.org/FabrizioBrancati/BFKit)
[![Version](https://img.shields.io/cocoapods/v/BFKit.svg?style=flat)](http://cocoadocs.org/docsets/BFKit)
[![License](https://img.shields.io/cocoapods/l/BFKit.svg?style=flat)](http://cocoadocs.org/docsets/BFKit)
[![Platform](https://img.shields.io/cocoapods/p/BFKit.svg?style=flat)](http://cocoadocs.org/docsets/BFKit)
[![Issues](https://img.shields.io/github/issues/FabrizioBrancati/BFKit.svg?style=flat)](https://github.com/FabrizioBrancati/BFKit/issues)

BFKit is a collection of useful classes to **develop Apps faster**.

Installing and Usage
====================

###Manual
- Copy the **library** folder (**BFKit**) to the project
- Add the **AudioToolbox** framework to the project
- Import the file "**BFKit.h**"
- Enjoy!

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

Requirements
============
- iOS SDK **7.0** or later
- ARC

Language support
================
```en, it, ru, uk, id, zh```

More soon!

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

Documentation
=============

###[CocoaDocs](http://cocoadocs.org/docsets/BFKit)

Changelog
=========

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

Todo
====
- [ ] Create instance methods for UIKit categories
- [ ] Create a category for every UIKit element
- [ ] Add missing font (iOS 8)
- [ ] Add missing system sound ids
- [ ] Add test class for Travis CI

Author
======
Fabrizio Brancati

- [Website](http://www.fabriziobrancati.com)
- [Email](mailto:fabrizio.brancati@gmail.com)

License
=======
BFKit is available under the MIT license. See the LICENSE file for more info.
