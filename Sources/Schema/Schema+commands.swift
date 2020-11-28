import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Schema"

extension SwiftCDPDomains.Schema {
  /// - description: Returns supported domains.
  public struct getDomains: ModelMethod {
    public typealias Model = SwiftCDPDomains.Schema
    public static let name = "getDomains"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: List of supported domains.
      public var domains: [Domain]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

