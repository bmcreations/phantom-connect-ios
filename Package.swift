// swift-tools-version: 5.9
import PackageDescription

let version = "2.0.2"
let checksum = "5f9e39be06c913e3d972cf46acdc29cf4fc97bf9dad3d02c0925bbfecfc177bc"

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
