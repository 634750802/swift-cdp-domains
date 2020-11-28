// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "swift-cdp-domains",
    platforms: [SupportedPlatform.macOS(.v10_15)],
    products: [
      .library(name: "SwiftCDPDomains", targets: ["SwiftCDPDomains"])
    ],
    dependencies: [
      .package(url: "https://github.com/634750802/swift-cdp.git", from: "0.0.1")
    ],
    targets: [
      .target(
          name: "SwiftCDPDomains",
          dependencies: [
            .product(name: "ChromeDevtoolProtocol", package: "swift-cdp")
          ],
          path: "Sources"
      )
    ]
)