import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Overlay"

extension SwiftCDPDomains.Overlay {
  /// - description: Disables domain notifications.
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Overlay
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Overlay {
  /// - description: Enables domain notifications.
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Overlay
    public static let name = "enable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Overlay {
  /// - description: For testing.
  public struct getHighlightObjectForTest: ModelMethod {
    public typealias Model = SwiftCDPDomains.Overlay
    public static let name = "getHighlightObjectForTest"
    
    /// - description: Id of the node to get highlight object for.
    public var nodeId: SwiftCDPDomains.DOM.NodeId
    
    /// - description: Whether to include distance info.
    public var includeDistance: Bool?
    
    /// - description: Whether to include style info.
    public var includeStyle: Bool?
    
    /// - description: The color format to get config with (default: hex).
    public var colorFormat: ColorFormat?
    
    /// - description: Whether to show accessibility info (default: true).
    public var showAccessibilityInfo: Bool?
    
    public init(nodeId: SwiftCDPDomains.DOM.NodeId, includeDistance: Bool? = nil, includeStyle: Bool? = nil, colorFormat: ColorFormat? = nil, showAccessibilityInfo: Bool? = nil) {
      self.nodeId = nodeId
      self.includeDistance = includeDistance
      self.includeStyle = includeStyle
      self.colorFormat = colorFormat
      self.showAccessibilityInfo = showAccessibilityInfo
    }
    
    public struct Result: Decodable {
      /// - description: Highlight data for the node.
      public var highlight: [String: JsonValue]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Overlay {
  /// - description: For Persistent Grid testing.
  public struct getGridHighlightObjectsForTest: ModelMethod {
    public typealias Model = SwiftCDPDomains.Overlay
    public static let name = "getGridHighlightObjectsForTest"
    
    /// - description: Ids of the node to get highlight object for.
    public var nodeIds: [SwiftCDPDomains.DOM.NodeId]
    
    public init(nodeIds: [SwiftCDPDomains.DOM.NodeId]) {
      self.nodeIds = nodeIds
    }
    
    public struct Result: Decodable {
      /// - description: Grid Highlight data for the node ids provided.
      public var highlights: [String: JsonValue]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Overlay {
  /// - description: For Source Order Viewer testing.
  public struct getSourceOrderHighlightObjectForTest: ModelMethod {
    public typealias Model = SwiftCDPDomains.Overlay
    public static let name = "getSourceOrderHighlightObjectForTest"
    
    /// - description: Id of the node to highlight.
    public var nodeId: SwiftCDPDomains.DOM.NodeId
    
    public init(nodeId: SwiftCDPDomains.DOM.NodeId) {
      self.nodeId = nodeId
    }
    
    public struct Result: Decodable {
      /// - description: Source order highlight data for the node id provided.
      public var highlight: [String: JsonValue]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Overlay {
  /// - description: Hides any highlight.
  public struct hideHighlight: ModelMethod {
    public typealias Model = SwiftCDPDomains.Overlay
    public static let name = "hideHighlight"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Overlay {
  /// - description: Highlights owner element of the frame with given id.
  public struct highlightFrame: ModelMethod {
    public typealias Model = SwiftCDPDomains.Overlay
    public static let name = "highlightFrame"
    
    /// - description: Identifier of the frame to highlight.
    public var frameId: SwiftCDPDomains.Page.FrameId
    
    /// - description: The content box highlight fill color (default: transparent).
    public var contentColor: SwiftCDPDomains.DOM.RGBA?
    
    /// - description: The content box highlight outline color (default: transparent).
    public var contentOutlineColor: SwiftCDPDomains.DOM.RGBA?
    
    public init(frameId: SwiftCDPDomains.Page.FrameId, contentColor: SwiftCDPDomains.DOM.RGBA? = nil, contentOutlineColor: SwiftCDPDomains.DOM.RGBA? = nil) {
      self.frameId = frameId
      self.contentColor = contentColor
      self.contentOutlineColor = contentOutlineColor
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Overlay {
  /// - description: Highlights DOM node with given id or with the given JavaScript object wrapper. Either nodeId or
  /// objectId must be specified.
  public struct highlightNode: ModelMethod {
    public typealias Model = SwiftCDPDomains.Overlay
    public static let name = "highlightNode"
    
    /// - description: A descriptor for the highlight appearance.
    public var highlightConfig: HighlightConfig
    
    /// - description: Identifier of the node to highlight.
    public var nodeId: SwiftCDPDomains.DOM.NodeId?
    
    /// - description: Identifier of the backend node to highlight.
    public var backendNodeId: SwiftCDPDomains.DOM.BackendNodeId?
    
    /// - description: JavaScript object id of the node to be highlighted.
    public var objectId: SwiftCDPDomains.Runtime.RemoteObjectId?
    
    /// - description: Selectors to highlight relevant nodes.
    public var selector: String?
    
    public init(highlightConfig: HighlightConfig, nodeId: SwiftCDPDomains.DOM.NodeId? = nil, backendNodeId: SwiftCDPDomains.DOM.BackendNodeId? = nil, objectId: SwiftCDPDomains.Runtime.RemoteObjectId? = nil, selector: String? = nil) {
      self.highlightConfig = highlightConfig
      self.nodeId = nodeId
      self.backendNodeId = backendNodeId
      self.objectId = objectId
      self.selector = selector
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Overlay {
  /// - description: Highlights given quad. Coordinates are absolute with respect to the main frame viewport.
  public struct highlightQuad: ModelMethod {
    public typealias Model = SwiftCDPDomains.Overlay
    public static let name = "highlightQuad"
    
    /// - description: Quad to highlight
    public var quad: SwiftCDPDomains.DOM.Quad
    
    /// - description: The highlight fill color (default: transparent).
    public var color: SwiftCDPDomains.DOM.RGBA?
    
    /// - description: The highlight outline color (default: transparent).
    public var outlineColor: SwiftCDPDomains.DOM.RGBA?
    
    public init(quad: SwiftCDPDomains.DOM.Quad, color: SwiftCDPDomains.DOM.RGBA? = nil, outlineColor: SwiftCDPDomains.DOM.RGBA? = nil) {
      self.quad = quad
      self.color = color
      self.outlineColor = outlineColor
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Overlay {
  /// - description: Highlights given rectangle. Coordinates are absolute with respect to the main frame viewport.
  public struct highlightRect: ModelMethod {
    public typealias Model = SwiftCDPDomains.Overlay
    public static let name = "highlightRect"
    
    /// - description: X coordinate
    public var x: Int
    
    /// - description: Y coordinate
    public var y: Int
    
    /// - description: Rectangle width
    public var width: Int
    
    /// - description: Rectangle height
    public var height: Int
    
    /// - description: The highlight fill color (default: transparent).
    public var color: SwiftCDPDomains.DOM.RGBA?
    
    /// - description: The highlight outline color (default: transparent).
    public var outlineColor: SwiftCDPDomains.DOM.RGBA?
    
    public init(x: Int, y: Int, width: Int, height: Int, color: SwiftCDPDomains.DOM.RGBA? = nil, outlineColor: SwiftCDPDomains.DOM.RGBA? = nil) {
      self.x = x
      self.y = y
      self.width = width
      self.height = height
      self.color = color
      self.outlineColor = outlineColor
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Overlay {
  /// - description: Highlights the source order of the children of the DOM node with given id or with the given
  /// JavaScript object wrapper. Either nodeId or objectId must be specified.
  public struct highlightSourceOrder: ModelMethod {
    public typealias Model = SwiftCDPDomains.Overlay
    public static let name = "highlightSourceOrder"
    
    /// - description: A descriptor for the appearance of the overlay drawing.
    public var sourceOrderConfig: SourceOrderConfig
    
    /// - description: Identifier of the node to highlight.
    public var nodeId: SwiftCDPDomains.DOM.NodeId?
    
    /// - description: Identifier of the backend node to highlight.
    public var backendNodeId: SwiftCDPDomains.DOM.BackendNodeId?
    
    /// - description: JavaScript object id of the node to be highlighted.
    public var objectId: SwiftCDPDomains.Runtime.RemoteObjectId?
    
    public init(sourceOrderConfig: SourceOrderConfig, nodeId: SwiftCDPDomains.DOM.NodeId? = nil, backendNodeId: SwiftCDPDomains.DOM.BackendNodeId? = nil, objectId: SwiftCDPDomains.Runtime.RemoteObjectId? = nil) {
      self.sourceOrderConfig = sourceOrderConfig
      self.nodeId = nodeId
      self.backendNodeId = backendNodeId
      self.objectId = objectId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Overlay {
  /// - description: Enters the 'inspect' mode. In this mode, elements that user is hovering over are highlighted.
  /// Backend then generates 'inspectNodeRequested' event upon element selection.
  public struct setInspectMode: ModelMethod {
    public typealias Model = SwiftCDPDomains.Overlay
    public static let name = "setInspectMode"
    
    /// - description: Set an inspection mode.
    public var mode: InspectMode
    
    /// - description: A descriptor for the highlight appearance of hovered-over nodes. May be omitted if `enabled
    /// == false`.
    public var highlightConfig: HighlightConfig?
    
    public init(mode: InspectMode, highlightConfig: HighlightConfig? = nil) {
      self.mode = mode
      self.highlightConfig = highlightConfig
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Overlay {
  /// - description: Highlights owner element of all frames detected to be ads.
  public struct setShowAdHighlights: ModelMethod {
    public typealias Model = SwiftCDPDomains.Overlay
    public static let name = "setShowAdHighlights"
    
    /// - description: True for showing ad highlights
    public var show: Bool
    
    public init(show: Bool) {
      self.show = show
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Overlay {
  public struct setPausedInDebuggerMessage: ModelMethod {
    public typealias Model = SwiftCDPDomains.Overlay
    public static let name = "setPausedInDebuggerMessage"
    
    /// - description: The message to display, also triggers resume and step over controls.
    public var message: String?
    
    public init(message: String? = nil) {
      self.message = message
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Overlay {
  /// - description: Requests that backend shows debug borders on layers
  public struct setShowDebugBorders: ModelMethod {
    public typealias Model = SwiftCDPDomains.Overlay
    public static let name = "setShowDebugBorders"
    
    /// - description: True for showing debug borders
    public var show: Bool
    
    public init(show: Bool) {
      self.show = show
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Overlay {
  /// - description: Requests that backend shows the FPS counter
  public struct setShowFPSCounter: ModelMethod {
    public typealias Model = SwiftCDPDomains.Overlay
    public static let name = "setShowFPSCounter"
    
    /// - description: True for showing the FPS counter
    public var show: Bool
    
    public init(show: Bool) {
      self.show = show
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Overlay {
  /// - description: Highlight multiple elements with the CSS Grid overlay.
  public struct setShowGridOverlays: ModelMethod {
    public typealias Model = SwiftCDPDomains.Overlay
    public static let name = "setShowGridOverlays"
    
    /// - description: An array of node identifiers and descriptors for the highlight appearance.
    public var gridNodeHighlightConfigs: [GridNodeHighlightConfig]
    
    public init(gridNodeHighlightConfigs: [GridNodeHighlightConfig]) {
      self.gridNodeHighlightConfigs = gridNodeHighlightConfigs
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Overlay {
  public struct setShowFlexOverlays: ModelMethod {
    public typealias Model = SwiftCDPDomains.Overlay
    public static let name = "setShowFlexOverlays"
    
    /// - description: An array of node identifiers and descriptors for the highlight appearance.
    public var flexNodeHighlightConfigs: [FlexNodeHighlightConfig]
    
    public init(flexNodeHighlightConfigs: [FlexNodeHighlightConfig]) {
      self.flexNodeHighlightConfigs = flexNodeHighlightConfigs
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Overlay {
  /// - description: Requests that backend shows paint rectangles
  public struct setShowPaintRects: ModelMethod {
    public typealias Model = SwiftCDPDomains.Overlay
    public static let name = "setShowPaintRects"
    
    /// - description: True for showing paint rectangles
    public var result: Bool
    
    public init(result: Bool) {
      self.result = result
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Overlay {
  /// - description: Requests that backend shows layout shift regions
  public struct setShowLayoutShiftRegions: ModelMethod {
    public typealias Model = SwiftCDPDomains.Overlay
    public static let name = "setShowLayoutShiftRegions"
    
    /// - description: True for showing layout shift regions
    public var result: Bool
    
    public init(result: Bool) {
      self.result = result
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Overlay {
  /// - description: Requests that backend shows scroll bottleneck rects
  public struct setShowScrollBottleneckRects: ModelMethod {
    public typealias Model = SwiftCDPDomains.Overlay
    public static let name = "setShowScrollBottleneckRects"
    
    /// - description: True for showing scroll bottleneck rects
    public var show: Bool
    
    public init(show: Bool) {
      self.show = show
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Overlay {
  /// - description: Requests that backend shows hit-test borders on layers
  public struct setShowHitTestBorders: ModelMethod {
    public typealias Model = SwiftCDPDomains.Overlay
    public static let name = "setShowHitTestBorders"
    
    /// - description: True for showing hit-test borders
    public var show: Bool
    
    public init(show: Bool) {
      self.show = show
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Overlay {
  /// - description: Paints viewport size upon main frame resize.
  public struct setShowViewportSizeOnResize: ModelMethod {
    public typealias Model = SwiftCDPDomains.Overlay
    public static let name = "setShowViewportSizeOnResize"
    
    /// - description: Whether to paint size or not.
    public var show: Bool
    
    public init(show: Bool) {
      self.show = show
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Overlay {
  /// - description: Add a dual screen device hinge
  public struct setShowHinge: ModelMethod {
    public typealias Model = SwiftCDPDomains.Overlay
    public static let name = "setShowHinge"
    
    /// - description: hinge data, null means hideHinge
    public var hingeConfig: HingeConfig?
    
    public init(hingeConfig: HingeConfig? = nil) {
      self.hingeConfig = hingeConfig
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

