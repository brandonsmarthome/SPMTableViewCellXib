// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPMTableViewCellXib",
    platforms: [.iOS(.v11)],
    products: [
        .library(name: "SPMTableViewCellXib", targets: ["SPMTableViewCellXib"]),
    ],
    targets: [
        .target(name: "SPMTableViewCellXib", 
                dependencies: [],
                path: "./SPMTableViewCellXib",
                resources: [.process("View.xib")])
    ]
)
