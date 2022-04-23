// swift-tools-version:5.4

/**
*  Plot
*  Copyright (c) John Sundell 2019
*  MIT license, see LICENSE file for details
*/

import PackageDescription

let package = Package(
    name: "LaTeXPlot",
    products: [
        .library(
            name: "LaTeXPlot",
            targets: ["LaTeXPlot"]
        )
    ],
    targets: [
        .target(name: "LaTeXPlot"),
        .testTarget(
            name: "LaTeXPlotTests",
            dependencies: ["LaTeXPlot"]
        )
    ]
)
