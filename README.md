# OKHBuilder

[![CI Status](https://img.shields.io/travis/on1key@foxmail.com/OKHBuilder.svg?style=flat)](https://travis-ci.org/on1key@foxmail.com/OKHBuilder)
[![Version](https://img.shields.io/cocoapods/v/OKHBuilder.svg?style=flat)](https://cocoapods.org/pods/OKHBuilder)
[![License](https://img.shields.io/cocoapods/l/OKHBuilder.svg?style=flat)](https://cocoapods.org/pods/OKHBuilder)
[![Platform](https://img.shields.io/cocoapods/p/OKHBuilder.svg?style=flat)](https://cocoapods.org/pods/OKHBuilder)

OKHbuilder is a pod for uni-app, based on the official version 3.2.2, it includes basic functions and some extensions.

## Example

- Create your cocoapods project, in the podfile, run `pod install`.
- In your project root file, create file path `Pandora/apps/your app id/www/`, copy uni-app build files into this path.
- Create `control.xml` file, like the example in the example project file, remind to change it to your app id.
- Add a appkey line as in the example to your `Info.plist`, then have fun!

<!-- ## Requirements -->

## Installation

OKHBuilder is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'OKHBuilder'
```

The first three basic class libraries listed below are included by default. If other class libraries are required, they need to be manually integrated like this:

```ruby
pod 'OKHBuilder/Location'
```

| Basic | Extension |
| :---- | :----- |
| OKHBuilder/Base 	| OKHBuilder/Location       |
| OKHBuilder/Tool 	| OKHBuilder/Camera     	|
| OKHBuilder/Third      | OKHBuilder/Barcode 	|
|  					| OKHBuilder/Audio 		|


## Author

on1key@foxmail.com

## License

OKHBuilder is available under the MIT license. See the LICENSE file for more info.
