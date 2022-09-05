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
            url: "https://spm.fleksy.com/FleksyKeyboardSDK/v4.1.8/FleksyApps.xcframework.zip",
            checksum: "0520300c87a82fb4a3450d0d638287cc5f08761517a8aa210550a98069b83013"
        ),
        .binaryTarget(
            name: "FleksyKeyboardSDK",
            url: "https://spm.fleksy.com/FleksyKeyboardSDK/v4.1.8/FleksyKeyboardSDK.xcframework.zip",
            checksum: "6833cacc2273483e152fb2b5e72c7af9379e4361c7bcaba445efa663fd5bde56"
        ),
    ]
)
