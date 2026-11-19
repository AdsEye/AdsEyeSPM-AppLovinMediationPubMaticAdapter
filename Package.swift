// swift-tools-version: 5.9
// 此清单按 Flutter iOS Demo 的锁定版本生成。
import PackageDescription

let package = Package(
    name: "AppLovinMediationPubMaticAdapter",
    platforms: [.iOS(.v13)],
    products: [.library(name: "AppLovinMediationPubMaticAdapter", targets: ["AppLovinMediationPubMaticAdapterWrapper"])],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.1"),
        .package(url: "https://github.com/PubMatic/OpenWrapSDK-Swift-Package.git", exact: "5.0.1"),
    ],
    targets: [
        .target(name: "AppLovinMediationPubMaticAdapterWrapper", dependencies: [.target(name: "AppLovinMediationPubMaticAdapter"), .product(name: "AppLovinSDK", package: "applovin-max-swift-package"), .product(name: "OpenWrapSDK", package: "openwrapsdk-swift-package")]),
        .binaryTarget(name: "AppLovinMediationPubMaticAdapter", url: "https://artifacts.applovin.com/ios/com/applovin/mediation/pubmatic-adapter/AppLovinMediationPubMaticAdapter-5.0.1.0.zip", checksum: "8c67b5ca3998b5bff0b774a667d91aba2168aa959fb9d7df3bdfe67774043ed3"),
    ]
)
