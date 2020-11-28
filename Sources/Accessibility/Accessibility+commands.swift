import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Accessibility"

extension SwiftCDPDomains.Accessibility {
  /// - intention: This is an experimental property.
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Accessibility
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Accessibility {
  /// - intention: This is an experimental property.
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Accessibility
    public static let name = "enable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Accessibility {
  /// - intention: This is an experimental property.
  public struct getPartialAXTree: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Accessibility
    public static let name = "getPartialAXTree"
    
    /// - description: Identifier of the node to get the partial accessibility tree for.
    public var nodeId: SwiftCDPDomains.DOM.NodeId?
    
    /// - description: Identifier of the backend node to get the partial accessibility tree for.
    public var backendNodeId: SwiftCDPDomains.DOM.BackendNodeId?
    
    /// - description: JavaScript object id of the node wrapper to get the partial accessibility tree for.
    public var objectId: SwiftCDPDomains.Runtime.RemoteObjectId?
    
    /// - description: Whether to fetch this nodes ancestors, siblings and children. Defaults to true.
    public var fetchRelatives: Bool?
    
    public init(nodeId: SwiftCDPDomains.DOM.NodeId? = nil, backendNodeId: SwiftCDPDomains.DOM.BackendNodeId? = nil, objectId: SwiftCDPDomains.Runtime.RemoteObjectId? = nil, fetchRelatives: Bool? = nil) {
      self.nodeId = nodeId
      self.backendNodeId = backendNodeId
      self.objectId = objectId
      self.fetchRelatives = fetchRelatives
    }
    
    public struct Result: Decodable {
      /// - description: The `Accessibility.AXNode` for this DOM node, if it exists, plus its ancestors, siblings and
      /// children, if requested.
      public var nodes: [AXNode]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Accessibility {
  /// - intention: This is an experimental property.
  public struct getFullAXTree: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Accessibility
    public static let name = "getFullAXTree"
    
    public init() {
    }
    
    public struct Result: Decodable {
      public var nodes: [AXNode]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Accessibility {
  /// - intention: This is an experimental property.
  public struct queryAXTree: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Accessibility
    public static let name = "queryAXTree"
    
    /// - description: Identifier of the node for the root to query.
    public var nodeId: SwiftCDPDomains.DOM.NodeId?
    
    /// - description: Identifier of the backend node for the root to query.
    public var backendNodeId: SwiftCDPDomains.DOM.BackendNodeId?
    
    /// - description: JavaScript object id of the node wrapper for the root to query.
    public var objectId: SwiftCDPDomains.Runtime.RemoteObjectId?
    
    /// - description: Find nodes with this computed name.
    public var accessibleName: String?
    
    /// - description: Find nodes with this computed role.
    public var role: String?
    
    public init(nodeId: SwiftCDPDomains.DOM.NodeId? = nil, backendNodeId: SwiftCDPDomains.DOM.BackendNodeId? = nil, objectId: SwiftCDPDomains.Runtime.RemoteObjectId? = nil, accessibleName: String? = nil, role: String? = nil) {
      self.nodeId = nodeId
      self.backendNodeId = backendNodeId
      self.objectId = objectId
      self.accessibleName = accessibleName
      self.role = role
    }
    
    public struct Result: Decodable {
      /// - description: A list of `Accessibility.AXNode` matching the specified attributes,
      /// including nodes that are ignored for accessibility.
      public var nodes: [AXNode]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

