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
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkDomainSwitchAdapter/10.0.0/AnyThinkDomainSwitchAdapter-10.0.0.zip",
            checksum: "7206542c60ace67861d6dba11defc5fd13dde542e0b6ca8743d6f59c3ef8886b"
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