import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "DOMDebugger"

extension SwiftCDPDomains.DOMDebugger {
  /// - description: DOM debugging allows setting breakpoints on particular DOM operations and events. JavaScript
  /// execution will stop on these operations as if there was a regular breakpoint set.
  public struct getEventListeners: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOMDebugger
    public static let name = "getEventListeners"
    
    /// - description: Identifier of the object to return listeners for.
    public var objectId: SwiftCDPDomains.Runtime.RemoteObjectId
    
    /// - description: The maximum depth at which Node children should be retrieved, defaults to 1. Use -1 for the
    /// entire subtree or provide an integer larger than 0.
    public var depth: Int?
    
    /// - description: Whether or not iframes and shadow roots should be traversed when returning the subtree
    /// (default is false). Reports listeners for all contexts if pierce is enabled.
    public var pierce: Bool?
    
    public init(objectId: SwiftCDPDomains.Runtime.RemoteObjectId, depth: Int? = nil, pierce: Bool? = nil) {
      self.objectId = objectId
      self.depth = depth
      self.pierce = pierce
    }
    
    public struct Result: Decodable {
      /// - description: Array of relevant listeners.
      public var listeners: [EventListener]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.DOMDebugger {
  /// - description: DOM debugging allows setting breakpoints on particular DOM operations and events. JavaScript
  /// execution will stop on these operations as if there was a regular breakpoint set.
  public struct removeDOMBreakpoint: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOMDebugger
    public static let name = "removeDOMBreakpoint"
    
    /// - description: Identifier of the node to remove breakpoint from.
    public var nodeId: SwiftCDPDomains.DOM.NodeId
    
    /// - description: Type of the breakpoint to remove.
    public var type: DOMBreakpointType
    
    public init(nodeId: SwiftCDPDomains.DOM.NodeId, type: DOMBreakpointType) {
      self.nodeId = nodeId
      self.type = type
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOMDebugger {
  /// - description: DOM debugging allows setting breakpoints on particular DOM operations and events. JavaScript
  /// execution will stop on these operations as if there was a regular breakpoint set.
  public struct removeEventListenerBreakpoint: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOMDebugger
    public static let name = "removeEventListenerBreakpoint"
    
    /// - description: Event name.
    public var eventName: String
    
    /// - description: EventTarget interface name.
    /// - intention: This is an experimental property.
    public var targetName: String?
    
    public init(eventName: String, targetName: String? = nil) {
      self.eventName = eventName
      self.targetName = targetName
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOMDebugger {
  /// - description: DOM debugging allows setting breakpoints on particular DOM operations and events. JavaScript
  /// execution will stop on these operations as if there was a regular breakpoint set.
  public struct removeInstrumentationBreakpoint: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOMDebugger
    public static let name = "removeInstrumentationBreakpoint"
    
    /// - description: Instrumentation name to stop on.
    public var eventName: String
    
    public init(eventName: String) {
      self.eventName = eventName
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOMDebugger {
  /// - description: DOM debugging allows setting breakpoints on particular DOM operations and events. JavaScript
  /// execution will stop on these operations as if there was a regular breakpoint set.
  public struct removeXHRBreakpoint: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOMDebugger
    public static let name = "removeXHRBreakpoint"
    
    /// - description: Resource URL substring.
    public var url: String
    
    public init(url: String) {
      self.url = url
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOMDebugger {
  /// - description: DOM debugging allows setting breakpoints on particular DOM operations and events. JavaScript
  /// execution will stop on these operations as if there was a regular breakpoint set.
  public struct setBreakOnCSPViolation: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOMDebugger
    public static let name = "setBreakOnCSPViolation"
    
    /// - description: CSP Violations to stop upon.
    public var violationTypes: [CSPViolationType]
    
    public init(violationTypes: [CSPViolationType]) {
      self.violationTypes = violationTypes
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOMDebugger {
  /// - description: DOM debugging allows setting breakpoints on particular DOM operations and events. JavaScript
  /// execution will stop on these operations as if there was a regular breakpoint set.
  public struct setDOMBreakpoint: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOMDebugger
    public static let name = "setDOMBreakpoint"
    
    /// - description: Identifier of the node to set breakpoint on.
    public var nodeId: SwiftCDPDomains.DOM.NodeId
    
    /// - description: Type of the operation to stop upon.
    public var type: DOMBreakpointType
    
    public init(nodeId: SwiftCDPDomains.DOM.NodeId, type: DOMBreakpointType) {
      self.nodeId = nodeId
      self.type = type
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOMDebugger {
  /// - description: DOM debugging allows setting breakpoints on particular DOM operations and events. JavaScript
  /// execution will stop on these operations as if there was a regular breakpoint set.
  public struct setEventListenerBreakpoint: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOMDebugger
    public static let name = "setEventListenerBreakpoint"
    
    /// - description: DOM Event name to stop on (any DOM event will do).
    public var eventName: String
    
    /// - description: EventTarget interface name to stop on. If equal to `"*"` or not provided, will stop on any
    /// EventTarget.
    /// - intention: This is an experimental property.
    public var targetName: String?
    
    public init(eventName: String, targetName: String? = nil) {
      self.eventName = eventName
      self.targetName = targetName
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOMDebugger {
  /// - description: DOM debugging allows setting breakpoints on particular DOM operations and events. JavaScript
  /// execution will stop on these operations as if there was a regular breakpoint set.
  public struct setInstrumentationBreakpoint: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.DOMDebugger
    public static let name = "setInstrumentationBreakpoint"
    
    /// - description: Instrumentation name to stop on.
    public var eventName: String
    
    public init(eventName: String) {
      self.eventName = eventName
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOMDebugger {
  /// - description: DOM debugging allows setting breakpoints on particular DOM operations and events. JavaScript
  /// execution will stop on these operations as if there was a regular breakpoint set.
  public struct setXHRBreakpoint: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOMDebugger
    public static let name = "setXHRBreakpoint"
    
    /// - description: Resource URL substring. All XHRs having this substring in the URL will get stopped upon.
    public var url: String
    
    public init(url: String) {
      self.url = url
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

