import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "CSS"

extension SwiftCDPDomains.CSS {
  /// - see: https://vanilla.aslushnikov.com/?CSS.StyleSheetId
  public struct StyleSheetId: Codable {
    private var rawValue: String
    
    public init(from decoder: Decoder) throws {
      self.rawValue = try decoder.singleValueContainer().decode(String.self)
    }
    
    public func encode(to encoder: Encoder) throws {
      var container = encoder.singleValueContainer()
      try container.encode(rawValue)
    }
  }
}

extension SwiftCDPDomains.CSS {
  /// - see: https://vanilla.aslushnikov.com/?CSS.StyleSheetOrigin
  /// - description: Stylesheet type: "injected" for stylesheets injected via extension, "user-agent" for user-agent
  /// stylesheets, "inspector" for stylesheets created by the inspector (i.e. those holding the "via
  /// inspector" rules), "regular" for regular stylesheets.
  /// - choices: ["injected", "user-agent", "inspector", "regular"]
  public typealias StyleSheetOrigin = String
}

extension SwiftCDPDomains.CSS {
  /// - see: https://vanilla.aslushnikov.com/?CSS.PseudoElementMatches
  /// - description: CSS rule collection for a single pseudo style.
  public struct PseudoElementMatches: Codable {
    /// - description: Pseudo element type.
    public var pseudoType: SwiftCDPDomains.DOM.PseudoType
    
    /// - description: Matches of CSS rules applicable to the pseudo style.
    public var matches: [RuleMatch]
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - see: https://vanilla.aslushnikov.com/?CSS.InheritedStyleEntry
  /// - description: Inherited CSS rule collection from ancestor node.
  public struct InheritedStyleEntry: Codable {
    /// - description: The ancestor node's inline style, if any, in the style inheritance chain.
    public var inlineStyle: CSSStyle?
    
    /// - description: Matches of CSS rules matching the ancestor node in the style inheritance chain.
    public var matchedCSSRules: [RuleMatch]
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - see: https://vanilla.aslushnikov.com/?CSS.RuleMatch
  /// - description: Match data for a CSS rule.
  public struct RuleMatch: Codable {
    /// - description: CSS rule in the match.
    public var rule: CSSRule
    
    /// - description: Matching selector indices in the rule's selectorList selectors (0-based).
    public var matchingSelectors: [Int]
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - see: https://vanilla.aslushnikov.com/?CSS.Value
  /// - description: Data for a simple selector (these are delimited by commas in a selector list).
  public struct Value: Codable {
    /// - description: Value text.
    public var text: String
    
    /// - description: Value range in the underlying resource (if available).
    public var range: SourceRange?
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - see: https://vanilla.aslushnikov.com/?CSS.SelectorList
  /// - description: Selector list data.
  public struct SelectorList: Codable {
    /// - description: Selectors in the list.
    public var selectors: [Value]
    
    /// - description: Rule selector text.
    public var text: String
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - see: https://vanilla.aslushnikov.com/?CSS.CSSStyleSheetHeader
  /// - description: CSS stylesheet metainformation.
  public struct CSSStyleSheetHeader: Codable {
    /// - description: The stylesheet identifier.
    public var styleSheetId: StyleSheetId
    
    /// - description: Owner frame identifier.
    public var frameId: SwiftCDPDomains.Page.FrameId
    
    /// - description: Stylesheet resource URL.
    public var sourceURL: String
    
    /// - description: URL of source map associated with the stylesheet (if any).
    public var sourceMapURL: String?
    
    /// - description: Stylesheet origin.
    public var origin: StyleSheetOrigin
    
    /// - description: Stylesheet title.
    public var title: String
    
    /// - description: The backend id for the owner node of the stylesheet.
    public var ownerNode: SwiftCDPDomains.DOM.BackendNodeId?
    
    /// - description: Denotes whether the stylesheet is disabled.
    public var disabled: Bool
    
    /// - description: Whether the sourceURL field value comes from the sourceURL comment.
    public var hasSourceURL: Bool?
    
    /// - description: Whether this stylesheet is created for STYLE tag by parser. This flag is not set for
    /// document.written STYLE tags.
    public var isInline: Bool
    
    /// - description: Whether this stylesheet is mutable. Inline stylesheets become mutable
    /// after they have been modified via CSSOM API.
    /// <link> element's stylesheets become mutable only if DevTools modifies them.
    /// Constructed stylesheets (new CSSStyleSheet()) are mutable immediately after creation.
    public var isMutable: Bool
    
    /// - description: Whether this stylesheet is a constructed stylesheet (created using new CSSStyleSheet()).
    public var isConstructed: Bool
    
    /// - description: Line offset of the stylesheet within the resource (zero based).
    public var startLine: JsonNumber
    
    /// - description: Column offset of the stylesheet within the resource (zero based).
    public var startColumn: JsonNumber
    
    /// - description: Size of the content (in characters).
    public var length: JsonNumber
    
    /// - description: Line offset of the end of the stylesheet within the resource (zero based).
    public var endLine: JsonNumber
    
    /// - description: Column offset of the end of the stylesheet within the resource (zero based).
    public var endColumn: JsonNumber
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - see: https://vanilla.aslushnikov.com/?CSS.CSSRule
  /// - description: CSS rule representation.
  public struct CSSRule: Codable {
    /// - description: The css style sheet identifier (absent for user agent stylesheet and user-specified
    /// stylesheet rules) this rule came from.
    public var styleSheetId: StyleSheetId?
    
    /// - description: Rule selector data.
    public var selectorList: SelectorList
    
    /// - description: Parent stylesheet's origin.
    public var origin: StyleSheetOrigin
    
    /// - description: Associated style declaration.
    public var style: CSSStyle
    
    /// - description: Media list array (for rules involving media queries). The array enumerates media queries
    /// starting with the innermost one, going outwards.
    public var media: [CSSMedia]?
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - see: https://vanilla.aslushnikov.com/?CSS.RuleUsage
  /// - description: CSS coverage information.
  public struct RuleUsage: Codable {
    /// - description: The css style sheet identifier (absent for user agent stylesheet and user-specified
    /// stylesheet rules) this rule came from.
    public var styleSheetId: StyleSheetId
    
    /// - description: Offset of the start of the rule (including selector) from the beginning of the stylesheet.
    public var startOffset: JsonNumber
    
    /// - description: Offset of the end of the rule body from the beginning of the stylesheet.
    public var endOffset: JsonNumber
    
    /// - description: Indicates whether the rule was actually used by some element in the page.
    public var used: Bool
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - see: https://vanilla.aslushnikov.com/?CSS.SourceRange
  /// - description: Text range within a resource. All numbers are zero-based.
  public struct SourceRange: Codable {
    /// - description: Start line of range.
    public var startLine: Int
    
    /// - description: Start column of range (inclusive).
    public var startColumn: Int
    
    /// - description: End line of range
    public var endLine: Int
    
    /// - description: End column of range (exclusive).
    public var endColumn: Int
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - see: https://vanilla.aslushnikov.com/?CSS.ShorthandEntry
  public struct ShorthandEntry: Codable {
    /// - description: Shorthand name.
    public var name: String
    
    /// - description: Shorthand value.
    public var value: String
    
    /// - description: Whether the property has "!important" annotation (implies `false` if absent).
    public var important: Bool?
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - see: https://vanilla.aslushnikov.com/?CSS.CSSComputedStyleProperty
  public struct CSSComputedStyleProperty: Codable {
    /// - description: Computed style property name.
    public var name: String
    
    /// - description: Computed style property value.
    public var value: String
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - see: https://vanilla.aslushnikov.com/?CSS.CSSStyle
  /// - description: CSS style representation.
  public struct CSSStyle: Codable {
    /// - description: The css style sheet identifier (absent for user agent stylesheet and user-specified
    /// stylesheet rules) this rule came from.
    public var styleSheetId: StyleSheetId?
    
    /// - description: CSS properties in the style.
    public var cssProperties: [CSSProperty]
    
    /// - description: Computed values for all shorthands found in the style.
    public var shorthandEntries: [ShorthandEntry]
    
    /// - description: Style declaration text (if available).
    public var cssText: String?
    
    /// - description: Style declaration range in the enclosing stylesheet (if available).
    public var range: SourceRange?
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - see: https://vanilla.aslushnikov.com/?CSS.CSSProperty
  /// - description: CSS property declaration data.
  public struct CSSProperty: Codable {
    /// - description: The property name.
    public var name: String
    
    /// - description: The property value.
    public var value: String
    
    /// - description: Whether the property has "!important" annotation (implies `false` if absent).
    public var important: Bool?
    
    /// - description: Whether the property is implicit (implies `false` if absent).
    public var implicit: Bool?
    
    /// - description: The full property text as specified in the style.
    public var text: String?
    
    /// - description: Whether the property is understood by the browser (implies `true` if absent).
    public var parsedOk: Bool?
    
    /// - description: Whether the property is disabled by the user (present for source-based properties only).
    public var disabled: Bool?
    
    /// - description: The entire property range in the enclosing style declaration (if available).
    public var range: SourceRange?
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - see: https://vanilla.aslushnikov.com/?CSS.CSSMedia
  /// - description: CSS media rule descriptor.
  public struct CSSMedia: Codable {
    /// - description: Media query text.
    public var text: String
    
    /// - description: Source of the media query: "mediaRule" if specified by a @media rule, "importRule" if
    /// specified by an @import rule, "linkedSheet" if specified by a "media" attribute in a linked
    /// stylesheet's LINK tag, "inlineSheet" if specified by a "media" attribute in an inline
    /// stylesheet's STYLE tag.
    public var source: String
    
    /// - description: URL of the document containing the media query description.
    public var sourceURL: String?
    
    /// - description: The associated rule (@media or @import) header range in the enclosing stylesheet (if
    /// available).
    public var range: SourceRange?
    
    /// - description: Identifier of the stylesheet containing this object (if exists).
    public var styleSheetId: StyleSheetId?
    
    /// - description: Array of media queries.
    public var mediaList: [MediaQuery]?
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - see: https://vanilla.aslushnikov.com/?CSS.MediaQuery
  /// - description: Media query descriptor.
  public struct MediaQuery: Codable {
    /// - description: Array of media query expressions.
    public var expressions: [MediaQueryExpression]
    
    /// - description: Whether the media query condition is satisfied.
    public var active: Bool
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - see: https://vanilla.aslushnikov.com/?CSS.MediaQueryExpression
  /// - description: Media query expression descriptor.
  public struct MediaQueryExpression: Codable {
    /// - description: Media query expression value.
    public var value: JsonNumber
    
    /// - description: Media query expression units.
    public var unit: String
    
    /// - description: Media query expression feature.
    public var feature: String
    
    /// - description: The associated range of the value text in the enclosing stylesheet (if available).
    public var valueRange: SourceRange?
    
    /// - description: Computed length of media query expression (if applicable).
    public var computedLength: JsonNumber?
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - see: https://vanilla.aslushnikov.com/?CSS.PlatformFontUsage
  /// - description: Information about amount of glyphs that were rendered with given font.
  public struct PlatformFontUsage: Codable {
    /// - description: Font's family name reported by platform.
    public var familyName: String
    
    /// - description: Indicates if the font was downloaded or resolved locally.
    public var isCustomFont: Bool
    
    /// - description: Amount of glyphs that were rendered with this font.
    public var glyphCount: JsonNumber
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - see: https://vanilla.aslushnikov.com/?CSS.FontVariationAxis
  /// - description: Information about font variation axes for variable fonts
  public struct FontVariationAxis: Codable {
    /// - description: The font-variation-setting tag (a.k.a. "axis tag").
    public var tag: String
    
    /// - description: Human-readable variation name in the default language (normally, "en").
    public var name: String
    
    /// - description: The minimum value (inclusive) the font supports for this tag.
    public var minValue: JsonNumber
    
    /// - description: The maximum value (inclusive) the font supports for this tag.
    public var maxValue: JsonNumber
    
    /// - description: The default value.
    public var defaultValue: JsonNumber
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - see: https://vanilla.aslushnikov.com/?CSS.FontFace
  /// - description: Properties of a web font: https://www.w3.org/TR/2008/REC-CSS2-20080411/fonts.html#font-descriptions
  /// and additional information such as platformFontFamily and fontVariationAxes.
  public struct FontFace: Codable {
    /// - description: The font-family.
    public var fontFamily: String
    
    /// - description: The font-style.
    public var fontStyle: String
    
    /// - description: The font-variant.
    public var fontVariant: String
    
    /// - description: The font-weight.
    public var fontWeight: String
    
    /// - description: The font-stretch.
    public var fontStretch: String
    
    /// - description: The unicode-range.
    public var unicodeRange: String
    
    /// - description: The src.
    public var src: String
    
    /// - description: The resolved platform font family
    public var platformFontFamily: String
    
    /// - description: Available variation settings (a.k.a. "axes").
    public var fontVariationAxes: [FontVariationAxis]?
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - see: https://vanilla.aslushnikov.com/?CSS.CSSKeyframesRule
  /// - description: CSS keyframes rule representation.
  public struct CSSKeyframesRule: Codable {
    /// - description: Animation name.
    public var animationName: Value
    
    /// - description: List of keyframes.
    public var keyframes: [CSSKeyframeRule]
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - see: https://vanilla.aslushnikov.com/?CSS.CSSKeyframeRule
  /// - description: CSS keyframe rule representation.
  public struct CSSKeyframeRule: Codable {
    /// - description: The css style sheet identifier (absent for user agent stylesheet and user-specified
    /// stylesheet rules) this rule came from.
    public var styleSheetId: StyleSheetId?
    
    /// - description: Parent stylesheet's origin.
    public var origin: StyleSheetOrigin
    
    /// - description: Associated key text.
    public var keyText: Value
    
    /// - description: Associated style declaration.
    public var style: CSSStyle
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - see: https://vanilla.aslushnikov.com/?CSS.StyleDeclarationEdit
  /// - description: A descriptor of operation to mutate style declaration text.
  public struct StyleDeclarationEdit: Codable {
    /// - description: The css style sheet identifier.
    public var styleSheetId: StyleSheetId
    
    /// - description: The range of the style text in the enclosing stylesheet.
    public var range: SourceRange
    
    /// - description: New style text.
    public var text: String
    
  }
}

