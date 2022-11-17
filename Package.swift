// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "FleksySDK",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "FleksySDK",
            targets: ["FleksySDK", "FleksyKeyboardSDK"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/FleksySDK/FleksyEngine-iOS",
            exact: "3.5.30"
        ),
        .package(
            url: "https://github.com/FleksySDK/iOS-CoreServices",
            exact: "1.3.0"
        )
    ],
    targets: [
        .target(
            name: "FleksySDK",
            dependencies: [
                .product(name: "FleksyEngine", package: "FleksyEngine-iOS"),
                .product(name: "iOSCoreServices", package: "iOS-CoreServices"),
                "FleksyKeyboardSDK"
            ]
        ),
        .binaryTarget(
            name: "FleksyKeyboardSDK",
            url: "https://spm.fleksy.com/FleksyKeyboardSDK/v4.2.5/FleksyKeyboardSDK.xcframework.zip",
            checksum: "d3978bf2c89212187b0f744bb32590a3537c8984cd23232c2ed138cd099d5821"
        ),
    ]
)
