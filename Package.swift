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
           url: "https://github.com/fast-af/fast-ios-sdk/releases/download/0.1.0-alpha.1/FastCheckout.xcframework.zip",
           checksum: "d65b1b4da6bf1b02b4bf69489f131beb09e258c317cad017251332912eba0ee2"
        )
    ]
)
