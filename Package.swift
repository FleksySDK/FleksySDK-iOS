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
            exact: "3.5.19"
        ),
        .package(
            url: "https://github.com/FleksySDK/iOS-CoreServices",
            exact: "1.0.0"
        )
    ],
    targets: [
        .target(
            name: "FleksySDK",
            dependencies: [
                .product(name: "FleksyEngine", package: "FleksyEngine-iOS"),
                .product(name: "iOSCoreServices", package: "iOS-CoreServices"),
                "FleksyApps",
                "FleksyKeyboardSDK"
            ]
        ),
        .binaryTarget(
            name: "FleksyApps",
            url: "https://spm.fleksy.com/FleksyKeyboardSDK/v4.1.6/FleksyApps.xcframework.zip",
            checksum: "3c7a2dc94c779da8989d9cb7780174ef5ee535e6abb47fb7129b497463758538"
        ),
        .binaryTarget(
            name: "FleksyKeyboardSDK",
            url: "https://spm.fleksy.com/FleksyKeyboardSDK/v4.1.6/FleksyKeyboardSDK.xcframework.zip",
            checksum: "1854c4888a457c4c346d36b08d6b0a8f1982b3d50c043136e721010307cf316b"
        ),
    ]
)
