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
            exact: "3.5.14"
        ),
    ],
    targets: [
        .target(
            name: "FleksySDK",
            dependencies: [
                .product(name: "FleksyEngine", package: "FleksyEngine-iOS"),
                "FleksyApps",
                "FleksyKeyboardSDK",
                "ServiceFramework"
            ]
        ),
        .binaryTarget(
            name: "FleksyApps",
            url: "https://spm.fleksy.com/FleksyKeyboardSDK/v4.0.3/FleksyApps.xcframework.zip",
            checksum: "29e6d405b379b7ebb421e9a260088ee6b028ce4f3b929bdcfe81fc022a860b9e"
        ),
        .binaryTarget(
            name: "FleksyKeyboardSDK",
            url: "https://spm.fleksy.com/FleksyKeyboardSDK/v4.0.3/FleksyKeyboardSDK.xcframework.zip",
            checksum: "fb8c4f5364654e2c5f48b62bf99f62e1d71f8f833935ef8e99fa071bae0a82a6"
        ),
        .binaryTarget(
            name: "ServiceFramework",
            url: "https://spm.fleksy.com/FleksyKeyboardSDK/v4.0.3/ServiceFramework.xcframework.zip",
            checksum: "e9f9a615422e84bc9a775d819389c4aedee7cc31a4cf46bc93eb5c211d24ad8a"
        ),
    ]
)
