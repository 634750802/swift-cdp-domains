import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Accessibility"

extension SwiftCDPDomains.Accessibility {
  /// - description: Disables the accessibility domain.
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
  /// - description: Enables the accessibility domain which causes `AXNodeId`s to remain consistent between method calls.
  /// This turns on accessibility for the page, which can impact performance until accessibility is disabled.
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
  /// - description: Fetches the accessibility node and partial accessibility tree for this DOM node, if it exists.
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
  /// - description: Fetches the entire accessibility tree
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
  /// - description: Query a DOM node's accessibility subtree for accessible name and role.
  /// This command computes the name and role for all nodes in the subtree, including those that are
  /// ignored for accessibility, and returns those that mactch the specified name and role. If no DOM
  /// node is specified, or the DOM node does not exist, the command returns an error. If neither
  /// `accessibleName` or `role` is specified, it returns all the accessibility nodes in the subtree.
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

