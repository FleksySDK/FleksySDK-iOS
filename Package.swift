// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "FleksySDK",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "FleksySDK",
            targets: ["FleksySDK", "FleksyKeyboardSDK"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/FleksySDK/FleksyEngine-iOS",
            exact: "3.12.18"
        ),
        .package(
            url: "https://github.com/FleksySDK/iOS-CoreServices",
            exact: "1.8.1"
        ),
        .package(
            url: "https://github.com/FleksySDK/iOS-FleksyAppsCore",
            exact: "1.1.1"
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
            url: "https://spm.fleksy.com/FleksyKeyboardSDK/v4.11.0/FleksyKeyboardSDK.xcframework.zip",
            checksum: "f7dc7a6363e520aab54660c7bdaf697ec9cf3dfb434e1e9eef1dad911129bff5"
        ),
    ]
)
