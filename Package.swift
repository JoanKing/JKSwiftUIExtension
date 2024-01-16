// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "JKSwiftUIExtension",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "JKSwiftUIExtension",
            targets: ["JKSwiftUIExtension"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "JKSwiftUIExtension",
            path: "Sources"
        )
    ]
)
