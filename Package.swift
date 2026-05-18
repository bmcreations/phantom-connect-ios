// swift-tools-version: 5.9
import PackageDescription

let version = "2.0.2-1.0.0"
let checksum = "9c3c8bcb379b1816b862e4d7a4f0a65e5fd98d2ff1899ad29754d2d3b46da762"

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
