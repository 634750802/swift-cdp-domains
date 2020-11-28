import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Media"

extension SwiftCDPDomains.Media {
  /// - description: Enables the Media domain
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Media
    public static let name = "enable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Media {
  /// - description: Disables the Media domain.
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Media
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

