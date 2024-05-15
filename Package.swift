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
            exact: Version(3, 17, 0)
        ),
        .package(
            url: "https://github.com/FleksySDK/iOS-CoreServices",
            exact: Version(1, 15, 3)
        ),
        .package(
            url: "https://github.com/FleksySDK/iOS-FleksyAppsCore",
            exact: Version(1, 3, 2)
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
            url: "https://spm.fleksy.com/FleksyKeyboardSDK/v4.24.0/FleksyKeyboardSDK.xcframework.zip",
            checksum: "99339df1f1b8cbafd66a66a407d1325612dbc6ba14967d45534004813345c6f2"
        ),
    ]
)
