# Install the SDK

Welcome to the FastCheckout SDK which lets you offer users of your iOS app a one-click checkout experience with Fast.

**Table of Contents**

<!-- toc -->

- [Requirements](#requirements)
- [Installation Options](#installation-options)
    - [XCFrameworks](#xcframeworks)
    - [CocoaPods](#cocoapods)
    - [Carthage](#carthage)
    - [Swift Package Manager](#swift-package-manager)

<!-- tocstop -->

## Requirements

- Xcode 12.x
- Swift 5.x

## Installation Options

FastCheckout doesn't contain any external dependencies. Below are the currently supported installation options:

### XCFrameworks

Though a package manager (e.g. [CocoaPods](#cocoapods) below) is recommended to ensure easy updates, Fast can also be added to your app directly.

1. Each release of FastCheckout includes `*.xcframework` framework binaries.
    - [Download the latest release here.](https://github.com/fast-af/fast-ios-sdk/releases/latest)
2. In the XCode project navigator, simply drag the needed framework binaries to the **Frameworks, Libraries, and Embedded Content** section under your target's **General** tab.
    - Marke sure "*Embed & Sign*" is selected

### [CocoaPods](https://guides.cocoapods.org/using/using-cocoapods.html)

1. If you haven't already, [install the latest version of CocoaPods](https://guides.cocoapods.org/using/using-cocoapods.html).
2. If your project doesn't already have an associated _Podfile_, you can create one from your project root in the terminal:
     ```bash
     pod init
     ```
3. Add the following to your _Podfile_ to add `FastCheckout` as a dependency.
    ```ruby
    # Podfile
    use_frameworks!

    target 'YOUR_TARGET_NAME' do
        pod 'FastCheckout'
    end
    ```
   - You will need to Replace `YOUR_TARGET_NAME` with your project target.
4. Save the changes made to the _Podfile_.
5. In the project root with the _Podfile_ run the following from the terminal:
    ```bash
    $ pod install
    ```

### [Carthage](https://github.com/Carthage/Carthage)

1. If you haven't already, download [Carthage](https://github.com/Carthage/Carthage).
    ```bash
    brew install carthage
    ```
2. In the terminal, navigate to your Xcode project’s directory (i.e. the location of your .xcodeproj or .xcworkspace file).
3. Perform Carthage set up steps:
    - Option 1: Automatically use the latest release 
    ```bash
    touch Cartfile
    echo -e "github /fast-af/fast-ios-sdk/" >> Cartfile
    carthage update --use-xcframeworks
    ```
    - Option 2: Use a specific release
    ```bash
    touch Cartfile
    echo -e "binary \"https://raw.githubusercontent.com/fast-af/fast-ios-sdk/0.1.0-alpha.2/FastCheckout.json\" >> Cartfile
    carthage update --use-xcframeworks
    ```
   
4. Verify that the `cartfile.resolved` file and `Carthage/Build` folder with `FastCheckout.xcframework` file were created.


### [Swift Package Manager](https://github.com/apple/swift-package-manager)

1. Create a `Package.swift` file.

    ```swift
    // swift-tools-version:5.0

    import PackageDescription

    let package = Package(
      name: "YourProjectName",
      dependencies: [
        .package(url: "https://github.com/fast-af/fast-ios-sdk.git", .exact("0.1.0-alpha.2"))
      ],
      targets: [
        .target(name: "YourProjectName", dependencies: ["FastCheckout"])
      ]
    )
    ```
    - You will need to Replace `YourProjectName` with your project target.
2. Save your changes made to `Package.swift`
3. Compile your module.
    ```bash
    $ swift build
    ```
