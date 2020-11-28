import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "DOMDebugger"

extension SwiftCDPDomains.DOMDebugger {
  /// - see: https://vanilla.aslushnikov.com/?DOMDebugger.DOMBreakpointType
  /// - description: DOM breakpoint type.
  /// - choices: ["subtree-modified", "attribute-modified", "node-removed"]
  public typealias DOMBreakpointType = String
}

extension SwiftCDPDomains.DOMDebugger {
  /// - see: https://vanilla.aslushnikov.com/?DOMDebugger.CSPViolationType
  /// - description: CSP Violation type.
  /// - choices: ["trustedtype-sink-violation", "trustedtype-policy-violation"]
  public typealias CSPViolationType = String
}

extension SwiftCDPDomains.DOMDebugger {
  /// - see: https://vanilla.aslushnikov.com/?DOMDebugger.EventListener
  /// - description: Object event listener.
  public struct EventListener: Codable {
    /// - description: `EventListener`'s type.
    public var type: String
    
    /// - description: `EventListener`'s useCapture.
    public var useCapture: Bool
    
    /// - description: `EventListener`'s passive flag.
    public var passive: Bool
    
    /// - description: `EventListener`'s once flag.
    public var once: Bool
    
    /// - description: Script id of the handler code.
    public var scriptId: SwiftCDPDomains.Runtime.ScriptId
    
    /// - description: Line number in the script (0-based).
    public var lineNumber: Int
    
    /// - description: Column number in the script (0-based).
    public var columnNumber: Int
    
    /// - description: Event handler function value.
    public var handler: SwiftCDPDomains.Runtime.RemoteObject?
    
    /// - description: Event original handler function value.
    public var originalHandler: SwiftCDPDomains.Runtime.RemoteObject?
    
    /// - description: Node the listener is added to (if any).
    public var backendNodeId: SwiftCDPDomains.DOM.BackendNodeId?
    
  }
}

