// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "GCDWebServer",
    platforms: [
        .iOS(.v13),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "GCDWebServer",
            targets: ["GCDWebServer"]
        ),
    ],
    dependencies: [
        // GCDWebServer from the official repo
        .package(url: "https://github.com/asktao/GCDWebServer.git", from: "3.6.4")
    ],
    targets: [
        .target(
            name: "GCDWebServer",
            dependencies: [
                .product(name: "GCDWebServer", package: "GCDWebServer")
            ],
            path: "Sources"
        ),
        .testTarget(
            name: "GCDWebServerExampleTests",
            dependencies: ["GCDWebServerExample"]
        ),
    ]
)
