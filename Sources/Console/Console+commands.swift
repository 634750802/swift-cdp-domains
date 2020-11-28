import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Console"

extension SwiftCDPDomains.Console {
  /// - description: This domain is deprecated - use Runtime or Log instead.
  public struct clearMessages: ModelMethod {
    public typealias Model = SwiftCDPDomains.Console
    public static let name = "clearMessages"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Console {
  /// - description: This domain is deprecated - use Runtime or Log instead.
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Console
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Console {
  /// - description: This domain is deprecated - use Runtime or Log instead.
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Console
    public static let name = "enable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

