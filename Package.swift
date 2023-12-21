// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.5"
let checksum = "d75dc55eb20139713b8649ddea0d7b323fdd69116e39da2212dc5fca93d730c8"
let repoName = "UECrashReporter"

let package = Package(
    name: "UECrashReporter",
    
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "UECrashReporter",
            targets: ["UECrashReporterWrapper", "UECrashReporter"]
        ),
    ],
    
    dependencies: [],
    
    targets: [
        .target(
                name: "UECrashReporterWrapper",
                path: "UECrashReporterWrapper",
                exclude: ["README.md"]
        ),
        .binaryTarget(
            name: "UECrashReporter",
            url: "https://raw.githubusercontent.com/UserExperior/\(repoName)/\(version)/UECrashReporter.xcframework.zip",
            checksum: checksum
        )
    ]
)

