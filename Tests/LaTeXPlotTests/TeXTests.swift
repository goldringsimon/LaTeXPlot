//
//  File.swift
//  
//
//  Created by Simon Goldring on 23/04/2022.
//

import XCTest
import LaTeXPlot

final class TeXTests: XCTestCase {
	func testEmptyTeX() {
		assertEqualTeXContent(TeX(), "")
	}
}

func assertEqualTeXContent(
	_ document: TeX,
	_ content: String,
	file: StaticString = #file,
	line: UInt = #line
) {
	let html = document.render()
//	let expectedPrefix = "<!DOCTYPE html><html>"
//	let expectedSuffix = "</html>"
	let expectedPrefix = ""
	let expectedSuffix = ""

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
