/**
*  Plot
*  Copyright (c) John Sundell 2019
*  MIT license, see LICENSE file for details
*/

import XCTest
import LaTeXPlot

func assertEqualLaTeXContent(
    _ document: LaTeX,
    _ content: String,
    file: StaticString = #file,
    line: UInt = #line
) {
    let html = document.render()
//    let expectedPrefix = "<!DOCTYPE html><html>"
//    let expectedSuffix = "</html>"
	let expectedPrefix = "\\begin{document}"
	let expectedSuffix = "\n\\end{document}"

    XCTAssertTrue(
        html.hasPrefix(expectedPrefix),
        """
        Invalid HTML prefix.
        Expected '\(expectedPrefix)'.
        Found '\(html.prefix(expectedPrefix.count))'.
        """,
        file: file,
        line: line
    )

    XCTAssertTrue(
        html.hasSuffix(expectedSuffix),
        """
        Invalid HTML suffix.
        Expected '\(expectedSuffix)'.
        Found '\(html.suffix(expectedSuffix.count))'.
        """,
        file: file,
        line: line
    )

    let expectedContent = html
        .dropFirst(expectedPrefix.count)
        .dropLast(expectedSuffix.count)

    XCTAssertEqual(
        String(expectedContent),
        content,
        file: file,
        line: line
    )
}
