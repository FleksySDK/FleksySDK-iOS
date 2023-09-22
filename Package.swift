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
            exact: "3.12.27"
        ),
        .package(
            url: "https://github.com/FleksySDK/iOS-CoreServices",
            exact: "1.9.0"
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
            url: "https://spm.fleksy.com/FleksyKeyboardSDK/v4.14.0/FleksyKeyboardSDK.xcframework.zip",
            checksum: "a918c37fa3bc085493d63eef7cfef1eb29a08417562baf5be7249a55ac6d847e"
        ),
    ]
)
