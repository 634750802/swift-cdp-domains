import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "DOM"

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct collectClassNamesFromSubtree: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "collectClassNamesFromSubtree"
    
    /// - description: Id of the node to collect class names.
    public var nodeId: NodeId
    
    public init(nodeId: NodeId) {
      self.nodeId = nodeId
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

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct copyTo: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "copyTo"
    
    /// - description: Id of the node to copy.
    public var nodeId: NodeId
    
    /// - description: Id of the element to drop the copy into.
    public var targetNodeId: NodeId
    
    /// - description: Drop the copy before this node (if absent, the copy becomes the last child of
    /// `targetNodeId`).
    public var insertBeforeNodeId: NodeId?
    
    public init(nodeId: NodeId, targetNodeId: NodeId, insertBeforeNodeId: NodeId? = nil) {
      self.nodeId = nodeId
      self.targetNodeId = targetNodeId
      self.insertBeforeNodeId = insertBeforeNodeId
    }
    
    public struct Result: Decodable {
      /// - description: Id of the node clone.
      public var nodeId: NodeId
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct describeNode: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "describeNode"
    
    /// - description: Identifier of the node.
    public var nodeId: NodeId?
    
    /// - description: Identifier of the backend node.
    public var backendNodeId: BackendNodeId?
    
    /// - description: JavaScript object id of the node wrapper.
    public var objectId: SwiftCDPDomains.Runtime.RemoteObjectId?
    
    /// - description: The maximum depth at which children should be retrieved, defaults to 1. Use -1 for the
    /// entire subtree or provide an integer larger than 0.
    public var depth: Int?
    
    /// - description: Whether or not iframes and shadow roots should be traversed when returning the subtree
    /// (default is false).
    public var pierce: Bool?
    
    public init(nodeId: NodeId? = nil, backendNodeId: BackendNodeId? = nil, objectId: SwiftCDPDomains.Runtime.RemoteObjectId? = nil, depth: Int? = nil, pierce: Bool? = nil) {
      self.nodeId = nodeId
      self.backendNodeId = backendNodeId
      self.objectId = objectId
      self.depth = depth
      self.pierce = pierce
    }
    
    public struct Result: Decodable {
      /// - description: Node description.
      public var node: Node
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct scrollIntoViewIfNeeded: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "scrollIntoViewIfNeeded"
    
    /// - description: Identifier of the node.
    public var nodeId: NodeId?
    
    /// - description: Identifier of the backend node.
    public var backendNodeId: BackendNodeId?
    
    /// - description: JavaScript object id of the node wrapper.
    public var objectId: SwiftCDPDomains.Runtime.RemoteObjectId?
    
    /// - description: The rect to be scrolled into view, relative to the node's border box, in CSS pixels.
    /// When omitted, center of the node will be used, similar to Element.scrollIntoView.
    public var rect: Rect?
    
    public init(nodeId: NodeId? = nil, backendNodeId: BackendNodeId? = nil, objectId: SwiftCDPDomains.Runtime.RemoteObjectId? = nil, rect: Rect? = nil) {
      self.nodeId = nodeId
      self.backendNodeId = backendNodeId
      self.objectId = objectId
      self.rect = rect
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct discardSearchResults: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "discardSearchResults"
    
    /// - description: Unique search session identifier.
    public var searchId: String
    
    public init(searchId: String) {
      self.searchId = searchId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "enable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct focus: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "focus"
    
    /// - description: Identifier of the node.
    public var nodeId: NodeId?
    
    /// - description: Identifier of the backend node.
    public var backendNodeId: BackendNodeId?
    
    /// - description: JavaScript object id of the node wrapper.
    public var objectId: SwiftCDPDomains.Runtime.RemoteObjectId?
    
    public init(nodeId: NodeId? = nil, backendNodeId: BackendNodeId? = nil, objectId: SwiftCDPDomains.Runtime.RemoteObjectId? = nil) {
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

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct getAttributes: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "getAttributes"
    
    /// - description: Id of the node to retrieve attibutes for.
    public var nodeId: NodeId
    
    public init(nodeId: NodeId) {
      self.nodeId = nodeId
    }
    
    public struct Result: Decodable {
      /// - description: An interleaved array of node attribute names and values.
      public var attributes: [String]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct getBoxModel: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "getBoxModel"
    
    /// - description: Identifier of the node.
    public var nodeId: NodeId?
    
    /// - description: Identifier of the backend node.
    public var backendNodeId: BackendNodeId?
    
    /// - description: JavaScript object id of the node wrapper.
    public var objectId: SwiftCDPDomains.Runtime.RemoteObjectId?
    
    public init(nodeId: NodeId? = nil, backendNodeId: BackendNodeId? = nil, objectId: SwiftCDPDomains.Runtime.RemoteObjectId? = nil) {
      self.nodeId = nodeId
      self.backendNodeId = backendNodeId
      self.objectId = objectId
    }
    
    public struct Result: Decodable {
      /// - description: Box model for the node.
      public var model: BoxModel
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct getContentQuads: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "getContentQuads"
    
    /// - description: Identifier of the node.
    public var nodeId: NodeId?
    
    /// - description: Identifier of the backend node.
    public var backendNodeId: BackendNodeId?
    
    /// - description: JavaScript object id of the node wrapper.
    public var objectId: SwiftCDPDomains.Runtime.RemoteObjectId?
    
    public init(nodeId: NodeId? = nil, backendNodeId: BackendNodeId? = nil, objectId: SwiftCDPDomains.Runtime.RemoteObjectId? = nil) {
      self.nodeId = nodeId
      self.backendNodeId = backendNodeId
      self.objectId = objectId
    }
    
    public struct Result: Decodable {
      /// - description: Quads that describe node layout relative to viewport.
      public var quads: [Quad]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct getDocument: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "getDocument"
    
    /// - description: The maximum depth at which children should be retrieved, defaults to 1. Use -1 for the
    /// entire subtree or provide an integer larger than 0.
    public var depth: Int?
    
    /// - description: Whether or not iframes and shadow roots should be traversed when returning the subtree
    /// (default is false).
    public var pierce: Bool?
    
    public init(depth: Int? = nil, pierce: Bool? = nil) {
      self.depth = depth
      self.pierce = pierce
    }
    
    public struct Result: Decodable {
      /// - description: Resulting node.
      public var root: Node
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  @available(*, deprecated)
  public struct getFlattenedDocument: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "getFlattenedDocument"
    
    /// - description: The maximum depth at which children should be retrieved, defaults to 1. Use -1 for the
    /// entire subtree or provide an integer larger than 0.
    public var depth: Int?
    
    /// - description: Whether or not iframes and shadow roots should be traversed when returning the subtree
    /// (default is false).
    public var pierce: Bool?
    
    public init(depth: Int? = nil, pierce: Bool? = nil) {
      self.depth = depth
      self.pierce = pierce
    }
    
    public struct Result: Decodable {
      /// - description: Resulting node.
      public var nodes: [Node]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct getNodesForSubtreeByStyle: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "getNodesForSubtreeByStyle"
    
    /// - description: Node ID pointing to the root of a subtree.
    public var nodeId: NodeId
    
    /// - description: The style to filter nodes by (includes nodes if any of properties matches).
    public var computedStyles: [CSSComputedStyleProperty]
    
    /// - description: Whether or not iframes and shadow roots in the same target should be traversed when returning the
    /// results (default is false).
    public var pierce: Bool?
    
    public init(nodeId: NodeId, computedStyles: [CSSComputedStyleProperty], pierce: Bool? = nil) {
      self.nodeId = nodeId
      self.computedStyles = computedStyles
      self.pierce = pierce
    }
    
    public struct Result: Decodable {
      /// - description: Resulting nodes.
      public var nodeIds: [NodeId]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct getNodeForLocation: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "getNodeForLocation"
    
    /// - description: X coordinate.
    public var x: Int
    
    /// - description: Y coordinate.
    public var y: Int
    
    /// - description: False to skip to the nearest non-UA shadow root ancestor (default: false).
    public var includeUserAgentShadowDOM: Bool?
    
    /// - description: Whether to ignore pointer-events: none on elements and hit test them.
    public var ignorePointerEventsNone: Bool?
    
    public init(x: Int, y: Int, includeUserAgentShadowDOM: Bool? = nil, ignorePointerEventsNone: Bool? = nil) {
      self.x = x
      self.y = y
      self.includeUserAgentShadowDOM = includeUserAgentShadowDOM
      self.ignorePointerEventsNone = ignorePointerEventsNone
    }
    
    public struct Result: Decodable {
      /// - description: Resulting node.
      public var backendNodeId: BackendNodeId
      /// - description: Frame this node belongs to.
      public var frameId: SwiftCDPDomains.Page.FrameId
      /// - description: Id of the node at given coordinates, only when enabled and requested document.
      public var nodeId: NodeId?
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct getOuterHTML: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "getOuterHTML"
    
    /// - description: Identifier of the node.
    public var nodeId: NodeId?
    
    /// - description: Identifier of the backend node.
    public var backendNodeId: BackendNodeId?
    
    /// - description: JavaScript object id of the node wrapper.
    public var objectId: SwiftCDPDomains.Runtime.RemoteObjectId?
    
    public init(nodeId: NodeId? = nil, backendNodeId: BackendNodeId? = nil, objectId: SwiftCDPDomains.Runtime.RemoteObjectId? = nil) {
      self.nodeId = nodeId
      self.backendNodeId = backendNodeId
      self.objectId = objectId
    }
    
    public struct Result: Decodable {
      /// - description: Outer HTML markup.
      public var outerHTML: String
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct getRelayoutBoundary: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "getRelayoutBoundary"
    
    /// - description: Id of the node.
    public var nodeId: NodeId
    
    public init(nodeId: NodeId) {
      self.nodeId = nodeId
    }
    
    public struct Result: Decodable {
      /// - description: Relayout boundary node id for the given node.
      public var nodeId: NodeId
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct getSearchResults: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "getSearchResults"
    
    /// - description: Unique search session identifier.
    public var searchId: String
    
    /// - description: Start index of the search result to be returned.
    public var fromIndex: Int
    
    /// - description: End index of the search result to be returned.
    public var toIndex: Int
    
    public init(searchId: String, fromIndex: Int, toIndex: Int) {
      self.searchId = searchId
      self.fromIndex = fromIndex
      self.toIndex = toIndex
    }
    
    public struct Result: Decodable {
      /// - description: Ids of the search result nodes.
      public var nodeIds: [NodeId]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct hideHighlight: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "hideHighlight"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct highlightNode: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "highlightNode"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct highlightRect: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "highlightRect"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct markUndoableState: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "markUndoableState"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct moveTo: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "moveTo"
    
    /// - description: Id of the node to move.
    public var nodeId: NodeId
    
    /// - description: Id of the element to drop the moved node into.
    public var targetNodeId: NodeId
    
    /// - description: Drop node before this one (if absent, the moved node becomes the last child of
    /// `targetNodeId`).
    public var insertBeforeNodeId: NodeId?
    
    public init(nodeId: NodeId, targetNodeId: NodeId, insertBeforeNodeId: NodeId? = nil) {
      self.nodeId = nodeId
      self.targetNodeId = targetNodeId
      self.insertBeforeNodeId = insertBeforeNodeId
    }
    
    public struct Result: Decodable {
      /// - description: New id of the moved node.
      public var nodeId: NodeId
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct performSearch: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "performSearch"
    
    /// - description: Plain text or query selector or XPath search query.
    public var query: String
    
    /// - description: True to search in user agent shadow DOM.
    public var includeUserAgentShadowDOM: Bool?
    
    public init(query: String, includeUserAgentShadowDOM: Bool? = nil) {
      self.query = query
      self.includeUserAgentShadowDOM = includeUserAgentShadowDOM
    }
    
    public struct Result: Decodable {
      /// - description: Unique search session identifier.
      public var searchId: String
      /// - description: Number of search results.
      public var resultCount: Int
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct pushNodeByPathToFrontend: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "pushNodeByPathToFrontend"
    
    /// - description: Path to node in the proprietary format.
    public var path: String
    
    public init(path: String) {
      self.path = path
    }
    
    public struct Result: Decodable {
      /// - description: Id of the node for given path.
      public var nodeId: NodeId
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct pushNodesByBackendIdsToFrontend: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "pushNodesByBackendIdsToFrontend"
    
    /// - description: The array of backend node ids.
    public var backendNodeIds: [BackendNodeId]
    
    public init(backendNodeIds: [BackendNodeId]) {
      self.backendNodeIds = backendNodeIds
    }
    
    public struct Result: Decodable {
      /// - description: The array of ids of pushed nodes that correspond to the backend ids specified in
      /// backendNodeIds.
      public var nodeIds: [NodeId]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct querySelector: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "querySelector"
    
    /// - description: Id of the node to query upon.
    public var nodeId: NodeId
    
    /// - description: Selector string.
    public var selector: String
    
    public init(nodeId: NodeId, selector: String) {
      self.nodeId = nodeId
      self.selector = selector
    }
    
    public struct Result: Decodable {
      /// - description: Query selector result.
      public var nodeId: NodeId
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct querySelectorAll: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "querySelectorAll"
    
    /// - description: Id of the node to query upon.
    public var nodeId: NodeId
    
    /// - description: Selector string.
    public var selector: String
    
    public init(nodeId: NodeId, selector: String) {
      self.nodeId = nodeId
      self.selector = selector
    }
    
    public struct Result: Decodable {
      /// - description: Query selector result.
      public var nodeIds: [NodeId]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct redo: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "redo"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct removeAttribute: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "removeAttribute"
    
    /// - description: Id of the element to remove attribute from.
    public var nodeId: NodeId
    
    /// - description: Name of the attribute to remove.
    public var name: String
    
    public init(nodeId: NodeId, name: String) {
      self.nodeId = nodeId
      self.name = name
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct removeNode: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "removeNode"
    
    /// - description: Id of the node to remove.
    public var nodeId: NodeId
    
    public init(nodeId: NodeId) {
      self.nodeId = nodeId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct requestChildNodes: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "requestChildNodes"
    
    /// - description: Id of the node to get children for.
    public var nodeId: NodeId
    
    /// - description: The maximum depth at which children should be retrieved, defaults to 1. Use -1 for the
    /// entire subtree or provide an integer larger than 0.
    public var depth: Int?
    
    /// - description: Whether or not iframes and shadow roots should be traversed when returning the sub-tree
    /// (default is false).
    public var pierce: Bool?
    
    public init(nodeId: NodeId, depth: Int? = nil, pierce: Bool? = nil) {
      self.nodeId = nodeId
      self.depth = depth
      self.pierce = pierce
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct requestNode: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "requestNode"
    
    /// - description: JavaScript object id to convert into node.
    public var objectId: SwiftCDPDomains.Runtime.RemoteObjectId
    
    public init(objectId: SwiftCDPDomains.Runtime.RemoteObjectId) {
      self.objectId = objectId
    }
    
    public struct Result: Decodable {
      /// - description: Node id for given object.
      public var nodeId: NodeId
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct resolveNode: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "resolveNode"
    
    /// - description: Id of the node to resolve.
    public var nodeId: NodeId?
    
    /// - description: Backend identifier of the node to resolve.
    public var backendNodeId: SwiftCDPDomains.DOM.BackendNodeId?
    
    /// - description: Symbolic group name that can be used to release multiple objects.
    public var objectGroup: String?
    
    /// - description: Execution context in which to resolve the node.
    public var executionContextId: SwiftCDPDomains.Runtime.ExecutionContextId?
    
    public init(nodeId: NodeId? = nil, backendNodeId: SwiftCDPDomains.DOM.BackendNodeId? = nil, objectGroup: String? = nil, executionContextId: SwiftCDPDomains.Runtime.ExecutionContextId? = nil) {
      self.nodeId = nodeId
      self.backendNodeId = backendNodeId
      self.objectGroup = objectGroup
      self.executionContextId = executionContextId
    }
    
    public struct Result: Decodable {
      /// - description: JavaScript object wrapper for given node.
      public var object: SwiftCDPDomains.Runtime.RemoteObject
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct setAttributeValue: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "setAttributeValue"
    
    /// - description: Id of the element to set attribute for.
    public var nodeId: NodeId
    
    /// - description: Attribute name.
    public var name: String
    
    /// - description: Attribute value.
    public var value: String
    
    public init(nodeId: NodeId, name: String, value: String) {
      self.nodeId = nodeId
      self.name = name
      self.value = value
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct setAttributesAsText: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "setAttributesAsText"
    
    /// - description: Id of the element to set attributes for.
    public var nodeId: NodeId
    
    /// - description: Text with a number of attributes. Will parse this text using HTML parser.
    public var text: String
    
    /// - description: Attribute name to replace with new attributes derived from text in case text parsed
    /// successfully.
    public var name: String?
    
    public init(nodeId: NodeId, text: String, name: String? = nil) {
      self.nodeId = nodeId
      self.text = text
      self.name = name
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct setFileInputFiles: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "setFileInputFiles"
    
    /// - description: Array of file paths to set.
    public var files: [String]
    
    /// - description: Identifier of the node.
    public var nodeId: NodeId?
    
    /// - description: Identifier of the backend node.
    public var backendNodeId: BackendNodeId?
    
    /// - description: JavaScript object id of the node wrapper.
    public var objectId: SwiftCDPDomains.Runtime.RemoteObjectId?
    
    public init(files: [String], nodeId: NodeId? = nil, backendNodeId: BackendNodeId? = nil, objectId: SwiftCDPDomains.Runtime.RemoteObjectId? = nil) {
      self.files = files
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

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct setNodeStackTracesEnabled: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "setNodeStackTracesEnabled"
    
    /// - description: Enable or disable.
    public var enable: Bool
    
    public init(enable: Bool) {
      self.enable = enable
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct getNodeStackTraces: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "getNodeStackTraces"
    
    /// - description: Id of the node to get stack traces for.
    public var nodeId: NodeId
    
    public init(nodeId: NodeId) {
      self.nodeId = nodeId
    }
    
    public struct Result: Decodable {
      /// - description: Creation stack trace, if available.
      public var creation: SwiftCDPDomains.Runtime.StackTrace?
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct getFileInfo: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "getFileInfo"
    
    /// - description: JavaScript object id of the node wrapper.
    public var objectId: SwiftCDPDomains.Runtime.RemoteObjectId
    
    public init(objectId: SwiftCDPDomains.Runtime.RemoteObjectId) {
      self.objectId = objectId
    }
    
    public struct Result: Decodable {
      public var path: String
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct setInspectedNode: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "setInspectedNode"
    
    /// - description: DOM node id to be accessible by means of $x command line API.
    public var nodeId: NodeId
    
    public init(nodeId: NodeId) {
      self.nodeId = nodeId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct setNodeName: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "setNodeName"
    
    /// - description: Id of the node to set name for.
    public var nodeId: NodeId
    
    /// - description: New node's name.
    public var name: String
    
    public init(nodeId: NodeId, name: String) {
      self.nodeId = nodeId
      self.name = name
    }
    
    public struct Result: Decodable {
      /// - description: New node's id.
      public var nodeId: NodeId
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct setNodeValue: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "setNodeValue"
    
    /// - description: Id of the node to set value for.
    public var nodeId: NodeId
    
    /// - description: New node's value.
    public var value: String
    
    public init(nodeId: NodeId, value: String) {
      self.nodeId = nodeId
      self.value = value
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct setOuterHTML: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "setOuterHTML"
    
    /// - description: Id of the node to set markup for.
    public var nodeId: NodeId
    
    /// - description: Outer HTML markup to set.
    public var outerHTML: String
    
    public init(nodeId: NodeId, outerHTML: String) {
      self.nodeId = nodeId
      self.outerHTML = outerHTML
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct undo: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "undo"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct getFrameOwner: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    public static let name = "getFrameOwner"
    
    public var frameId: SwiftCDPDomains.Page.FrameId
    
    public init(frameId: SwiftCDPDomains.Page.FrameId) {
      self.frameId = frameId
    }
    
    public struct Result: Decodable {
      /// - description: Resulting node.
      public var backendNodeId: BackendNodeId
      /// - description: Id of the node at given coordinates, only when enabled and requested document.
      public var nodeId: NodeId?
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

