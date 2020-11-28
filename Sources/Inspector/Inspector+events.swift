import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Inspector"

extension SwiftCDPDomains.Inspector {
  /// - intention: This is an experimental property.
  public struct detached: ModelEvent {
    public typealias Model = SwiftCDPDomains.Inspector
    
    /// - description: The reason why connection has been terminated.
    public var reason: String
    
  }
}

extension SwiftCDPDomains.Inspector {
  /// - intention: This is an experimental property.
  public struct targetCrashed: ModelEvent {
    public typealias Model = SwiftCDPDomains.Inspector
    
  }
}

extension SwiftCDPDomains.Inspector {
  /// - intention: This is an experimental property.
  public struct targetReloadedAfterCrash: ModelEvent {
    public typealias Model = SwiftCDPDomains.Inspector
    
  }
}

