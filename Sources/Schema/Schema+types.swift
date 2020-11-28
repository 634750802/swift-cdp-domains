import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "Schema"

@available(*, deprecated)
extension SwiftCDPDomains.Schema {
  /// - see: https://vanilla.aslushnikov.com/?Schema.Domain
  /// - description: Description of the protocol domain.
  @available(*, deprecated)
  public struct Domain: Codable {
    /// - description: Domain name.
    public var name: String
    
    /// - description: Domain version.
    public var version: String
    
  }
}

