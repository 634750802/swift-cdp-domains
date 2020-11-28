import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Tethering"

extension SwiftCDPDomains.Tethering {
  /// - description: Informs that port was successfully bound and got a specified connection id.
  public struct accepted: ModelEvent {
    public typealias Model = SwiftCDPDomains.Tethering
    
    /// - description: Port number that was successfully bound.
    public var port: Int
    
    /// - description: Connection id to be used.
    public var connectionId: String
    
  }
}

