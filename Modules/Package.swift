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
                "FeatureC-Implementation",
                "FeatureC-Interface",

                "FeatureB-Implementation",
                "FeatureB-Interface",

                "FeatureA-Implementation",
                "FeatureA-Interface",

                "Application"
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/hmlongco/Factory", .upToNextMajor(from: "1.2.8"))
    ],
    targets: [
        // MARK: - Feature A
        // MARK: Implementation
        .target(
            name: "FeatureA-Implementation",
            dependencies: [
                "FeatureA-Interface"
            ]
        ),
        .testTarget(
            name: "FeatureA-ImplementationTests",
            dependencies: [
                "FeatureA-Implementation"
            ]
        ),

        // MARK: Interface
        .target(
            name: "FeatureA-Interface",
            dependencies: [
                "FeatureB-Interface"
            ]
        ),

        // MARK: - Feature B
        // MARK: Implementation
        .target(
            name: "FeatureB-Implementation",
            dependencies: [
                "FeatureB-Interface"
            ]
        ),
        .testTarget(
            name: "FeatureB-ImplementationTests",
            dependencies: [
                "FeatureB-Implementation"
            ]
        ),

        // MARK: Interface
        .target(
            name: "FeatureB-Interface",
            dependencies: [
                // TODO: Declare dependencies
            ]
        ),

        // MARK: - Feature C
        // MARK: Implementation
        .target(
            name: "FeatureC-Implementation",
            dependencies: [
                "FeatureC-Interface"
            ]
        ),
        .testTarget(
            name: "FeatureC-ImplementationTests",
            dependencies: [
                "FeatureC-Implementation"
            ]
        ),

        // MARK: Interface
        .target(
            name: "FeatureC-Interface",
            dependencies: [
                // TODO: Declare dependencies
            ]
        ),

        // MARK: - Main Application
        .target(
            name: "Application",
            dependencies: [
                "FeatureC-Implementation",
                "FeatureC-Interface",
                "FeatureB-Implementation",
                "FeatureB-Interface",
                "FeatureA-Implementation",
                "FeatureA-Interface",
                "Factory"
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
