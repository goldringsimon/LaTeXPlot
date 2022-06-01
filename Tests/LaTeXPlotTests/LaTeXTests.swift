/**
*  Plot
*  Copyright (c) John Sundell 2019
*  MIT license, see LICENSE file for details
*/

import XCTest
import LaTeXPlot

final class LaTeXTests: XCTestCase {
    func testEmptyHTML() {
//        assertEqualLaTeXContent(LaTeX(), "")
		let latex = LaTeX(.documentclass(.article))
		let expected = """
\\documentclass{article}
\\begin{document}
\\end{document}
"""
		XCTAssertEqual(latex.render(), expected)
    }

//    func testPageLanguage() {
//        let html = LaTeX(.lang(.english))
//        XCTAssertEqual(html.render(), #"<!DOCTYPE html><html lang="en"></html>"#)
//    }
//
//    func testHeadAndBody() {
//        let html = LaTeX(.head(), .body())
//        assertEqualLaTeXContent(html, "<head></head><body></body>")
//    }
//
//    func testDocumentEncoding() {
//        let html = LaTeX(.head(.encoding(.utf8)))
//        assertEqualLaTeXContent(html, #"<head><meta charset="UTF-8"/></head>"#)
//    }
//
//    func testCSSStylesheet() {
//        let html = LaTeX(.head(.stylesheet("styles.css")))
//        assertEqualLaTeXContent(html, """
//        <head><link rel="stylesheet" href="styles.css" type="text/css"/></head>
//        """)
//    }
//
//    func testInlineCSS() {
//        let html = LaTeX(
//            .head(.style("body { color: #000; }")),
//            .body(.style("color: #fff;"))
//        )
//
//        assertEqualLaTeXContent(html, """
//        <head><style>body { color: #000; }</style></head><body style="color: #fff;"></body>
//        """)
//    }
//
//    func testSiteName() {
//        let html = LaTeX(.head(.siteName("MySite")))
//        assertEqualLaTeXContent(html, """
//        <head><meta name="og:site_name" content="MySite"/></head>
//        """)
//    }
//
//    func testPageURL() {
//        let html = LaTeX(.head(.url("url.com")))
//        assertEqualLaTeXContent(html, """
//        <head>\
//        <link rel="canonical" href="url.com"/>\
//        <meta name="twitter:url" content="url.com"/>\
//        <meta name="og:url" content="url.com"/>\
//        </head>
//        """)
//    }
//
//    func testPageTitle() {
//        let html = LaTeX(.head(.title("Title")))
//        assertEqualLaTeXContent(html, """
//        <head>\
//        <title>Title</title>\
//        <meta name="twitter:title" content="Title"/>\
//        <meta name="og:title" content="Title"/>\
//        </head>
//        """)
//    }
//
//    func testPageDescription() {
//        let html = LaTeX(.head(.description("Description")))
//        assertEqualLaTeXContent(html, """
//        <head>\
//        <meta name="description" content="Description"/>\
//        <meta name="twitter:description" content="Description"/>\
//        <meta name="og:description" content="Description"/>\
//        </head>
//        """)
//    }
//
//    func testSocialImageMetadata() {
//        let html = LaTeX(.head(
//            .socialImageLink("url.png"),
//            .twitterCardType(.summaryLargeImage)
//        ))
//
//        assertEqualLaTeXContent(html, """
//        <head>\
//        <meta name="twitter:image" content="url.png"/>\
//        <meta name="og:image" content="url.png"/>\
//        <meta name="twitter:card" content="summary_large_image"/>\
//        </head>
//        """)
//    }
//
//    func testResponsiveViewport() {
//        let html = LaTeX(.head(.viewport(.accordingToDevice)))
//        assertEqualLaTeXContent(html, """
//        <head><meta name="viewport" content="width=device-width, initial-scale=1.0"/></head>
//        """)
//    }
//
//    func testStaticViewport() {
//        let html = LaTeX(.head(.viewport(.constant(500))))
//        assertEqualLaTeXContent(html, """
//        <head><meta name="viewport" content="width=500, initial-scale=1.0"/></head>
//        """)
//    }
//
//    func testFavicon() {
//        let html = LaTeX(.head(.favicon("icon.png")))
//        assertEqualLaTeXContent(html, """
//        <head><link rel="shortcut icon" href="icon.png" type="image/png"/></head>
//        """)
//    }
//
//    func testRSSFeedLink() {
//        let html = LaTeX(.head(.rssFeedLink("feed.rss", title: "RSS")))
//        assertEqualLaTeXContent(html, """
//        <head><link rel="alternate" href="feed.rss" type="application/rss+xml" title="RSS"/></head>
//        """)
//    }
//
//    func testLinkWithHrefLang() {
//        let html = LaTeX(.head(.link(
//            .rel(.alternate),
//            .href("http://site/"),
//            .hreflang(.english)
//        )))
//
//        assertEqualLaTeXContent(html, """
//        <head><link rel="alternate" href="http://site/" hreflang="en"/></head>
//        """)
//    }
//
//    func testAppleTouchIconLink() {
//        let html = LaTeX(.head(.link(
//            .rel(.appleTouchIcon),
//            .sizes("180x180"),
//            .href("apple-touch-icon.png")
//        )))
//
//        assertEqualLaTeXContent(html, """
//        <head><link rel="apple-touch-icon" sizes="180x180" href="apple-touch-icon.png"/></head>
//        """)
//    }
//
//    func testManifestLink() {
//        let html = LaTeX(.head(.link(
//            .rel(.manifest),
//            .href("site.webmanifest")
//        )))
//
//        assertEqualLaTeXContent(html, """
//        <head><link rel="manifest" href="site.webmanifest"/></head>
//        """)
//    }
//
//    func testMaskIconLink() {
//        let html = LaTeX(.head(.link(
//            .rel(.maskIcon),
//            .href("safari-pinned-tab.svg"),
//            .color("#000000")
//        )))
//
//        assertEqualLaTeXContent(html, """
//        <head><link rel="mask-icon" href="safari-pinned-tab.svg" color="#000000"/></head>
//        """)
//    }
//
//    func testBodyWithID() {
//        let html = LaTeX(.body(.id("anID")))
//        assertEqualLaTeXContent(html, #"<body id="anID"></body>"#)
//    }
//
//    func testBodyWithCSSClass() {
//        let html = LaTeX(.body(.class("myClass")))
//        assertEqualLaTeXContent(html, #"<body class="myClass"></body>"#)
//    }
//
//    func testOverridingBodyCSSClass() {
//        let html = LaTeX(.body(.class("a"), .class("b")))
//        assertEqualLaTeXContent(html, #"<body class="b"></body>"#)
//    }
//
//    func testHiddenElements() {
//        let html = LaTeX(.body(
//            .div(.hidden(false)),
//            .div(.hidden(true))
//        ))
//        assertEqualLaTeXContent(html, "<body><div></div><div hidden></div></body>")
//    }
//
//    func testTitleAttribute() {
//        let html = LaTeX(
//            .head(
//                .link(
//                    .rel(.alternate),
//                    .title("Alternative representation")
//                )
//            ),
//            .body(
//                .div(
//                    .title("Division title"),
//                    .p(.title("Paragraph title"), "Paragraph"),
//                    .a(.href("#"), .title("Link title"), "Link")
//                )
//            )
//        )
//
//        assertEqualLaTeXContent(html, """
//        <head>\
//        <link rel="alternate" title="Alternative representation"/>\
//        </head>\
//        <body>\
//        <div title="Division title">\
//        <p title="Paragraph title">Paragraph</p>\
//        <a href="#" title="Link title">Link</a>\
//        </div>\
//        </body>
//        """)
//    }
//
//    func testUnorderedList() {
//        let html = LaTeX(.body(.ul(.li("Text"))))
//        assertEqualLaTeXContent(html, "<body><ul><li>Text</li></ul></body>")
//    }
//
//    func testOrderedList() {
//        let html = LaTeX(.body(.ol(.li(.span("Text")))))
//        assertEqualLaTeXContent(html, "<body><ol><li><span>Text</span></li></ol></body>")
//    }
//
//    func testDescriptionList() {
//        let html = LaTeX(.body(.dl(
//            .dt("Term"),
//            .dd("Description")
//        )))
//
//        assertEqualLaTeXContent(html, """
//        <body><dl><dt>Term</dt><dd>Description</dd></dl></body>
//        """)
//    }
//
//    func testAnchors() throws {
//        let html = try LaTeX(.body(
//            .a(.href("a.html"), .target(.blank), .text("A")),
//            .a(.href("b.html"), .rel(.nofollow), .text("B")),
//            .a(.href(require(URL(string: "c.html"))), .text("C"))
//        ))
//
//        assertEqualLaTeXContent(html, """
//        <body>\
//        <a href="a.html" target="_blank">A</a>\
//        <a href="b.html" rel="nofollow">B</a>\
//        <a href="c.html">C</a>\
//        </body>
//        """)
//    }
//
//    func testTable() {
//        let html = LaTeX(.body(
//            .table(
//                .caption("Caption"),
//                .tr(.th("Hello")),
//                .tr(.td("World"))
//            )
//        ))
//
//        assertEqualLaTeXContent(html, """
//        <body><table>\
//        <caption>Caption</caption>\
//        <tr><th>Hello</th></tr>\
//        <tr><td>World</td></tr>\
//        </table></body>
//        """)
//    }
//
//    func testTableGroupingSemantics() {
//        let html = LaTeX(
//            .body(
//                .table(
//                    .thead(
//                        .tr(
//                            .th("Column1"),
//                            .th("Column2")
//                        )
//                    ),
//                    .tbody(
//                        .tr(
//                            .td("Body1"),
//                            .td("Body2")
//                        ),
//                        .tr(
//                            .td("Body3"),
//                            .td("Body4")
//                        )
//                    ),
//                    .tfoot(
//                        .tr(
//                            .td("Foot1"),
//                            .td("Foot2")
//                        )
//                    )
//                )
//            )
//        )
//
//        assertEqualLaTeXContent(html, """
//        <body><table>\
//        <thead><tr><th>Column1</th><th>Column2</th></tr></thead>\
//        <tbody><tr><td>Body1</td><td>Body2</td></tr>\
//        <tr><td>Body3</td><td>Body4</td></tr></tbody>\
//        <tfoot><tr><td>Foot1</td><td>Foot2</td></tr></tfoot>\
//        </table></body>
//        """)
//    }
//
//    func testData() {
//        let html = LaTeX(.body(
//            .data(.value("123"), .text("Hello"))
//        ))
//
//        assertEqualLaTeXContent(html, #"<body><data value="123">Hello</data></body>"#)
//    }
//
//    func testEmbeddedObject() {
//        let html = LaTeX(.body(
//            .embed(
//                .src("url"),
//                .type("some/type"),
//                .width(500),
//                .height(300)
//            )
//        ))
//
//        assertEqualLaTeXContent(html, #"""
//        <body><embed src="url" type="some/type" width="500" height="300"/></body>
//        """#)
//    }
//
//    func testForm() {
//        let html = LaTeX(.body(
//            .form(
//                .action("url.com"),
//                .fieldset(
//                    .label(.for("a"), "A label"),
//                    .input(.name("a"), .type(.text))
//                ),
//                .input(.name("b"), .type(.search), .autocomplete(false), .autofocus(true)),
//                .input(.name("c"), .type(.text), .autofocus(false), .readonly(false), .disabled(false)),
//                .input(.name("d"), .type(.email), .placeholder("email address"), .autocomplete(true), .required(true)),
//                .input(.name("e"), .type(.text), .readonly(true), .disabled(true)),
//                .textarea(.name("f"), .cols(50), .rows(10), .required(true), .text("Test")),
//                .textarea(.name("g"), .autofocus(true), .placeholder("Placeholder"), .readonly(false), .disabled(false)),
//                .textarea(.name("h"), .readonly(true), .disabled(true), .text("Test")),
//                .input(.name("i"), .type(.checkbox), .checked(true)),
//                .input(.name("j"), .type(.file), .multiple(true)),
//                .input(.type(.submit), .value("Send"))
//            )
//        ))
//
//        assertEqualLaTeXContent(html, """
//        <body><form action="url.com">\
//        <fieldset>\
//        <label for="a">A label</label>\
//        <input name="a" type="text"/>\
//        </fieldset>\
//        <input name="b" type="search" autocomplete="off" autofocus/>\
//        <input name="c" type="text"/>\
//        <input name="d" type="email" placeholder="email address" autocomplete="on" required/>\
//        <input name="e" type="text" readonly disabled/>\
//        <textarea name="f" cols="50" rows="10" required>Test</textarea>\
//        <textarea name="g" autofocus placeholder="Placeholder"></textarea>\
//        <textarea name="h" readonly disabled>Test</textarea>\
//        <input name="i" type="checkbox" checked/>\
//        <input name="j" type="file" multiple/>\
//        <input type="submit" value="Send"/>\
//        </form></body>
//        """)
//    }
//
//    func testFormContentType() {
//        let html = LaTeX(.body(
//            .form(.enctype(.urlEncoded)),
//            .form(.enctype(.multipartData)),
//            .form(.enctype(.plainText))
//        ))
//
//        assertEqualLaTeXContent(html, """
//        <body>\
//        <form enctype="application/x-www-form-urlencoded"></form>\
//        <form enctype="multipart/form-data"></form>\
//        <form enctype="text/plain"></form>\
//        </body>
//        """)
//    }
//
//    func testFormMethod() {
//        let html = LaTeX(.body(
//            .form(.method(.get)),
//            .form(.method(.post))
//        ))
//
//        assertEqualLaTeXContent(html, """
//        <body>\
//        <form method="get"></form>\
//        <form method="post"></form>\
//        </body>
//        """)
//    }
//
//    func testFormNoValidate() {
//        let html = LaTeX(.body(
//            .form(.novalidate())
//        ))
//
//        assertEqualLaTeXContent(html, """
//        <body>\
//        <form novalidate></form>\
//        </body>
//        """)
//    }
//
//    func testFormWithBodyNodes() {
//        let html = LaTeX(.body(
//            .form(
//                .method(.post),
//                .div(
//                    .class("wrapper"),
//                    .p("Text"),
//                    .input(
//                        .type(.submit),
//                        .value("Action")
//                    )
//                )
//            )
//        ))
//
//        assertEqualLaTeXContent(html, """
//        <body><form method="post"><div class="wrapper">\
//        <p>Text</p><input type="submit" value="Action"/>\
//        </div></form></body>
//        """)
//    }
//
//    func testHeadings() {
//        let html = LaTeX(.body(
//            .h1("One"),
//            .h2("Two"),
//            .h3("Three"),
//            .h4("Four"),
//            .h5("Five"),
//            .h6("Six")
//        ))
//
//        assertEqualLaTeXContent(html, """
//        <body>\
//        <h1>One</h1>\
//        <h2>Two</h2>\
//        <h3>Three</h3>\
//        <h4>Four</h4>\
//        <h5>Five</h5>\
//        <h6>Six</h6>\
//        </body>
//        """)
//    }
//
//    func testParagraph() {
//        let html = LaTeX(.body(.p("Text")))
//        assertEqualLaTeXContent(html, "<body><p>Text</p></body>")
//    }
//
//    func testImage() {
//        let html = LaTeX(.body(
//            .img(
//                .id("id"),
//                .class("image"),
//                .src("image.png"),
//                .alt("Text"),
//                .width(44),
//                .height(44)
//            )
//        ))
//
//        assertEqualLaTeXContent(html, """
//        <body><img id="id" class="image" src="image.png" alt="Text" width="44" height="44"/></body>
//        """)
//    }
//
//    func testAudioPlayer() {
//        let html = LaTeX(.body(
//            .audio(.source(.src("a.mp3"), .type(.mp3))),
//            .audio(.controls(true), .source(.src("b.wav"), .type(.wav))),
//            .audio(.controls(false), .source(.src("c.ogg"), .type(.ogg)))
//        ))
//
//        assertEqualLaTeXContent(html, """
//        <body>\
//        <audio><source src="a.mp3" type="audio/mpeg"/></audio>\
//        <audio controls><source src="b.wav" type="audio/wav"/></audio>\
//        <audio><source src="c.ogg" type="audio/ogg"/></audio>\
//        </body>
//        """)
//    }
//
//    func testVideoPlayer() {
//        let html = LaTeX(.body(
//            .video(.source(.src("a.mp4"), .type(.mp4))),
//            .video(.controls(true), .source(.src("b.webm"), .type(.webM))),
//            .video(.controls(false), .source(.src("c.ogg"), .type(.ogg)))
//        ))
//
//        assertEqualLaTeXContent(html, """
//        <body>\
//        <video><source src="a.mp4" type="video/mp4"/></video>\
//        <video controls><source src="b.webm" type="video/webm"/></video>\
//        <video><source src="c.ogg" type="video/ogg"/></video>\
//        </body>
//        """)
//    }
//
//    func testArticle() {
//        let html = LaTeX(.body(
//            .article(
//                .header(.h1("Title")),
//                .p("Body"),
//                .footer(.span("Footer"))
//            )
//        ))
//
//        assertEqualLaTeXContent(html, """
//        <body><article>\
//        <header><h1>Title</h1></header>\
//        <p>Body</p>\
//        <footer><span>Footer</span></footer>\
//        </article></body>
//        """)
//    }
//
//    func testCode() {
//        let html = LaTeX(.body(
//            .p(.code("hello()")),
//            .pre(.code("world()"))
//        ))
//
//        assertEqualLaTeXContent(html, """
//        <body>\
//        <p><code>hello()</code></p>\
//        <pre><code>world()</code></pre>\
//        </body>
//        """)
//    }
//
//    func testTextStyling() {
//        let html = LaTeX(.body(
//            .b("Bold"),
//            .strong("Bold"),
//            .i("Italic"),
//            .em("Italic"),
//            .u("Underlined"),
//            .s("Strikethrough"),
//            .ins("Inserted"),
//            .del("Deleted"),
//            .small("Small")
//        ))
//
//        assertEqualLaTeXContent(html, """
//        <body>\
//        <b>Bold</b>\
//        <strong>Bold</strong>\
//        <i>Italic</i>\
//        <em>Italic</em>\
//        <u>Underlined</u>\
//        <s>Strikethrough</s>\
//        <ins>Inserted</ins>\
//        <del>Deleted</del>\
//        <small>Small</small>\
//        </body>
//        """)
//    }
//
//    func testIFrame() {
//        let html = LaTeX(.body(
//            .iframe(
//                .src("url.com"),
//                .frameborder(false),
//                .allow("gyroscope"),
//                .allowfullscreen(false)
//            ),
//            .iframe(
//                .allowfullscreen(true)
//            )
//        ))
//
//        assertEqualLaTeXContent(html, """
//        <body>\
//        <iframe src="url.com" frameborder="0" allow="gyroscope"></iframe>\
//        <iframe allowfullscreen></iframe>\
//        </body>
//        """)
//    }
//
//    func testJavaScript() {
//        let html = LaTeX(
//            .head(
//                .script(.src("script.js")),
//                .script(.async(), .src("async.js")),
//                .script(.defer(), .src("deferred.js"))
//            ),
//            .body(.script(#"console.log("Consider going JS-free :)")"#))
//        )
//
//        assertEqualLaTeXContent(html, """
//        <head><script src="script.js"></script>\
//        <script async src="async.js"></script>\
//        <script defer src="deferred.js"></script></head>\
//        <body><script>console.log("Consider going JS-free :)")</script></body>
//        """)
//    }
//
//    func testButton() {
//        let html = LaTeX(.body(
//            .button(.type(.button), .name("Name"), .value("Value"), .text("Text")),
//            .button(.type(.submit), .text("Submit"))
//        ))
//
//        assertEqualLaTeXContent(html, """
//        <body>\
//        <button type="button" name="Name" value="Value">Text</button>\
//        <button type="submit">Submit</button>\
//        </body>
//        """)
//    }
//
//    func testAbbreviation() {
//        let html = LaTeX(.body(
//            .abbr(.title("HyperText Markup Language"), "HTML")
//        ))
//
//        assertEqualLaTeXContent(html, """
//        <body><abbr title="HyperText Markup Language">HTML</abbr></body>
//        """)
//    }
//
//    func testBlockquote() {
//        let html = LaTeX(.body(.blockquote("Quote")))
//        assertEqualLaTeXContent(html, "<body><blockquote>Quote</blockquote></body>")
//    }
//
//    func testListsOfOptions() {
//        let html = LaTeX(.body(
//            .datalist(
//                .option(.value("A")),
//                .option(.value("B"))
//            ),
//            .select(
//                .option(.value("C"), .isSelected(true)),
//                .option(.value("D"), .label("Dee"), .isSelected(false))
//            )
//        ))
//
//        assertEqualLaTeXContent(html, """
//        <body>\
//        <datalist><option value="A"/><option value="B"/></datalist>\
//        <select><option value="C" selected/><option value="D" label="Dee"/></select>\
//        </body>
//        """)
//    }
//
//    func testDetails() {
//        let html = LaTeX(.body(
//            .details(.open(true), .summary("Open Summary"), .p("Text")),
//            .details(.open(false), .summary("Closed Summary"), .p("Text"))
//        ))
//
//        assertEqualLaTeXContent(html, """
//        <body>\
//        <details open><summary>Open Summary</summary><p>Text</p></details>\
//        <details><summary>Closed Summary</summary><p>Text</p></details>\
//        </body>
//        """)
//    }
//
//    func testLineBreak() {
//        let html = LaTeX(.body("One", .br(), "Two"))
//        assertEqualLaTeXContent(html, "<body>One<br/>Two</body>")
//    }
//
//    func testHorizontalLine() {
//        let html = LaTeX(.body("One", .hr(), "Two"))
//        assertEqualLaTeXContent(html, "<body>One<hr/>Two</body>")
//    }
//
//    func testHorizontalLineAttributes() {
//        let html = LaTeX(.body("One", .hr(.class("alternate")), "Two"))
//        assertEqualLaTeXContent(html, #"<body>One<hr class="alternate"/>Two</body>"#)
//    }
//
//    func testNoScript() {
//        let html = LaTeX(.body(.noscript("NoScript")))
//        assertEqualLaTeXContent(html, "<body><noscript>NoScript</noscript></body>")
//    }
//
//    func testNavigation() {
//        let html = LaTeX(.body(.nav("Navigation")))
//        assertEqualLaTeXContent(html, "<body><nav>Navigation</nav></body>")
//    }
//
//    func testSection() {
//        let html = LaTeX(.body(.section("Section")))
//        assertEqualLaTeXContent(html, "<body><section>Section</section></body>")
//    }
//
//    func testAside() {
//        let html = LaTeX(.body(.aside("Aside")))
//        assertEqualLaTeXContent(html, "<body><aside>Aside</aside></body>")
//    }
//
//    func testMain() {
//        let html = LaTeX(.body(.main("Main")))
//        assertEqualLaTeXContent(html, "<body><main>Main</main></body>")
//    }
//
//    func testAccessibilityLabel() {
//        let html = LaTeX(.body(.button(.text("X"), .ariaLabel("Close"))))
//        assertEqualLaTeXContent(html, #"<body><button aria-label="Close">X</button></body>"#)
//    }
//
//    func testAccessibilityControls() {
//        let html = LaTeX(.body(.ul(.li(.id("list"), .ariaControls("div"))), .div(.id("div"))))
//        assertEqualLaTeXContent(html, """
//        <body>\
//        <ul><li id="list" aria-controls="div"></li></ul><div id="div"></div>\
//        </body>
//        """)
//    }
//
//    func testAccessibilityExpanded() {
//        let html = LaTeX(.body(.a(.ariaExpanded(true))))
//        assertEqualLaTeXContent(html, #"<body><a aria-expanded="true"></a></body>"#)
//    }
//
//    func testAccessibilityHidden() {
//        let html = LaTeX(.body(.a(.ariaHidden(true))))
//        assertEqualLaTeXContent(html, #"<body><a aria-hidden="true"></a></body>"#)
//    }
//
//    func testDataAttributes() {
//        let html = LaTeX(.body(
//            .data(named: "user-name", value: "John"),
//            .img(.data(named: "icon", value: "User"))
//        ))
//
//        assertEqualLaTeXContent(html, """
//        <body data-user-name="John"><img data-icon="User"/></body>
//        """)
//    }
//
//    func testSpellcheckAttribute() {
//        let html = LaTeX(
//            .body(
//                .spellcheck(true),
//                .form(
//                    .input(.type(.text), .spellcheck(false)),
//                    .textarea(.spellcheck(false))
//                )
//            )
//        )
//        assertEqualLaTeXContent(html, """
//            <body spellcheck="true">\
//            <form>\
//            <input type="text" spellcheck="false"/>\
//            <textarea spellcheck="false"></textarea>\
//            </form>\
//            </body>
//            """)
//    }
//
//    func testSubresourceIntegrity() {
//        let html = LaTeX(.head(
//            .script(.src("file.js"), .integrity("sha384-fakeHash")),
//            .link(.rel(.stylesheet), .href("styles.css"), .type("text/css"), .integrity("sha512-fakeHash")),
//            .stylesheet("styles2.css", integrity: "sha256-fakeHash")
//        ))
//
//        assertEqualLaTeXContent(html, """
//        <head><script src="file.js" integrity="sha384-fakeHash"></script>\
//        <link rel="stylesheet" href="styles.css" type="text/css" integrity="sha512-fakeHash"/>\
//        <link rel="stylesheet" href="styles2.css" type="text/css" integrity="sha256-fakeHash"/>\
//        </head>
//        """)
//    }
//
//    func testComments() {
//        let html = LaTeX(.comment("Hello"), .body(.comment("World")))
//        assertEqualLaTeXContent(html, "<!--Hello--><body><!--World--></body>")
//    }
//
//    func testPicture() {
//        let html = LaTeX(.body(.picture(
//            .source(
//                .srcset("dark.jpg"),
//                .media("(prefers-color-scheme: dark)")
//            ),
//            .img(.src("default.jpg"))
//        )))
//
//        assertEqualLaTeXContent(html, """
//        <body><picture>\
//        <source srcset="dark.jpg" media="(prefers-color-scheme: dark)"/>\
//        <img src="default.jpg"/>\
//        </picture></body>
//        """)
//    }
//
//    func testOnClick() {
//        let html = LaTeX(
//            .body(
//                .div(
//                    .onclick("javascript:alert('Hello World')")
//                )
//            )
//        )
//        assertEqualLaTeXContent(html, """
//        <body><div onclick="javascript:alert('Hello World')"></div></body>
//        """)
//    }
}
