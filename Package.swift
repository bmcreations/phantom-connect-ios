// swift-tools-version: 5.9
import PackageDescription

let version = "1.0.0"
let checksum = "b482f83d46e01be7fb8fbda4956717d55a1da928ad998c9e9685b4a1577611c3"

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
