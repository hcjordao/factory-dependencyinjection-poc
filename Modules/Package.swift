// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Modules",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "Modules",
            targets: [
                // MARK: Core
                "CoreArchitecture",
                "CoreUI",

                // MARK: Feature A
                "FeatureA-Implementation",
                "FeatureA-Interface",

                // MARK: Feature B
                "FeatureB-Implementation",
                "FeatureB-Interface",

                // MARK: Feature Keychain
                "FeatureKeychain-Implementation",
                "FeatureKeychain-Interface",

                // MARK: Application
                "Application"
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/hmlongco/Factory", .upToNextMajor(from: "1.2.8")),
        .package(url: "https://github.com/evgenyneu/keychain-swift.git", from: "19.0.0"),
    ],
    targets: [
        // MARK: - Core Architecture
        .target(
            name: "CoreArchitecture",
            dependencies: []
        ),

        // MARK: - Core Architecture
        .target(
            name: "CoreUI",
            dependencies: []
        ),

        // MARK: - Feature A
        // MARK: Implementation
        .target(
            name: "FeatureA-Implementation",
            dependencies: [
                "CoreUI",
                "FeatureA-Interface"
            ]
        ),

        // MARK: Interface
        .target(
            name: "FeatureA-Interface",
            dependencies: [
                "CoreArchitecture"
            ]
        ),

        // MARK: - Feature B
        // MARK: Implementation
        .target(
            name: "FeatureB-Implementation",
            dependencies: [
                "FeatureB-Interface",
                "FeatureKeychain-Interface"
            ]
        ),

        // MARK: Interface
        .target(
            name: "FeatureB-Interface",
            dependencies: []
        ),

        // MARK: - Feature Keychain
        // MARK: Implementation
        .target(
            name: "FeatureKeychain-Implementation",
            dependencies: [
                "FeatureKeychain-Interface",
                .product(name: "KeychainSwift", package: "keychain-swift")
            ]
        ),

        // MARK: Interface
        .target(
            name: "FeatureKeychain-Interface",
            dependencies: []
        ),

        // MARK: - Main Application
        .target(
            name: "Application",
            dependencies: [
                "Factory",
                "FeatureA-Implementation",
                "FeatureA-Interface",
                "FeatureB-Implementation",
                "FeatureB-Interface",
                "FeatureKeychain-Implementation",
                "FeatureKeychain-Interface"
            ]
        ),
        .testTarget(
            name: "ApplicationTests",
            dependencies: [
                "Application"
            ]
        )
    ]
)
