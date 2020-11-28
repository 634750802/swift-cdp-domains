import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Tethering"

extension SwiftCDPDomains.Tethering {
  /// - description: The Tethering domain defines methods and events for browser port binding.
  /// - intention: This is an experimental property.
  public struct accepted: ModelEvent {
    public typealias Model = SwiftCDPDomains.Tethering
    
    /// - description: Port number that was successfully bound.
    public var port: Int
    
    /// - description: Connection id to be used.
    public var connectionId: String
    
  }
}

