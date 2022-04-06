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
            url: "https://spm.fleksy.com/FleksyKeyboardSDK/v4.0.4/FleksyApps.xcframework.zip",
            checksum: "ad6fe69d9f9b20d2ace273a0649953d0ea3ee5b605762874a242a8d59addced1"
        ),
        .binaryTarget(
            name: "FleksyKeyboardSDK",
            url: "https://spm.fleksy.com/FleksyKeyboardSDK/v4.0.4/FleksyKeyboardSDK.xcframework.zip",
            checksum: "a8d1deb107c938a56ff3549c34dea6ba6613a4640177efe4b659ca75f188da3a"
        ),
        .binaryTarget(
            name: "ServiceFramework",
            url: "https://spm.fleksy.com/FleksyKeyboardSDK/v4.0.4/ServiceFramework.xcframework.zip",
            checksum: "e4d92019f6848fd7a5f2e5ee7c68abc084f9cacae06505f16bfcca4049193e78"
        ),
    ]
)
