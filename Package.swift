// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "AnyThinkMediationDomainSwitchAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AnyThinkMediationDomainSwitchAdapter",
            targets: ["AnyThinkMediationDomainSwitchAdapterTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/taku-packages/AnyThinkiOS_SPM.git", from: "6.5.60")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkDomainSwitchAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkDomainSwitchAdapter/6.5.91/AnyThinkDomainSwitchAdapter-6.5.91.zip",
            checksum: "d32308bf85f286304e36b917b1edb01b999976a265d16626ef2412283590202f"
        ),
        .target(
            name: "AnyThinkMediationDomainSwitchAdapterTarget",
            dependencies: [
                "AnyThinkDomainSwitchAdapter",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM")
            ],
            path: "Sources/AnyThinkMediationDomainSwitchAdapterTarget"
        )
    ]
)