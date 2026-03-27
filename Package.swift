// swift-tools-version: 5.9
import PackageDescription

let version = "1.0.0"
let checksum = "b8a8ae573d7d3bf28d516f6d3f4d16241c5345ba0a22d6649ca65efb2152cd27"

let package = Package(
    name: "PhantomConnectSDK",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "PhantomConnectSDK", targets: ["PhantomConnectSDK", "PhantomConnectKMP"])
    ],
    targets: [
        .target(name: "PhantomConnectSDK", dependencies: ["PhantomConnectKMP"], path: "Sources"),
        .binaryTarget(
  name: "PhantomConnectKMP",
  url: "https://github.com/bmcreations/phantom-connect-ios/releases/download/\(version)/PhantomConnectKMP.xcframework.zip",
  checksum: checksum
        )
    ]
)
