import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "Cast"

extension SwiftCDPDomains.Cast {
  /// - see: https://vanilla.aslushnikov.com/?Cast.Sink
  public struct Sink: Codable {
    public var name: String
    
    public var id: String
    
    /// - description: Text describing the current session. Present only if there is an active
    /// session on the sink.
    public var session: String?
    
  }
}

