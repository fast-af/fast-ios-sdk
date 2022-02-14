// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "FastCheckout",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "FastCheckout",
            targets: ["FastCheckout"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
           name: "FastCheckout",
           url: "https://github.com/fast-af/fast-ios-sdk/releases/download/0.1.0-alpha/FastCheckout.xcframework.zip",
           checksum: "747a70914787fe6a694f6ee98aab60f81354af6680ed5c976d7a0acfb40a43a0"
        )
    ]
)
