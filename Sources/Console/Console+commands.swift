import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Console"

extension SwiftCDPDomains.Console {
  /// - description: Does nothing.
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
  /// - description: Disables console domain, prevents further console messages from being reported to the client.
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
  /// - description: Enables console domain, sends the messages collected so far to the client by means of the
  /// `messageAdded` notification.
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

