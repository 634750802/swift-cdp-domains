import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "DOM"

extension SwiftCDPDomains.DOM {
  /// - description: This domain exposes DOM read/write operations. Each DOM Node is represented with its mirror object
  /// that has an `id`. This `id` can be used to get additional information on the Node, resolve it into
  /// the JavaScript object wrapper, etc. It is important that client receives DOM events only for the
  /// nodes that are known to the client. Backend keeps track of the nodes that were sent to the client
  /// and never sends the same node twice. It is client's responsibility to collect information about
  /// the nodes that were sent to the client.<p>Note that `iframe` owner elements will return
  /// corresponding document elements as their child nodes.</p>
  public struct attributeModified: ModelEvent {
    public typealias Model = SwiftCDPDomains.DOM
    
    /// - description: Id of the node that has changed.
    public var nodeId: NodeId
    
    /// - description: Attribute name.
    public var name: String
    
    /// - description: Attribute value.
    public var value: String
    
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
  public struct attributeRemoved: ModelEvent {
    public typealias Model = SwiftCDPDomains.DOM
    
    /// - description: Id of the node that has changed.
    public var nodeId: NodeId
    
    /// - description: A ttribute name.
    public var name: String
    
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
  public struct characterDataModified: ModelEvent {
    public typealias Model = SwiftCDPDomains.DOM
    
    /// - description: Id of the node that has changed.
    public var nodeId: NodeId
    
    /// - description: New text value.
    public var characterData: String
    
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
  public struct childNodeCountUpdated: ModelEvent {
    public typealias Model = SwiftCDPDomains.DOM
    
    /// - description: Id of the node that has changed.
    public var nodeId: NodeId
    
    /// - description: New node count.
    public var childNodeCount: Int
    
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
  public struct childNodeInserted: ModelEvent {
    public typealias Model = SwiftCDPDomains.DOM
    
    /// - description: Id of the node that has changed.
    public var parentNodeId: NodeId
    
    /// - description: If of the previous siblint.
    public var previousNodeId: NodeId
    
    /// - description: Inserted node data.
    public var node: Node
    
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
  public struct childNodeRemoved: ModelEvent {
    public typealias Model = SwiftCDPDomains.DOM
    
    /// - description: Parent id.
    public var parentNodeId: NodeId
    
    /// - description: Id of the node that has been removed.
    public var nodeId: NodeId
    
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
  public struct distributedNodesUpdated: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    
    /// - description: Insertion point where distrubuted nodes were updated.
    public var insertionPointId: NodeId
    
    /// - description: Distributed nodes for given insertion point.
    public var distributedNodes: [BackendNode]
    
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
  public struct documentUpdated: ModelEvent {
    public typealias Model = SwiftCDPDomains.DOM
    
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
  public struct inlineStyleInvalidated: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    
    /// - description: Ids of the nodes for which the inline styles have been invalidated.
    public var nodeIds: [NodeId]
    
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
  public struct pseudoElementAdded: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    
    /// - description: Pseudo element's parent element id.
    public var parentId: NodeId
    
    /// - description: The added pseudo element.
    public var pseudoElement: Node
    
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
  public struct pseudoElementRemoved: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    
    /// - description: Pseudo element's parent element id.
    public var parentId: NodeId
    
    /// - description: The removed pseudo element id.
    public var pseudoElementId: NodeId
    
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
  public struct setChildNodes: ModelEvent {
    public typealias Model = SwiftCDPDomains.DOM
    
    /// - description: Parent node id to populate with children.
    public var parentId: NodeId
    
    /// - description: Child nodes array.
    public var nodes: [Node]
    
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
  public struct shadowRootPopped: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    
    /// - description: Host element id.
    public var hostId: NodeId
    
    /// - description: Shadow root id.
    public var rootId: NodeId
    
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
  public struct shadowRootPushed: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    
    /// - description: Host element id.
    public var hostId: NodeId
    
    /// - description: Shadow root.
    public var root: Node
    
  }
}

