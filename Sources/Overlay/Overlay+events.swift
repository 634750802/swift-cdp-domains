import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Overlay"

extension SwiftCDPDomains.Overlay {
  /// - description: This domain provides various functionality related to drawing atop the inspected page.
  /// - intention: This is an experimental property.
  public struct inspectNodeRequested: ModelEvent {
    public typealias Model = SwiftCDPDomains.Overlay
    
    /// - description: Id of the node to inspect.
    public var backendNodeId: SwiftCDPDomains.DOM.BackendNodeId
    
  }
}

extension SwiftCDPDomains.Overlay {
  /// - description: This domain provides various functionality related to drawing atop the inspected page.
  /// - intention: This is an experimental property.
  public struct nodeHighlightRequested: ModelEvent {
    public typealias Model = SwiftCDPDomains.Overlay
    
    public var nodeId: SwiftCDPDomains.DOM.NodeId
    
  }
}

extension SwiftCDPDomains.Overlay {
  /// - description: This domain provides various functionality related to drawing atop the inspected page.
  /// - intention: This is an experimental property.
  public struct screenshotRequested: ModelEvent {
    public typealias Model = SwiftCDPDomains.Overlay
    
    /// - description: Viewport to capture, in device independent pixels (dip).
    public var viewport: SwiftCDPDomains.Page.Viewport
    
  }
}

extension SwiftCDPDomains.Overlay {
  /// - description: This domain provides various functionality related to drawing atop the inspected page.
  /// - intention: This is an experimental property.
  public struct inspectModeCanceled: ModelEvent {
    public typealias Model = SwiftCDPDomains.Overlay
    
  }
}

