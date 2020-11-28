import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Inspector"

extension SwiftCDPDomains.Inspector {
  /// - description: Disables inspector domain notifications.
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Inspector
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Inspector {
  /// - description: Enables inspector domain notifications.
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Inspector
    public static let name = "enable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

