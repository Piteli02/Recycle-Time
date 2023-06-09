// swift-tools-version: 5.6

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "Recycle Time",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "Recycle Time",
            targets: ["AppModule"],
            bundleIdentifier: "caiopiteli.TrashCollection",
            teamIdentifier: "Q92SD7R6D3",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .asset("AppIcon"),
            accentColor: .presetColor(.mint),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)