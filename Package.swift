// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "FleksySDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "FleksySDK",
            targets: ["FleksySDK", "FleksyKeyboardSDK"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/FleksySDK/FleksyEngine-iOS",
            exact: Version(3, 15, 0)
        ),
        .package(
            url: "https://github.com/FleksySDK/iOS-CoreServices",
            exact: Version(1, 13, 0)
        ),
        .package(
            url: "https://github.com/FleksySDK/iOS-FleksyAppsCore",
            exact: Version(1, 3, 0)
        )
    ],
    targets: [
        .target(
            name: "FleksySDK",
            dependencies: [
                .product(name: "FleksyEngine", package: "FleksyEngine-iOS"),
                .product(name: "iOSCoreServices", package: "iOS-CoreServices"),
                .product(name: "FleksyAppsCore", package: "iOS-FleksyAppsCore"),
                "FleksyKeyboardSDK"
            ]
        ),
        .binaryTarget(
            name: "FleksyKeyboardSDK",
            url: "https://spm.fleksy.com/FleksyKeyboardSDK/v4.21.0/FleksyKeyboardSDK.xcframework.zip",
            checksum: "d18885dd708cd6f0546d00038c58935e995e68ea572020c9b7e6f416d6ad3aa1"
        ),
    ]
)
