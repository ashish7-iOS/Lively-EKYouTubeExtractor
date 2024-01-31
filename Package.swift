// Package.swift

// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "EKYouTubeExtractor",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "EKYouTubeExtractor",
            targets: ["EKYouTubeExtractor"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ashish7-iOS/Lively-EKYouTubeExtractor.git", .branch("develop")),
    ],
    targets: [
        .target(
            name: "EKYouTubeExtractor",
            dependencies: ["EKYouTubeExtractorModule"],
            path: "Sources"),
        .testTarget(
            name: "EKYouTubeExtractorTests",
            dependencies: ["EKYouTubeExtractor"]),
    ]
)

