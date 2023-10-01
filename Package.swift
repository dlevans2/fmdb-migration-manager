// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription


let package = Package(
    name: "fmdb-migration-manager",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "FMDBMigrationManager",
            targets: ["FMDBMigrationManager"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ccgus/fmdb.git", .branch("master")),
    ],
    targets: [
        .target(
            name: "FMDBMigrationManager",
            dependencies: [
                .product(name: "FMDB", package: "fmdb")
            ],
            path: "Classes",
            publicHeadersPath: "."
        )
    ]
)
