import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Overlay"

extension SwiftCDPDomains.Overlay {
  /// - description: Fired when the node should be inspected. This happens after call to `setInspectMode` or when
  /// user manually inspects an element.
  public struct inspectNodeRequested: ModelEvent {
    public typealias Model = SwiftCDPDomains.Overlay
    
    /// - description: Id of the node to inspect.
    public var backendNodeId: SwiftCDPDomains.DOM.BackendNodeId
    
  }
}

extension SwiftCDPDomains.Overlay {
  /// - description: Fired when the node should be highlighted. This happens after call to `setInspectMode`.
  public struct nodeHighlightRequested: ModelEvent {
    public typealias Model = SwiftCDPDomains.Overlay
    
    public var nodeId: SwiftCDPDomains.DOM.NodeId
    
  }
}

extension SwiftCDPDomains.Overlay {
  /// - description: Fired when user asks to capture screenshot of some area on the page.
  public struct screenshotRequested: ModelEvent {
    public typealias Model = SwiftCDPDomains.Overlay
    
    /// - description: Viewport to capture, in device independent pixels (dip).
    public var viewport: SwiftCDPDomains.Page.Viewport
    
  }
}

extension SwiftCDPDomains.Overlay {
  /// - description: Fired when user cancels the inspect mode.
  public struct inspectModeCanceled: ModelEvent {
    public typealias Model = SwiftCDPDomains.Overlay
    
  }
}

