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
           url: "https://github.com/fast-af/fast-ios-sdk/releases/download/0.1.0-alpha.2/FastCheckout.xcframework.zip",
           checksum: "f755ed1984e40834bcd72085f139dc5a45bb1835966d22caea36b682723cebe7"
        )
    ]
)
