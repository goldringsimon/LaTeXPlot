/**
*  Plot
*  Copyright (c) John Sundell 2019
*  MIT license, see LICENSE file for details
*/

// MARK: - Comments

public extension Node where Context: HTMLContext {
    /// Add an HTML comment within the current context.
    /// - parameter text: The comment's text.
    static func comment(_ text: String) -> Node {
        .group(.raw("<!--"), .text(text), .raw("-->"))
    }
}

// MARK: - Root

public extension Element where Context == LaTeX.RootContext {
    /// Add an HTML `!DOCTYPE` declaration to the document.
    /// - parameter type: The type of document to declare.
    /// You typically never have to call this API yourself, since Plot
    /// will automatically add this declaration at the top of all HTML
    /// documents that are created using the `HTML` type's initializer.
    static func documentclass(_ documentclass: String) -> Element {
        Element(name: "documentclass", closingMode: .neverClosed, nodes: [
            Node<LaTeX.RootContext>.attribute(named: documentclass)
        ])
    }

    /// Add a root `\documentClass{}` element to the document.
    /// - parameter nodes: The element's attributes and child elements.
    /// You typically never have to call this API yourself, since Plot
    /// will automatically add this element at the root of all HTML
    /// documents that are created using the `HTML` type's initializer.
    static func document(_ nodes: Node<LaTeX.DocumentContext>...) -> Element {
        Element(name: "document", nodes: nodes)
    }
}

// MARK: - Document

public extension Node where Context == LaTeX.DocumentContext {
    /// Add a `<head>` HTML element within the current context, which
    /// contains non-visual elements, such as stylesheets and metadata.
    /// - parameter nodes: The element's attributes and child elements.
    static func head(_ nodes: Node<LaTeX.HeadContext>...) -> Node {
        .element(named: "head", nodes: nodes)
    }

    /// Add a `<body>` HTML element within the current context, which
    /// makes up the renderable body of the page.
    /// - parameter nodes: The element's attributes and child elements.
    static func body(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "body", nodes: nodes)
    }

    /// Add a `<body>` HTML element within the current context, which
    /// makes up the renderable body of the page, and populate that element
    /// with a set of components.
    /// - parameter content: A closure that creates the components that
    ///   should make up this element's content.
    static func body(@ComponentBuilder _ content: @escaping () -> Component) -> Node {
        .body(.component(content()))
    }
}

// MARK: - Head

public extension Node where Context == LaTeX.HeadContext {
    /// Add a `<link/>` HTML element within the current context.
    /// - parameter attributes: The element's attributes.
    static func link(_ attributes: Attribute<LaTeX.LinkContext>...) -> Node {
        .selfClosedElement(named: "link", attributes: attributes)
    }

    /// Add a `<meta/>` HTML element within the current context.
    /// - parameter attributes: The element's attributes.
    static func meta(_ attributes: Attribute<LaTeX.MetaContext>...) -> Node {
        .selfClosedElement(named: "meta", attributes: attributes)
    }

    /// Add a `<style>` HTML element within the current context.
    /// - parameter css: The CSS code that the element should contain.
    static func style(_ css: String) -> Node {
        .element(named: "style", nodes: [.raw(css)])
    }
}

// MARK: - Body

public extension Node where Context: LaTeX.BodyContext {
    /// Add an `<a>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func a(_ nodes: Node<LaTeX.AnchorContext>...) -> Node {
        .element(named: "a", nodes: nodes)
    }

    /// Add an `<abbr>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func abbr(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "abbr", nodes: nodes)
    }

    /// Add an `<article>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func article(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "article", nodes: nodes)
    }

    /// Add a `<aside>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func aside(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "aside", nodes: nodes)
    }

    /// Add an `<audio>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func audio(_ nodes: Node<LaTeX.AudioContext>...) -> Node {
        .element(named: "audio", nodes: nodes)
    }

    /// Add a `<b>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func b(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "b", nodes: nodes)
    }

    /// Add a `<blockquote>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func blockquote(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "blockquote", nodes: nodes)
    }

    /// Add a `<br/>` HTML element within the current context.
    static func br() -> Node {
        .selfClosedElement(named: "br")
    }

    /// Add a `<button>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func button(_ nodes: Node<LaTeX.ButtonContext>...) -> Node {
        .element(named: "button", nodes: nodes)
    }

    /// Add a `<code>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func code(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "code", nodes: nodes)
    }

    /// Add a `<data>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func data(_ nodes: Node<LaTeX.DataContext>...) -> Node {
        .element(named: "data", nodes: nodes)
    }

    /// Add a `<datalist>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func datalist(_ nodes: Node<LaTeX.DataListContext>...) -> Node {
        .element(named: "datalist", nodes: nodes)
    }

    /// Add a `<del>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func del(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "del", nodes: nodes)
    }

    /// Add a `<details>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func details(_ nodes: Node<LaTeX.DetailsContext>...) -> Node {
        .element(named: "details", nodes: nodes)
    }

    /// Add a `<div>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func div(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "div", nodes: nodes)
    }

    /// Add a `<dl>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func dl(_ nodes: Node<LaTeX.DescriptionListContext>...) -> Node {
        .element(named: "dl", nodes: nodes)
    }

    /// Add an `<em>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func em(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "em", nodes: nodes)
    }

    /// Add an `<embed/>` HTML element within the current context.
    /// - parameter attribues: The element's attributes.
    static func embed(_ attributes: Attribute<LaTeX.EmbedContext>...) -> Node {
        .selfClosedElement(named: "embed", attributes: attributes)
    }

    /// Add a `<fieldset>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func fieldset(_ nodes: Node<LaTeX.FormContext>...) -> Node {
        .element(named: "fieldset", nodes: nodes)
    }

    /// Add a `<form>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func form(_ nodes: Node<LaTeX.FormContext>...) -> Node {
        .element(named: "form", nodes: nodes)
    }

    /// Add a `<footer>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func footer(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "footer", nodes: nodes)
    }

    /// Add a `<h1>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func h1(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "h1", nodes: nodes)
    }

    /// Add a `<h2>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func h2(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "h2", nodes: nodes)
    }

    /// Add a `<h3>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func h3(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "h3", nodes: nodes)
    }

    /// Add a `<h4>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func h4(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "h4", nodes: nodes)
    }

    /// Add a `<h5>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func h5(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "h5", nodes: nodes)
    }

    /// Add a `<h6>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func h6(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "h6", nodes: nodes)
    }

    /// Add a `<header>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func header(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "header", nodes: nodes)
    }

    /// Add a `<hr/>` HTML element within the current context.
    /// - parameter attributes: The element's attributes.
    static func hr(_ attributes: Attribute<LaTeX.BodyContext>...) -> Node {
        .selfClosedElement(named: "hr", attributes: attributes)
    }

    /// Add an `<i>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func i(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "i", nodes: nodes)
    }

    /// Add an `<iframe>` HTML element within the current context.
    /// - parameter attributes: The element's attributes.
    static func iframe(_ attributes: Attribute<LaTeX.IFrameContext>...) -> Node {
        .element(named: "iframe", attributes: attributes)
    }

    /// Add an `<input/>` HTML element within the current context.
    /// - parameter nodes: The element's attributes.
    static func input(_ attributes: Attribute<LaTeX.InputContext>...) -> Node {
        .selfClosedElement(named: "input", attributes: attributes)
    }

    /// Add an `<ins>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func ins(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "ins", nodes: nodes)
    }

    /// Add a `<label>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func label(_ nodes: Node<LaTeX.LabelContext>...) -> Node {
        .element(named: "label", nodes: nodes)
    }

    /// Add a `<main>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func main(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "main", nodes: nodes)
    }

    /// Add a `<nav>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func nav(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "nav", nodes: nodes)
    }

    /// Add a `<noscript>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func noscript(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "noscript", nodes: nodes)
    }

    /// Add an `<ol>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func ol(_ nodes: Node<LaTeX.ListContext>...) -> Node {
        .element(named: "ol", nodes: nodes)
    }

    /// Add a `<p>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func p(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "p", nodes: nodes)
    }

    /// Add a `<picture>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func picture(_ nodes: Node<LaTeX.PictureContext>...) -> Node {
        .element(named: "picture", nodes: nodes)
    }

    /// Add a `<pre>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func pre(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "pre", nodes: nodes)
    }

    /// Add an `<s>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func s(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "s", nodes: nodes)
    }

    /// Add a `<section>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func section(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "section", nodes: nodes)
    }

    /// Add a `<select>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func select(_ nodes: Node<LaTeX.SelectContext>...) -> Node {
        .element(named: "select", nodes: nodes)
    }

    /// Add a `<small>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func small(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "small", nodes: nodes)
    }

    /// Add a `<span>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func span(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "span", nodes: nodes)
    }

    /// Add a `<strong>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func strong(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "strong", nodes: nodes)
    }

    /// Add a `<table>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func table(_ nodes: Node<LaTeX.TableContext>...) -> Node {
        .element(named: "table", nodes: nodes)
    }

    /// Add a `<textarea>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and nodes.
    static func textarea(_ nodes: Node<LaTeX.TextAreaContext>...) -> Node {
        .element(named: "textarea", nodes: nodes)
    }

    /// Add a `<u>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func u(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "u", nodes: nodes)
    }

    /// Add a `<ul>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func ul(_ nodes: Node<LaTeX.ListContext>...) -> Node {
        .element(named: "ul", nodes: nodes)
    }

    /// Add a `<video>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func video(_ nodes: Node<LaTeX.VideoContext>...) -> Node {
        .element(named: "video", nodes: nodes)
    }
}

// MARK: - Lists

public extension Node where Context == LaTeX.ListContext {
    /// Add an `<li>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func li(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "li", nodes: nodes)
    }
}

public extension Node where Context == LaTeX.DescriptionListContext {
    /// Add a `<dd>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func dd(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "dd", nodes: nodes)
    }

    /// Add a `<dt>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func dt(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "dt", nodes: nodes)
    }
}

public extension Node where Context: HTMLOptionListContext {
    /// Add an `<option>` HTML element within the current context.
    /// - parameter nodes: The element's attributes.
    static func option(_ attributes: Attribute<LaTeX.OptionContext>...) -> Node {
        .selfClosedElement(named: "option", attributes: attributes)
    }
}

// MARK: - Tables

public extension Node where Context == LaTeX.TableContext {
    /// Add a `<caption>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func caption(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "caption", nodes: nodes)
    }

    /// Add a `<tr>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func tr(_ nodes: Node<LaTeX.TableRowContext>...) -> Node {
        .element(named: "tr", nodes: nodes)
    }

    /// Add a `<thead>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func thead(_ nodes: Node<LaTeX.TableContext>...) -> Node {
        .element(named: "thead", nodes: nodes)
    }

    /// Add a `<tbody>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func tbody(_ nodes: Node<LaTeX.TableContext>...) -> Node {
        .element(named: "tbody", nodes: nodes)
    }

    /// Add a `<tfoot>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func tfoot(_ nodes: Node<LaTeX.TableContext>...) -> Node {
        .element(named: "tfoot", nodes: nodes)
    }
}

public extension Node where Context == LaTeX.TableRowContext {
    /// Add a `<th>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func th(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "th", nodes: nodes)
    }

    /// Add a `<td>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func td(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "td", nodes: nodes)
    }
}

// MARK: - Media

public extension Node where Context: HTMLImageContainerContext {
    /// Add an `<img/>` HTML element within the current context.
    /// - parameter attributes: The element's attributes.
    static func img(_ attributes: Attribute<LaTeX.ImageContext>...) -> Node {
        .selfClosedElement(named: "img", attributes: attributes)
    }
}

public extension Node where Context: HTMLSourceListContext {
    /// Add a `<source/>` HTML element within the current context.
    /// - parameter attributes: The element's attributes.
    static func source(_ attributes: Attribute<Context.SourceContext>...) -> Node {
        .selfClosedElement(named: "source", attributes: attributes)
    }
}

// MARK: - Other

public extension Node where Context == LaTeX.DetailsContext {
    /// Add a `<summary>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and child elements.
    static func summary(_ nodes: Node<LaTeX.BodyContext>...) -> Node {
        .element(named: "summary", nodes: nodes)
    }
}

public extension Node where Context: HTMLScriptableContext {
    /// Add a `<script>` HTML element within the current context.
    /// - parameter nodes: The element's attributes and text content.
    static func script(_ nodes: Node<LaTeX.ScriptContext>...) -> Node {
        .element(named: "script", nodes: nodes)
    }
}
