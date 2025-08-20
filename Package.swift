// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "YUCIHighPassSkinSmoothing",
    platforms: [
        .iOS(.v16),
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "YUCIHighPassSkinSmoothing",
            targets: ["YUCIHighPassSkinSmoothing"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/artdmk/Vivid.git", branch: "master")
    ],
    targets: [
        .target(
            name: "YUCIHighPassSkinSmoothing",
            dependencies: ["Vivid"],
            path: "Sources",
            publicHeadersPath: "include"
        )
    ]
)
