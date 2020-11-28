import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "DOMSnapshot"

extension SwiftCDPDomains.DOMSnapshot {
  /// - description: This domain facilitates obtaining document snapshots with DOM, layout, and style information.
  /// - intention: This is an experimental property.
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOMSnapshot
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOMSnapshot {
  /// - description: This domain facilitates obtaining document snapshots with DOM, layout, and style information.
  /// - intention: This is an experimental property.
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOMSnapshot
    public static let name = "enable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOMSnapshot {
  /// - description: This domain facilitates obtaining document snapshots with DOM, layout, and style information.
  /// - intention: This is an experimental property.
  @available(*, deprecated)
  public struct getSnapshot: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOMSnapshot
    public static let name = "getSnapshot"
    
    /// - description: Whitelist of computed styles to return.
    public var computedStyleWhitelist: [String]
    
    /// - description: Whether or not to retrieve details of DOM listeners (default false).
    public var includeEventListeners: Bool?
    
    /// - description: Whether to determine and include the paint order index of LayoutTreeNodes (default false).
    public var includePaintOrder: Bool?
    
    /// - description: Whether to include UA shadow tree in the snapshot (default false).
    public var includeUserAgentShadowTree: Bool?
    
    public init(computedStyleWhitelist: [String], includeEventListeners: Bool? = nil, includePaintOrder: Bool? = nil, includeUserAgentShadowTree: Bool? = nil) {
      self.computedStyleWhitelist = computedStyleWhitelist
      self.includeEventListeners = includeEventListeners
      self.includePaintOrder = includePaintOrder
      self.includeUserAgentShadowTree = includeUserAgentShadowTree
    }
    
    public struct Result: Decodable {
      /// - description: The nodes in the DOM tree. The DOMNode at index 0 corresponds to the root document.
      public var domNodes: [DOMNode]
      /// - description: The nodes in the layout tree.
      public var layoutTreeNodes: [LayoutTreeNode]
      /// - description: Whitelisted ComputedStyle properties for each node in the layout tree.
      public var computedStyles: [ComputedStyle]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.DOMSnapshot {
  /// - description: This domain facilitates obtaining document snapshots with DOM, layout, and style information.
  /// - intention: This is an experimental property.
  public struct captureSnapshot: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOMSnapshot
    public static let name = "captureSnapshot"
    
    /// - description: Whitelist of computed styles to return.
    public var computedStyles: [String]
    
    /// - description: Whether to include layout object paint orders into the snapshot.
    public var includePaintOrder: Bool?
    
    /// - description: Whether to include DOM rectangles (offsetRects, clientRects, scrollRects) into the snapshot
    public var includeDOMRects: Bool?
    
    public init(computedStyles: [String], includePaintOrder: Bool? = nil, includeDOMRects: Bool? = nil) {
      self.computedStyles = computedStyles
      self.includePaintOrder = includePaintOrder
      self.includeDOMRects = includeDOMRects
    }
    
    public struct Result: Decodable {
      /// - description: The nodes in the DOM tree. The DOMNode at index 0 corresponds to the root document.
      public var documents: [DocumentSnapshot]
      /// - description: Shared string table that all string properties refer to with indexes.
      public var strings: [String]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

