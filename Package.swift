// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AnyThinkMediationInmobiAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AnyThinkMediationInmobiAdapter",
            targets: ["AnyThinkMediationInmobiAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/TakuMediation-packages/AnyThinkiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/InMobi/InMobiSDK-Swift-Package.git", exact: "11.4.1")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkInmobiAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkInmobiAdapter/11.4.1.2.0/AnyThinkInmobiAdapter-11.4.1.2.0.zip",
            checksum: "4c584b833ff966d63adef6781bc798efcfb06b2e97e98427c588998b3ffb1fa7"
        ),
        .target(
            name: "AnyThinkMediationInmobiAdapterTarget",
            dependencies: [
                "AnyThinkInmobiAdapter",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM"),
                .product(name: "InMobiSDK", package: "InMobiSDK-Swift-Package")
            ],
            path: "Sources/AnyThinkMediationInmobiAdapterTarget"
        )
    ]
)
