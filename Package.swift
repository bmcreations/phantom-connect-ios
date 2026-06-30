// swift-tools-version: 5.9
import PackageDescription

let version = "2.0.2-1.0.1"
let checksum = "7fb2af963f1423e903f79383db030b00b9ea1870ca5ac1330e0a19b8255a1315"

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
