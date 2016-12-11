<p align="center"><img src="http://github.fabriziobrancati.com/bfkit/resources/banner-objc.png" alt="BFKit Banner"></p>

[![Build Status](https://travis-ci.org/FabrizioBrancati/BFKit.svg?branch=master)](https://travis-ci.org/FabrizioBrancati/BFKit)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Version](https://img.shields.io/cocoapods/v/BFKit.svg?style=flat)][CocoaDocs]
[![Language](https://img.shields.io/badge/language-Objective--C-blue.svg)](https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/Introduction/Introduction.html)
[![Platform](https://img.shields.io/badge/platform-iOS-ffc713.svg)][CocoaDocs]
[![License](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://github.com/FabrizioBrancati/BFKit/blob/master/LICENSE)

---

<p align="center">
    <a href="#swift-">Swift Version</a> &bull;
    <a href="#what-does-it-do-question">What does it do</a> &bull;
    <a href="#language-support-it">Language support</a> &bull;
    <a href="#requirements-iphone">Requirements</a> &bull;
    <a href="#communication-speaker">Communication</a> &bull;
    <a href="#contributing-octocat">Contributing</a> &bull;
    <a href="#installing-and-usage-computer">Installing and Usage</a> &bull;
    <a href="#documentation-100">Documentation</a> &bull;
    <a href="#changelog-bookmark_tabs">Changelog</a> &bull;
    <a href="#demo-wrench">Demo</a> &bull;
    <a href="#todo-ballot_box_with_check">Todo</a> &bull;
    <a href="#author-neckbeard">Author</a> &bull;
    <a href="#license-scroll">License</a>
</p>

---

Swift Version <img src="http://github.fabriziobrancati.com/bfkit/resources/swift-icon.png" height="25" width="25">
=============
If you are looking for Swift version check it out here: **[BFKit Swift](https://github.com/FabrizioBrancati/BFKit-Swift)**

What does it do :question:
==========================
BFKit is a collection of useful classes to **develop Apps faster**.

For example you can use every iOS font with just an enum!

To better use of the framework I recommend you to use [FuzzyAutocomplete](https://github.com/FuzzyAutocomplete/FuzzyAutocompletePlugin) Xcode plugin to better find functions while coding.

It also adds some useful method to some classes like:

### BFKit:
- [BFApp](http://cocoadocs.org/docsets/BFKit/1.9.3/Classes/BFApp.html)
- [BFButton](http://cocoadocs.org/docsets/BFKit/1.9.3/Classes/BFButton.html)
- BFDataStructures ([List](http://cocoadocs.org/docsets/BFKit/1.9.3/Classes/List.html) - [Queue](http://cocoadocs.org/docsets/BFKit/1.9.3/Classes/Queue.html) - [Stack](http://cocoadocs.org/docsets/BFKit/1.9.3/Classes/Stack.html))
- [BFLog](http://cocoadocs.org/docsets/BFKit/1.9.3/Classes/BFLog.html)
- [BFPassword](http://cocoadocs.org/docsets/BFKit/1.9.3/Classes/BFPassword.html)
- [BFSystemSound](http://cocoadocs.org/docsets/BFKit/1.9.3/Classes/BFSystemSound.html)
- [BFTouchID](http://cocoadocs.org/docsets/BFKit/1.9.3/Classes/BFTouchID.html) (iOS 8 or later)

### Foundation:
- [NSArray](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/NSArray+BFKit.html)
- [NSDate](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/NSDate+BFKit.html)
- [NSDictionary](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/NSDictionary+BFKit.html)
- [NSFileManager](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/NSFileManager+BFKit.html)
- [NSMutableArray](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/NSMutableArray+BFKit.html)
- [NSMutableDictionary](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/NSMutableDictionary+BFKit.html)
- [NSNumber](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/NSNumber+BFKit.html)
- [NSObject](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/NSObject+BFKit.html)
- [NSProcessInfo](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/NSProcessInfo+BFKit.html)
- [NSString](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/NSString+BFKit.html)
- [NSThread](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/NSThread+BFKit.html)

### UIKit:
- [UIBarButtonItem](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/UIBarButtonItem+BFKit.html)
- [UIButton](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/NSArray+BFKit.html)
- [UIColor](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/UIColor+BFKit.html)
- [UIDevice](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/UIDevice+BFKit.html)
- [UIFont](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/UIFont+BFKit.html)
- [UIImage](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/UIImage+BFKit.html)
- [UIImageView](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/UIImageView+BFKit.html)
- [UILabel](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/UILabel+BFKit.html)
- [UINavigationBar](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/UINavigationBar+BFKit.html)
- [UIScreen](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/UIScreen+BFKit.html)
- [UIScrollView](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/UIScrollView+BFKit.html)
- [UITableView](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/UITableView+BFKit.html)
- [UITextField](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/UITextField+BFKit.html)
- [UITextView](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/UITextView+BFKit.html)
- [UIToolbar](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/UIToolbar+BFKit.html)
- [UIView](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/UIView+BFKit.html)
- [UIWebView](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/UIWebView+BFKit.html)
- [UIWindow](http://cocoadocs.org/docsets/BFKit/1.9.3/Categories/UIWindow+BFKit.html)

Language support :it:
=====================
- Brazilian Portuguese (pt-Br)
- English (en)
- Indonesian (id)
- Italian (it)
- Russian (ru)
- Simplified Chinese (zh-Hans)
- Swedish (sv)
- Traditional Chinese (zh-Hant)
- Ukrainian (uk)
- Vietnamese (vi)

Requirements :iphone:
=====================
- iOS SDK **7.0** if you copy the Framework files (Source folder)
- iOS SDK **8.0** if you use it as a Framework
- **Xcode 7.0** or later
- **ARC**

Communication :speaker:
=======================
- If you need help, use Stack Overflow.
- If you found a bug, open an issue.
- If you have a feature request, open an issue.
- If you want to contribute, see [Contributing](https://github.com/FabrizioBrancati/BFKit#contributing-octocat) section.

Contributing :octocat:
======================
See [CONTRIBUTING.md](https://github.com/FabrizioBrancati/BFKit/blob/master/.github/CONTRIBUTING.md) file.

Installing and Usage :computer:
===============================
### iOS 7 or later compatible
#### Manual
- Copy the **Source** folder to the project
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

#### CocoaPods
##### Pro version
- ```pod 'BFKit'```
- Import the Framework with ```import BFKit```
- Enjoy!

##### Newbie version
- Create a **Podfile** in your **project directory**
- Write:

```ruby
    platform :ios, '7.0'
    xcodeproj 'Project.xcodeproj'

    pod 'BFKit'
```
- Change **"Project"**  with your **real project name**
- Open **Terminal**, go to **project directory** and type: ```pod install```
- Import the Framework with ```#import <BFKit/BFKit.h>```
- Enjoy!

### iOS 8 or later compatible
#### Manual
- Open the **BFKit** folder and build the Framework from the project
- Import BFKit.framework into your project
- Add the following frameworks to the project:
  - **UIKit**
  - **Foundation**
  - **CoreImage**
  - **CoreGraphics**
  - **QuartzCore**
  - **Accelerate**
  - **AudioToolbox** (if you want to use **BFSystemSound** class)
  - **LocalAuthentication** (if you want to use **BFTouchID** class, and set it as weak if your App runs on iOS 7)
- Import the Framework with ```import BFKit```
- Enjoy!

#### Carthage
##### Pro version
- ```github "FabrizioBrancati/BFKit"```
- Import the Framework with ```import BFKit```
- Enjoy!

##### Newbie version
- Create a **Cartfile** in your **project directory**
- Write:

```ruby
    github "FabrizioBrancati/BFKit"
```
- Open **Terminal**, go to **project directory** and type: ```carthage update```
- **Include the created Framework** in your project
- **Add Build Phase** with the following contents:

    ```sh
        /usr/local/bin/carthage copy-frameworks
    ```

    and add the paths to the BFKit framework under **Input Files**

    ```sh
        $(SRCROOT)/Carthage/Build/iOS/BFKit.framework
    ```
    This script works around an [App Store submission bug](http://www.openradar.me/radar?id=6409498411401216) triggered by universal binaries and ensures that necessary bitcode-related files are copied when archiving
- Import the Framework with ```import BFKit```
- Enjoy!

Documentation :100:
===================
### [CocoaDocs] - 100% Documented

Changelog :bookmark_tabs:
=========================
To see what has changed in recent version of BFKit, see the **[CHANGELOG](https://github.com/FabrizioBrancati/BFKit/blob/master/CHANGELOG.md)**

Demo :wrench:
=============
Open and run the BFKitDemo project in Xcode and see BFKit in action!

Todo :ballot_box_with_check:
============================
- :heavy_minus_sign: Create great tests and add Coveralls badge
- :heavy_minus_sign: Add support to macOS, watchOS and tvOS
- :heavy_minus_sign: Create a new Example App that shows all the functionalities of BFKit
- :heavy_check_mark: Add Carthage support
- :heavy_check_mark: Add to CocoaPods
- :heavy_check_mark: Create a great documentation

Author :neckbeard:
==================
**Fabrizio Brancati**

[![Website](https://img.shields.io/badge/website-fabriziobrancati.com-4fb0c8.svg)](http://www.fabriziobrancati.com)
<br>
[![Email](https://img.shields.io/badge/email-fabrizio.brancati%40gmail.com-green.svg)](mailto:fabrizio.brancati@gmail.com)

License :scroll:
================
BFKit is available under the MIT license. See the **[LICENSE](https://github.com/FabrizioBrancati/BFKit/blob/master/LICENSE)** file for more info.

[CocoaDocs]: http://cocoadocs.org/docsets/BFKit/1.9.3/
