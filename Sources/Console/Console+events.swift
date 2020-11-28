import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Console"

extension SwiftCDPDomains.Console {
  /// - description: This domain is deprecated - use Runtime or Log instead.
  public struct messageAdded: ModelEvent {
    public typealias Model = SwiftCDPDomains.Console
    
    /// - description: Console message that has been added.
    public var message: ConsoleMessage
    
  }
}

