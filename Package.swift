// swift-tools-version:5.4

import PackageDescription

let package = Package(
  name: "MarkdownUI",
  platforms: [
    .macOS(.v11),
    .iOS(.v14),
    .tvOS(.v14),
  ],
  products: [
    .library(
      name: "MarkdownUI",
      targets: ["MarkdownUI"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/apple/swift-markdown.git", .branch("main")), 
    .package(
      name: "AttributedText",
      url: "https://github.com/gonzalezreal/AttributedText",
      from: "1.0.0"
    ),
    .package(
      name: "NetworkImage",
      url: "https://github.com/gonzalezreal/NetworkImage",
      from: "4.0.0"
    ),
    .package(url: "https://github.com/pointfreeco/combine-schedulers", from: "0.5.3"),
    .package(
      name: "SnapshotTesting",
      url: "https://github.com/pointfreeco/swift-snapshot-testing",
      from: "1.9.0"
    ),
  ],
  targets: [
    .target(
      name: "MarkdownUI",
      dependencies: [
        .product(name: "Markdown", package: "swift-markdown"),
        "AttributedText",
        "NetworkImage",
        .product(name: "CombineSchedulers", package: "combine-schedulers"),
      ]
    ),
    .testTarget(
      name: "MarkdownUITests",
      dependencies: [
        "MarkdownUI",
        "SnapshotTesting",
      ],
      exclude: ["__Snapshots__"]
    ),
  ]
)
