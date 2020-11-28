import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "Overlay"

extension SwiftCDPDomains.Overlay {
  /// - see: https://vanilla.aslushnikov.com/?Overlay.SourceOrderConfig
  /// - description: Configuration data for drawing the source order of an elements children.
  public struct SourceOrderConfig: Codable {
    /// - description: the color to outline the givent element in.
    public var parentOutlineColor: SwiftCDPDomains.DOM.RGBA
    
    /// - description: the color to outline the child elements in.
    public var childOutlineColor: SwiftCDPDomains.DOM.RGBA
    
  }
}

extension SwiftCDPDomains.Overlay {
  /// - see: https://vanilla.aslushnikov.com/?Overlay.GridHighlightConfig
  /// - description: Configuration data for the highlighting of Grid elements.
  public struct GridHighlightConfig: Codable {
    /// - description: Whether the extension lines from grid cells to the rulers should be shown (default: false).
    public var showGridExtensionLines: Bool?
    
    /// - description: Show Positive line number labels (default: false).
    public var showPositiveLineNumbers: Bool?
    
    /// - description: Show Negative line number labels (default: false).
    public var showNegativeLineNumbers: Bool?
    
    /// - description: Show area name labels (default: false).
    public var showAreaNames: Bool?
    
    /// - description: Show line name labels (default: false).
    public var showLineNames: Bool?
    
    /// - description: Show track size labels (default: false).
    public var showTrackSizes: Bool?
    
    /// - description: The grid container border highlight color (default: transparent).
    public var gridBorderColor: SwiftCDPDomains.DOM.RGBA?
    
    /// - description: The cell border color (default: transparent). Deprecated, please use rowLineColor and columnLineColor instead.
    public var cellBorderColor: SwiftCDPDomains.DOM.RGBA?
    
    /// - description: The row line color (default: transparent).
    public var rowLineColor: SwiftCDPDomains.DOM.RGBA?
    
    /// - description: The column line color (default: transparent).
    public var columnLineColor: SwiftCDPDomains.DOM.RGBA?
    
    /// - description: Whether the grid border is dashed (default: false).
    public var gridBorderDash: Bool?
    
    /// - description: Whether the cell border is dashed (default: false). Deprecated, please us rowLineDash and columnLineDash instead.
    public var cellBorderDash: Bool?
    
    /// - description: Whether row lines are dashed (default: false).
    public var rowLineDash: Bool?
    
    /// - description: Whether column lines are dashed (default: false).
    public var columnLineDash: Bool?
    
    /// - description: The row gap highlight fill color (default: transparent).
    public var rowGapColor: SwiftCDPDomains.DOM.RGBA?
    
    /// - description: The row gap hatching fill color (default: transparent).
    public var rowHatchColor: SwiftCDPDomains.DOM.RGBA?
    
    /// - description: The column gap highlight fill color (default: transparent).
    public var columnGapColor: SwiftCDPDomains.DOM.RGBA?
    
    /// - description: The column gap hatching fill color (default: transparent).
    public var columnHatchColor: SwiftCDPDomains.DOM.RGBA?
    
    /// - description: The named grid areas border color (Default: transparent).
    public var areaBorderColor: SwiftCDPDomains.DOM.RGBA?
    
    /// - description: The grid container background color (Default: transparent).
    public var gridBackgroundColor: SwiftCDPDomains.DOM.RGBA?
    
  }
}

extension SwiftCDPDomains.Overlay {
  /// - see: https://vanilla.aslushnikov.com/?Overlay.FlexContainerHighlightConfig
  /// - description: Configuration data for the highlighting of Flex container elements.
  public struct FlexContainerHighlightConfig: Codable {
    /// - description: The style of the container border
    public var containerBorder: LineStyle?
    
    /// - description: The style of the separator between lines
    public var lineSeparator: LineStyle?
    
    /// - description: The style of the separator between items
    public var itemSeparator: LineStyle?
    
    /// - description: Style of content-distribution space on the main axis (justify-content).
    public var mainDistributedSpace: BoxStyle?
    
    /// - description: Style of content-distribution space on the cross axis (align-content).
    public var crossDistributedSpace: BoxStyle?
    
    /// - description: Style of empty space caused by row gaps (gap/row-gap).
    public var rowGapSpace: BoxStyle?
    
    /// - description: Style of empty space caused by columns gaps (gap/column-gap).
    public var columnGapSpace: BoxStyle?
    
    /// - description: Style of the self-alignment line (align-items).
    public var crossAlignment: LineStyle?
    
  }
}

extension SwiftCDPDomains.Overlay {
  /// - see: https://vanilla.aslushnikov.com/?Overlay.LineStyle
  /// - description: Style information for drawing a line.
  public struct LineStyle: Codable {
    /// - description: The color of the line (default: transparent)
    public var color: SwiftCDPDomains.DOM.RGBA?
    
    /// - description: The line pattern (default: solid)
    public var pattern: String?
    
  }
}

extension SwiftCDPDomains.Overlay {
  /// - see: https://vanilla.aslushnikov.com/?Overlay.BoxStyle
  /// - description: Style information for drawing a box.
  public struct BoxStyle: Codable {
    /// - description: The background color for the box (default: transparent)
    public var fillColor: SwiftCDPDomains.DOM.RGBA?
    
    /// - description: The hatching color for the box (default: transparent)
    public var hatchColor: SwiftCDPDomains.DOM.RGBA?
    
  }
}

extension SwiftCDPDomains.Overlay {
  /// - see: https://vanilla.aslushnikov.com/?Overlay.ContrastAlgorithm
  /// - choices: ["aa", "aaa", "apca"]
  public typealias ContrastAlgorithm = String
}

extension SwiftCDPDomains.Overlay {
  /// - see: https://vanilla.aslushnikov.com/?Overlay.HighlightConfig
  /// - description: Configuration data for the highlighting of page elements.
  public struct HighlightConfig: Codable {
    /// - description: Whether the node info tooltip should be shown (default: false).
    public var showInfo: Bool?
    
    /// - description: Whether the node styles in the tooltip (default: false).
    public var showStyles: Bool?
    
    /// - description: Whether the rulers should be shown (default: false).
    public var showRulers: Bool?
    
    /// - description: Whether the a11y info should be shown (default: true).
    public var showAccessibilityInfo: Bool?
    
    /// - description: Whether the extension lines from node to the rulers should be shown (default: false).
    public var showExtensionLines: Bool?
    
    /// - description: The content box highlight fill color (default: transparent).
    public var contentColor: SwiftCDPDomains.DOM.RGBA?
    
    /// - description: The padding highlight fill color (default: transparent).
    public var paddingColor: SwiftCDPDomains.DOM.RGBA?
    
    /// - description: The border highlight fill color (default: transparent).
    public var borderColor: SwiftCDPDomains.DOM.RGBA?
    
    /// - description: The margin highlight fill color (default: transparent).
    public var marginColor: SwiftCDPDomains.DOM.RGBA?
    
    /// - description: The event target element highlight fill color (default: transparent).
    public var eventTargetColor: SwiftCDPDomains.DOM.RGBA?
    
    /// - description: The shape outside fill color (default: transparent).
    public var shapeColor: SwiftCDPDomains.DOM.RGBA?
    
    /// - description: The shape margin fill color (default: transparent).
    public var shapeMarginColor: SwiftCDPDomains.DOM.RGBA?
    
    /// - description: The grid layout color (default: transparent).
    public var cssGridColor: SwiftCDPDomains.DOM.RGBA?
    
    /// - description: The color format used to format color styles (default: hex).
    public var colorFormat: ColorFormat?
    
    /// - description: The grid layout highlight configuration (default: all transparent).
    public var gridHighlightConfig: GridHighlightConfig?
    
    /// - description: The flex container highlight configuration (default: all transparent).
    public var flexContainerHighlightConfig: FlexContainerHighlightConfig?
    
    /// - description: The contrast algorithm to use for the contrast ratio (default: aa).
    public var contrastAlgorithm: ContrastAlgorithm?
    
  }
}

extension SwiftCDPDomains.Overlay {
  /// - see: https://vanilla.aslushnikov.com/?Overlay.ColorFormat
  /// - choices: ["rgb", "hsl", "hex"]
  public typealias ColorFormat = String
}

extension SwiftCDPDomains.Overlay {
  /// - see: https://vanilla.aslushnikov.com/?Overlay.GridNodeHighlightConfig
  /// - description: Configurations for Persistent Grid Highlight
  public struct GridNodeHighlightConfig: Codable {
    /// - description: A descriptor for the highlight appearance.
    public var gridHighlightConfig: GridHighlightConfig
    
    /// - description: Identifier of the node to highlight.
    public var nodeId: SwiftCDPDomains.DOM.NodeId
    
  }
}

extension SwiftCDPDomains.Overlay {
  /// - see: https://vanilla.aslushnikov.com/?Overlay.FlexNodeHighlightConfig
  public struct FlexNodeHighlightConfig: Codable {
    /// - description: A descriptor for the highlight appearance of flex containers.
    public var flexContainerHighlightConfig: FlexContainerHighlightConfig
    
    /// - description: Identifier of the node to highlight.
    public var nodeId: SwiftCDPDomains.DOM.NodeId
    
  }
}

extension SwiftCDPDomains.Overlay {
  /// - see: https://vanilla.aslushnikov.com/?Overlay.HingeConfig
  /// - description: Configuration for dual screen hinge
  public struct HingeConfig: Codable {
    /// - description: A rectangle represent hinge
    public var rect: SwiftCDPDomains.DOM.Rect
    
    /// - description: The content box highlight fill color (default: a dark color).
    public var contentColor: SwiftCDPDomains.DOM.RGBA?
    
    /// - description: The content box highlight outline color (default: transparent).
    public var outlineColor: SwiftCDPDomains.DOM.RGBA?
    
  }
}

extension SwiftCDPDomains.Overlay {
  /// - see: https://vanilla.aslushnikov.com/?Overlay.InspectMode
  /// - choices: ["searchForNode", "searchForUAShadowDOM", "captureAreaScreenshot", "showDistances", "none"]
  public typealias InspectMode = String
}

