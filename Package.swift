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
           url: "https://github.com/fast-af/fast-ios-sdk/releases/download/0.1.0/FastCheckout.xcframework.zip",
           checksum: "c434212b652389d6447889939c906cd2155e1f7e44d020202c196ead528fabec"
        )
    ]
)
