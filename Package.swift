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
            exact: "3.5.15"
        ),
    ],
    targets: [
        .target(
            name: "FleksySDK",
            dependencies: [
                .product(name: "FleksyEngine", package: "FleksyEngine-iOS"),
                "FleksyApps",
                "FleksyKeyboardSDK"
            ]
        ),
        .binaryTarget(
            name: "FleksyApps",
            url: "https://spm.fleksy.com/FleksyKeyboardSDK/v4.1.0/FleksyApps.xcframework.zip",
            checksum: "12e266d3834d185b60c0b68c88d4b85cae945e3f9055b758fa1bda94083401d9"
        ),
        .binaryTarget(
            name: "FleksyKeyboardSDK",
            url: "https://spm.fleksy.com/FleksyKeyboardSDK/v4.1.0/FleksyKeyboardSDK.xcframework.zip",
            checksum: "a6c3412c3306a9bcfb0c620e1a498f007aa0bafa4006141fd83e79fb9f0e8d8f"
        ),
    ]
)
