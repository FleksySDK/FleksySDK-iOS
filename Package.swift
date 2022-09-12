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
            exact: "3.5.22"
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
            url: "https://spm.fleksy.com/FleksyKeyboardSDK/v4.1.9/FleksyApps.xcframework.zip",
            checksum: "d64dd626a87db4cdc57234ed8a0c9fe403669f2b210f58ac4bf53c69e898ef06"
        ),
        .binaryTarget(
            name: "FleksyKeyboardSDK",
            url: "https://spm.fleksy.com/FleksyKeyboardSDK/v4.1.9/FleksyKeyboardSDK.xcframework.zip",
            checksum: "ff724ab3874670fad660d073a16384061e963b9b47e1319c0662dfa52b3c1a00"
        ),
    ]
)
