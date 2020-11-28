import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Inspector"

extension SwiftCDPDomains.Inspector {
  /// - description: Fired when remote debugging connection is about to be terminated. Contains detach reason.
  public struct detached: ModelEvent {
    public typealias Model = SwiftCDPDomains.Inspector
    
    /// - description: The reason why connection has been terminated.
    public var reason: String
    
  }
}

extension SwiftCDPDomains.Inspector {
  /// - description: Fired when debugging target has crashed
  public struct targetCrashed: ModelEvent {
    public typealias Model = SwiftCDPDomains.Inspector
    
  }
}

extension SwiftCDPDomains.Inspector {
  /// - description: Fired when debugging target has reloaded after crash
  public struct targetReloadedAfterCrash: ModelEvent {
    public typealias Model = SwiftCDPDomains.Inspector
    
  }
}

