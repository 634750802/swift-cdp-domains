import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "DOM"

extension SwiftCDPDomains.DOM {
  /// - description: Fired when `Element`'s attribute is modified.
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
  /// - description: Fired when `Element`'s attribute is removed.
  public struct attributeRemoved: ModelEvent {
    public typealias Model = SwiftCDPDomains.DOM
    
    /// - description: Id of the node that has changed.
    public var nodeId: NodeId
    
    /// - description: A ttribute name.
    public var name: String
    
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: Mirrors `DOMCharacterDataModified` event.
  public struct characterDataModified: ModelEvent {
    public typealias Model = SwiftCDPDomains.DOM
    
    /// - description: Id of the node that has changed.
    public var nodeId: NodeId
    
    /// - description: New text value.
    public var characterData: String
    
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: Fired when `Container`'s child node count has changed.
  public struct childNodeCountUpdated: ModelEvent {
    public typealias Model = SwiftCDPDomains.DOM
    
    /// - description: Id of the node that has changed.
    public var nodeId: NodeId
    
    /// - description: New node count.
    public var childNodeCount: Int
    
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: Mirrors `DOMNodeInserted` event.
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
  /// - description: Mirrors `DOMNodeRemoved` event.
  public struct childNodeRemoved: ModelEvent {
    public typealias Model = SwiftCDPDomains.DOM
    
    /// - description: Parent id.
    public var parentNodeId: NodeId
    
    /// - description: Id of the node that has been removed.
    public var nodeId: NodeId
    
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: Called when distrubution is changed.
  /// - intention: This is an experimental property.
  public struct distributedNodesUpdated: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    
    /// - description: Insertion point where distrubuted nodes were updated.
    public var insertionPointId: NodeId
    
    /// - description: Distributed nodes for given insertion point.
    public var distributedNodes: [BackendNode]
    
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: Fired when `Document` has been totally updated. Node ids are no longer valid.
  public struct documentUpdated: ModelEvent {
    public typealias Model = SwiftCDPDomains.DOM
    
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: Fired when `Element`'s inline style is modified via a CSS property modification.
  /// - intention: This is an experimental property.
  public struct inlineStyleInvalidated: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    
    /// - description: Ids of the nodes for which the inline styles have been invalidated.
    public var nodeIds: [NodeId]
    
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: Called when a pseudo element is added to an element.
  /// - intention: This is an experimental property.
  public struct pseudoElementAdded: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    
    /// - description: Pseudo element's parent element id.
    public var parentId: NodeId
    
    /// - description: The added pseudo element.
    public var pseudoElement: Node
    
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: Called when a pseudo element is removed from an element.
  /// - intention: This is an experimental property.
  public struct pseudoElementRemoved: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    
    /// - description: Pseudo element's parent element id.
    public var parentId: NodeId
    
    /// - description: The removed pseudo element id.
    public var pseudoElementId: NodeId
    
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: Fired when backend wants to provide client with the missing DOM structure. This happens upon
  /// most of the calls requesting node ids.
  public struct setChildNodes: ModelEvent {
    public typealias Model = SwiftCDPDomains.DOM
    
    /// - description: Parent node id to populate with children.
    public var parentId: NodeId
    
    /// - description: Child nodes array.
    public var nodes: [Node]
    
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: Called when shadow root is popped from the element.
  /// - intention: This is an experimental property.
  public struct shadowRootPopped: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    
    /// - description: Host element id.
    public var hostId: NodeId
    
    /// - description: Shadow root id.
    public var rootId: NodeId
    
  }
}

extension SwiftCDPDomains.DOM {
  /// - description: Called when shadow root is pushed into the element.
  /// - intention: This is an experimental property.
  public struct shadowRootPushed: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOM
    
    /// - description: Host element id.
    public var hostId: NodeId
    
    /// - description: Shadow root.
    public var root: Node
    
  }
}

