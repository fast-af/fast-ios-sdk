# FastCheckout

Welcome to the FastCheckout SDK which lets you offer your users a one-click checkout experience with Fast.

**Table of Contents**

<!-- toc -->

- [FastCheckout](#fastcheckout)
  - [Requirements](#requirements)
  - [Installation](#installation)
    - [XCFrameworks](#xcframeworks)
    - [CocoaPods](#cocoapods)
    - [Carthage](#carthage)
    - [Swift Package Manager](#swift-package-manager)

<!-- tocstop -->

## Requirements

- Xcode 12.x
- Swift 5.x

## Installation

FastCheckout doesn't contain any external dependencies.

These are currently the supported installation options:

### XCFrameworks

Each release of FastCheckout includes `*.xcframework` framework binaries.

Simply drag the needed framework binaries to your **Frameworks, Libraries, and Embedded Content** section under your target's **General** tab.

### [CocoaPods](https://guides.cocoapods.org/using/using-cocoapods.html)

```ruby
# Podfile
use_frameworks!

target 'YOUR_TARGET_NAME' do
    pod 'FastCheckout'
end
```

Replace `YOUR_TARGET_NAME` and then, in the `Podfile` directory, type:

```bash
$ pod install
```

### [Carthage](https://github.com/Carthage/Carthage)

Add this to `Cartfile`

```
binary "https://raw.githubusercontent.com/fast-af/fast-ios-sdk/0.1.0/FastCheckout.json"
```

```bash
$ carthage update
```

### [Swift Package Manager](https://github.com/apple/swift-package-manager)

Create a `Package.swift` file.

```swift
// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "YourProjectName",
  dependencies: [
    .package(url: "https://github.com/fast-af/fast-ios-sdk.git", .exact("0.1.0"))
  ],
  targets: [
    .target(name: "YourProjectName", dependencies: ["FastCheckout"])
  ]
)
```

```bash
$ swift build
```
