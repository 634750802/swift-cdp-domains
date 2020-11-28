import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "CSS"

extension SwiftCDPDomains.CSS {
  /// - description: Inserts a new rule with the given `ruleText` in a stylesheet with given `styleSheetId`, at the
  /// position specified by `location`.
  public struct addRule: ModelMethod {
    public typealias Model = SwiftCDPDomains.CSS
    public static let name = "addRule"
    
    /// - description: The css style sheet identifier where a new rule should be inserted.
    public var styleSheetId: StyleSheetId
    
    /// - description: The text of a new rule.
    public var ruleText: String
    
    /// - description: Text position of a new rule in the target style sheet.
    public var location: SourceRange
    
    public init(styleSheetId: StyleSheetId, ruleText: String, location: SourceRange) {
      self.styleSheetId = styleSheetId
      self.ruleText = ruleText
      self.location = location
    }
    
    public struct Result: Decodable {
      /// - description: The newly created rule.
      public var rule: CSSRule
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: Returns all class names from specified stylesheet.
  public struct collectClassNames: ModelMethod {
    public typealias Model = SwiftCDPDomains.CSS
    public static let name = "collectClassNames"
    
    public var styleSheetId: StyleSheetId
    
    public init(styleSheetId: StyleSheetId) {
      self.styleSheetId = styleSheetId
    }
    
    public struct Result: Decodable {
      /// - description: Class name list.
      public var classNames: [String]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: Creates a new special "via-inspector" stylesheet in the frame with given `frameId`.
  public struct createStyleSheet: ModelMethod {
    public typealias Model = SwiftCDPDomains.CSS
    public static let name = "createStyleSheet"
    
    /// - description: Identifier of the frame where "via-inspector" stylesheet should be created.
    public var frameId: SwiftCDPDomains.Page.FrameId
    
    public init(frameId: SwiftCDPDomains.Page.FrameId) {
      self.frameId = frameId
    }
    
    public struct Result: Decodable {
      /// - description: Identifier of the created "via-inspector" stylesheet.
      public var styleSheetId: StyleSheetId
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: Disables the CSS agent for the given page.
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.CSS
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: Enables the CSS agent for the given page. Clients should not assume that the CSS agent has been
  /// enabled until the result of this command is received.
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.CSS
    public static let name = "enable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: Ensures that the given node will have specified pseudo-classes whenever its style is computed by
  /// the browser.
  public struct forcePseudoState: ModelMethod {
    public typealias Model = SwiftCDPDomains.CSS
    public static let name = "forcePseudoState"
    
    /// - description: The element id for which to force the pseudo state.
    public var nodeId: SwiftCDPDomains.DOM.NodeId
    
    /// - description: Element pseudo classes to force when computing the element's style.
    public var forcedPseudoClasses: [String]
    
    public init(nodeId: SwiftCDPDomains.DOM.NodeId, forcedPseudoClasses: [String]) {
      self.nodeId = nodeId
      self.forcedPseudoClasses = forcedPseudoClasses
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.CSS {
  public struct getBackgroundColors: ModelMethod {
    public typealias Model = SwiftCDPDomains.CSS
    public static let name = "getBackgroundColors"
    
    /// - description: Id of the node to get background colors for.
    public var nodeId: SwiftCDPDomains.DOM.NodeId
    
    public init(nodeId: SwiftCDPDomains.DOM.NodeId) {
      self.nodeId = nodeId
    }
    
    public struct Result: Decodable {
      /// - description: The range of background colors behind this element, if it contains any visible text. If no
      /// visible text is present, this will be undefined. In the case of a flat background color,
      /// this will consist of simply that color. In the case of a gradient, this will consist of each
      /// of the color stops. For anything more complicated, this will be an empty array. Images will
      /// be ignored (as if the image had failed to load).
      public var backgroundColors: [String]?
      /// - description: The computed font size for this node, as a CSS computed value string (e.g. '12px').
      public var computedFontSize: String?
      /// - description: The computed font weight for this node, as a CSS computed value string (e.g. 'normal' or
      /// '100').
      public var computedFontWeight: String?
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: Returns the computed style for a DOM node identified by `nodeId`.
  public struct getComputedStyleForNode: ModelMethod {
    public typealias Model = SwiftCDPDomains.CSS
    public static let name = "getComputedStyleForNode"
    
    public var nodeId: SwiftCDPDomains.DOM.NodeId
    
    public init(nodeId: SwiftCDPDomains.DOM.NodeId) {
      self.nodeId = nodeId
    }
    
    public struct Result: Decodable {
      /// - description: Computed style for the specified DOM node.
      public var computedStyle: [CSSComputedStyleProperty]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: Returns the styles defined inline (explicitly in the "style" attribute and implicitly, using DOM
  /// attributes) for a DOM node identified by `nodeId`.
  public struct getInlineStylesForNode: ModelMethod {
    public typealias Model = SwiftCDPDomains.CSS
    public static let name = "getInlineStylesForNode"
    
    public var nodeId: SwiftCDPDomains.DOM.NodeId
    
    public init(nodeId: SwiftCDPDomains.DOM.NodeId) {
      self.nodeId = nodeId
    }
    
    public struct Result: Decodable {
      /// - description: Inline style for the specified DOM node.
      public var inlineStyle: CSSStyle?
      /// - description: Attribute-defined element style (e.g. resulting from "width=20 height=100%").
      public var attributesStyle: CSSStyle?
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: Returns requested styles for a DOM node identified by `nodeId`.
  public struct getMatchedStylesForNode: ModelMethod {
    public typealias Model = SwiftCDPDomains.CSS
    public static let name = "getMatchedStylesForNode"
    
    public var nodeId: SwiftCDPDomains.DOM.NodeId
    
    public init(nodeId: SwiftCDPDomains.DOM.NodeId) {
      self.nodeId = nodeId
    }
    
    public struct Result: Decodable {
      /// - description: Inline style for the specified DOM node.
      public var inlineStyle: CSSStyle?
      /// - description: Attribute-defined element style (e.g. resulting from "width=20 height=100%").
      public var attributesStyle: CSSStyle?
      /// - description: CSS rules matching this node, from all applicable stylesheets.
      public var matchedCSSRules: [RuleMatch]?
      /// - description: Pseudo style matches for this node.
      public var pseudoElements: [PseudoElementMatches]?
      /// - description: A chain of inherited styles (from the immediate node parent up to the DOM tree root).
      public var inherited: [InheritedStyleEntry]?
      /// - description: A list of CSS keyframed animations matching this node.
      public var cssKeyframesRules: [CSSKeyframesRule]?
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: Returns all media queries parsed by the rendering engine.
  public struct getMediaQueries: ModelMethod {
    public typealias Model = SwiftCDPDomains.CSS
    public static let name = "getMediaQueries"
    
    public init() {
    }
    
    public struct Result: Decodable {
      public var medias: [CSSMedia]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: Requests information about platform fonts which we used to render child TextNodes in the given
  /// node.
  public struct getPlatformFontsForNode: ModelMethod {
    public typealias Model = SwiftCDPDomains.CSS
    public static let name = "getPlatformFontsForNode"
    
    public var nodeId: SwiftCDPDomains.DOM.NodeId
    
    public init(nodeId: SwiftCDPDomains.DOM.NodeId) {
      self.nodeId = nodeId
    }
    
    public struct Result: Decodable {
      /// - description: Usage statistics for every employed platform font.
      public var fonts: [PlatformFontUsage]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: Returns the current textual content for a stylesheet.
  public struct getStyleSheetText: ModelMethod {
    public typealias Model = SwiftCDPDomains.CSS
    public static let name = "getStyleSheetText"
    
    public var styleSheetId: StyleSheetId
    
    public init(styleSheetId: StyleSheetId) {
      self.styleSheetId = styleSheetId
    }
    
    public struct Result: Decodable {
      /// - description: The stylesheet text.
      public var text: String
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: Starts tracking the given computed styles for updates. The specified array of properties
  /// replaces the one previously specified. Pass empty array to disable tracking.
  /// Use takeComputedStyleUpdates to retrieve the list of nodes that had properties modified.
  /// The changes to computed style properties are only tracked for nodes pushed to the front-end
  /// by the DOM agent. If no changes to the tracked properties occur after the node has been pushed
  /// to the front-end, no updates will be issued for the node.
  /// - intention: This is an experimental property.
  public struct trackComputedStyleUpdates: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.CSS
    public static let name = "trackComputedStyleUpdates"
    
    public var propertiesToTrack: [CSSComputedStyleProperty]
    
    public init(propertiesToTrack: [CSSComputedStyleProperty]) {
      self.propertiesToTrack = propertiesToTrack
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: Polls the next batch of computed style updates.
  /// - intention: This is an experimental property.
  public struct takeComputedStyleUpdates: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.CSS
    public static let name = "takeComputedStyleUpdates"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: The list of node Ids that have their tracked computed styles updated
      public var nodeIds: [SwiftCDPDomains.DOM.NodeId]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: Find a rule with the given active property for the given node and set the new value for this
  /// property
  public struct setEffectivePropertyValueForNode: ModelMethod {
    public typealias Model = SwiftCDPDomains.CSS
    public static let name = "setEffectivePropertyValueForNode"
    
    /// - description: The element id for which to set property.
    public var nodeId: SwiftCDPDomains.DOM.NodeId
    
    public var propertyName: String
    
    public var value: String
    
    public init(nodeId: SwiftCDPDomains.DOM.NodeId, propertyName: String, value: String) {
      self.nodeId = nodeId
      self.propertyName = propertyName
      self.value = value
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: Modifies the keyframe rule key text.
  public struct setKeyframeKey: ModelMethod {
    public typealias Model = SwiftCDPDomains.CSS
    public static let name = "setKeyframeKey"
    
    public var styleSheetId: StyleSheetId
    
    public var range: SourceRange
    
    public var keyText: String
    
    public init(styleSheetId: StyleSheetId, range: SourceRange, keyText: String) {
      self.styleSheetId = styleSheetId
      self.range = range
      self.keyText = keyText
    }
    
    public struct Result: Decodable {
      /// - description: The resulting key text after modification.
      public var keyText: Value
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: Modifies the rule selector.
  public struct setMediaText: ModelMethod {
    public typealias Model = SwiftCDPDomains.CSS
    public static let name = "setMediaText"
    
    public var styleSheetId: StyleSheetId
    
    public var range: SourceRange
    
    public var text: String
    
    public init(styleSheetId: StyleSheetId, range: SourceRange, text: String) {
      self.styleSheetId = styleSheetId
      self.range = range
      self.text = text
    }
    
    public struct Result: Decodable {
      /// - description: The resulting CSS media rule after modification.
      public var media: CSSMedia
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: Modifies the rule selector.
  public struct setRuleSelector: ModelMethod {
    public typealias Model = SwiftCDPDomains.CSS
    public static let name = "setRuleSelector"
    
    public var styleSheetId: StyleSheetId
    
    public var range: SourceRange
    
    public var selector: String
    
    public init(styleSheetId: StyleSheetId, range: SourceRange, selector: String) {
      self.styleSheetId = styleSheetId
      self.range = range
      self.selector = selector
    }
    
    public struct Result: Decodable {
      /// - description: The resulting selector list after modification.
      public var selectorList: SelectorList
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: Sets the new stylesheet text.
  public struct setStyleSheetText: ModelMethod {
    public typealias Model = SwiftCDPDomains.CSS
    public static let name = "setStyleSheetText"
    
    public var styleSheetId: StyleSheetId
    
    public var text: String
    
    public init(styleSheetId: StyleSheetId, text: String) {
      self.styleSheetId = styleSheetId
      self.text = text
    }
    
    public struct Result: Decodable {
      /// - description: URL of source map associated with script (if any).
      public var sourceMapURL: String?
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: Applies specified style edits one after another in the given order.
  public struct setStyleTexts: ModelMethod {
    public typealias Model = SwiftCDPDomains.CSS
    public static let name = "setStyleTexts"
    
    public var edits: [StyleDeclarationEdit]
    
    public init(edits: [StyleDeclarationEdit]) {
      self.edits = edits
    }
    
    public struct Result: Decodable {
      /// - description: The resulting styles after modification.
      public var styles: [CSSStyle]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: Enables the selector recording.
  public struct startRuleUsageTracking: ModelMethod {
    public typealias Model = SwiftCDPDomains.CSS
    public static let name = "startRuleUsageTracking"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: Stop tracking rule usage and return the list of rules that were used since last call to
  /// `takeCoverageDelta` (or since start of coverage instrumentation)
  public struct stopRuleUsageTracking: ModelMethod {
    public typealias Model = SwiftCDPDomains.CSS
    public static let name = "stopRuleUsageTracking"
    
    public init() {
    }
    
    public struct Result: Decodable {
      public var ruleUsage: [RuleUsage]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: Obtain list of rules that became used since last call to this method (or since start of coverage
  /// instrumentation)
  public struct takeCoverageDelta: ModelMethod {
    public typealias Model = SwiftCDPDomains.CSS
    public static let name = "takeCoverageDelta"
    
    public init() {
    }
    
    public struct Result: Decodable {
      public var coverage: [RuleUsage]
      /// - description: Monotonically increasing time, in seconds.
      public var timestamp: JsonNumber
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: Enables/disables rendering of local CSS fonts (enabled by default).
  /// - intention: This is an experimental property.
  public struct setLocalFontsEnabled: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.CSS
    public static let name = "setLocalFontsEnabled"
    
    /// - description: Whether rendering of local fonts is enabled.
    public var enabled: Bool
    
    public init(enabled: Bool) {
      self.enabled = enabled
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

