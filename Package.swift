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
           url: "https://github.com/fast-af/fast-ios-sdk/releases/download/0.1.0-alpha.7/FastCheckout.xcframework.zip",
           checksum: "81832b40ef223f6af28ca18a2f640148b0666f27c0e1ec6b425f2ef655464977"
        )
    ]
)
