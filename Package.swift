// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MusicPack1",
    platforms: [
          .iOS(.v14),
          .macOS(.v11)
      ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MusicPack1",
            targets: ["MusicPack1"]),
    ],
    dependencies: [
        .package( url: "https://github.com/GeoffBurns/Effect", from: "0.1.0"),
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MusicPack1",
            dependencies: ["Effect"],
            resources: [
                .process("Monkeys.mp3"),
                .process("Happy.mp3"),
                .process("Dark.mp3"),
                .process("Kool.mp3"),
                .process("Hitman.mp3"),
                .process("Sneaky.mp3"),
                .process("Amok.mp3"),
            ]) 
    ]
)
