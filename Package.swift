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
            exact: "3.12.4"
        ),
        .package(
            url: "https://github.com/FleksySDK/iOS-CoreServices",
            exact: "1.4.0"
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
            url: "https://spm.fleksy.com/FleksyKeyboardSDK/v4.9.2/FleksyKeyboardSDK.xcframework.zip",
            checksum: "bbf0496775f4fb49a845a158fa2e636e61e0c1901ffe1a729a51e66f3b9f4125"
        ),
    ]
)
