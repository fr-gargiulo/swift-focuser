// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Focuser",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "Focuser",
            targets: ["Focuser"]),
    ],
    dependencies: [
		.package(url: "https://github.com/siteline/swiftui-introspect", from: "26.0.0"),
    ],
    targets: [
        .target(
            name: "Focuser",
            dependencies: [
				.product(name: "SwiftUIIntrospect", package: "swiftui-introspect"),
			]),
        .testTarget(
            name: "FocuserTests",
            dependencies: ["Focuser"]),
    ]
)
