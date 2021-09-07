// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SourceryDemo",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SourceryDemo",
            targets: ["SourceryDemo"]),
        .library(name: "Shop", targets: ["Shop"])
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-case-paths.git", from: "0.4.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SourceryDemo",
            dependencies: []),
        .testTarget(
            name: "SourceryDemoTests",
            dependencies: ["SourceryDemo"]),
        .target(
            name: "Shop",
            dependencies: [
                .product(name: "CasePaths", package: "swift-case-paths")
            ]
        ),
    ]
)
