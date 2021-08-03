// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Extention",
    platforms: [
           .iOS(.v13)
       ],
    products: [
        .library(
            name: "Extention",
            targets: ["Extention"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Extention",
            dependencies: []),
        .testTarget(
            name: "ExtentionTests",
            dependencies: ["Extention"]),
    ]
)
