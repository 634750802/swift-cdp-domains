import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "DOM"

extension SwiftCDPDomains.DOM {
  /// - see: https://vanilla.aslushnikov.com/?DOM.NodeId
  /// - description: Unique DOM node identifier.
  public struct NodeId: Codable {
    private var rawValue: Int
    
    public init(from decoder: Decoder) throws {
      self.rawValue = try decoder.singleValueContainer().decode(Int.self)
    }
    
    public func encode(to encoder: Encoder) throws {
      var container = encoder.singleValueContainer()
      try container.encode(rawValue)
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - see: https://vanilla.aslushnikov.com/?DOM.BackendNodeId
  /// - description: Unique DOM node identifier used to reference a node that may not have been pushed to the
  /// front-end.
  public struct BackendNodeId: Codable {
    private var rawValue: Int
    
    public init(from decoder: Decoder) throws {
      self.rawValue = try decoder.singleValueContainer().decode(Int.self)
    }
    
    public func encode(to encoder: Encoder) throws {
      var container = encoder.singleValueContainer()
      try container.encode(rawValue)
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - see: https://vanilla.aslushnikov.com/?DOM.BackendNode
  /// - description: Backend node with a friendly name.
  public struct BackendNode: Codable {
    /// - description: `Node`'s nodeType.
    public var nodeType: Int
    
    /// - description: `Node`'s nodeName.
    public var nodeName: String
    
    public var backendNodeId: BackendNodeId
    
  }
}

extension SwiftCDPDomains.DOM {
  /// - see: https://vanilla.aslushnikov.com/?DOM.PseudoType
  /// - description: Pseudo element type.
  /// - choices: ["first-line", "first-letter", "before", "after", "marker", "backdrop", "selection", "target-text", "first-line-inherited", "scrollbar", "scrollbar-thumb", "scrollbar-button", "scrollbar-track", "scrollbar-track-piece", "scrollbar-corner", "resizer", "input-list-button"]
  public typealias PseudoType = String
}

extension SwiftCDPDomains.DOM {
  /// - see: https://vanilla.aslushnikov.com/?DOM.ShadowRootType
  /// - description: Shadow root type.
  /// - choices: ["user-agent", "open", "closed"]
  public typealias ShadowRootType = String
}

extension SwiftCDPDomains.DOM {
  /// - see: https://vanilla.aslushnikov.com/?DOM.Node
  /// - description: DOM interaction is implemented in terms of mirror objects that represent the actual DOM nodes.
  /// DOMNode is a base node mirror type.
  public struct Node: Codable {
    /// - description: Node identifier that is passed into the rest of the DOM messages as the `nodeId`. Backend
    /// will only push node with given `id` once. It is aware of all requested nodes and will only
    /// fire DOM events for nodes known to the client.
    public var nodeId: NodeId
    
    /// - description: The id of the parent node if any.
    public var parentId: NodeId?
    
    /// - description: The BackendNodeId for this node.
    public var backendNodeId: BackendNodeId
    
    /// - description: `Node`'s nodeType.
    public var nodeType: Int
    
    /// - description: `Node`'s nodeName.
    public var nodeName: String
    
    /// - description: `Node`'s localName.
    public var localName: String
    
    /// - description: `Node`'s nodeValue.
    public var nodeValue: String
    
    /// - description: Child count for `Container` nodes.
    public var childNodeCount: Int?
    
    /// - description: Child nodes of this node when requested with children.
    public var children: [StructReference<Node>]?
    
    /// - description: Attributes of the `Element` node in the form of flat array `[name1, value1, name2, value2]`.
    public var attributes: [String]?
    
    /// - description: Document URL that `Document` or `FrameOwner` node points to.
    public var documentURL: String?
    
    /// - description: Base URL that `Document` or `FrameOwner` node uses for URL completion.
    public var baseURL: String?
    
    /// - description: `DocumentType`'s publicId.
    public var publicId: String?
    
    /// - description: `DocumentType`'s systemId.
    public var systemId: String?
    
    /// - description: `DocumentType`'s internalSubset.
    public var internalSubset: String?
    
    /// - description: `Document`'s XML version in case of XML documents.
    public var xmlVersion: String?
    
    /// - description: `Attr`'s name.
    public var name: String?
    
    /// - description: `Attr`'s value.
    public var value: String?
    
    /// - description: Pseudo element type for this node.
    public var pseudoType: PseudoType?
    
    /// - description: Shadow root type.
    public var shadowRootType: ShadowRootType?
    
    /// - description: Frame ID for frame owner elements.
    public var frameId: SwiftCDPDomains.Page.FrameId?
    
    /// - description: Content document for frame owner elements.
    public var contentDocument: StructReference<Node>?
    
    /// - description: Shadow root list for given element host.
    public var shadowRoots: [StructReference<Node>]?
    
    /// - description: Content document fragment for template elements.
    public var templateContent: StructReference<Node>?
    
    /// - description: Pseudo elements associated with this node.
    public var pseudoElements: [StructReference<Node>]?
    
    /// - description: Import document for the HTMLImport links.
    public var importedDocument: StructReference<Node>?
    
    /// - description: Distributed nodes for given insertion point.
    public var distributedNodes: [BackendNode]?
    
    /// - description: Whether the node is SVG.
    public var isSVG: Bool?
    
  }
}

extension SwiftCDPDomains.DOM {
  /// - see: https://vanilla.aslushnikov.com/?DOM.RGBA
  /// - description: A structure holding an RGBA color.
  public struct RGBA: Codable {
    /// - description: The red component, in the [0-255] range.
    public var r: Int
    
    /// - description: The green component, in the [0-255] range.
    public var g: Int
    
    /// - description: The blue component, in the [0-255] range.
    public var b: Int
    
    /// - description: The alpha component, in the [0-1] range (default: 1).
    public var a: JsonNumber?
    
  }
}

extension SwiftCDPDomains.DOM {
  /// - see: https://vanilla.aslushnikov.com/?DOM.Quad
  /// - description: An array of quad vertices, x immediately followed by y for each point, points clock-wise.
  public typealias Quad = Array<String>
}

extension SwiftCDPDomains.DOM {
  /// - see: https://vanilla.aslushnikov.com/?DOM.BoxModel
  /// - description: Box model.
  public struct BoxModel: Codable {
    /// - description: Content box
    public var content: Quad
    
    /// - description: Padding box
    public var padding: Quad
    
    /// - description: Border box
    public var border: Quad
    
    /// - description: Margin box
    public var margin: Quad
    
    /// - description: Node width
    public var width: Int
    
    /// - description: Node height
    public var height: Int
    
    /// - description: Shape outside coordinates
    public var shapeOutside: ShapeOutsideInfo?
    
  }
}

extension SwiftCDPDomains.DOM {
  /// - see: https://vanilla.aslushnikov.com/?DOM.ShapeOutsideInfo
  /// - description: CSS Shape Outside details.
  public struct ShapeOutsideInfo: Codable {
    /// - description: Shape bounds
    public var bounds: Quad
    
    /// - description: Shape coordinate details
    public var shape: [[String: JsonPrimitive]]
    
    /// - description: Margin shape bounds
    public var marginShape: [[String: JsonPrimitive]]
    
  }
}

extension SwiftCDPDomains.DOM {
  /// - see: https://vanilla.aslushnikov.com/?DOM.Rect
  /// - description: Rectangle.
  public struct Rect: Codable {
    /// - description: X coordinate
    public var x: JsonNumber
    
    /// - description: Y coordinate
    public var y: JsonNumber
    
    /// - description: Rectangle width
    public var width: JsonNumber
    
    /// - description: Rectangle height
    public var height: JsonNumber
    
  }
}

extension SwiftCDPDomains.DOM {
  /// - see: https://vanilla.aslushnikov.com/?DOM.CSSComputedStyleProperty
  public struct CSSComputedStyleProperty: Codable {
    /// - description: Computed style property name.
    public var name: String
    
    /// - description: Computed style property value.
    public var value: String
    
  }
}

