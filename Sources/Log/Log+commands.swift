import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Log"

extension SwiftCDPDomains.Log {
  /// - description: Clears the log.
  public struct clear: ModelMethod {
    public typealias Model = SwiftCDPDomains.Log
    public static let name = "clear"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Log {
  /// - description: Disables log domain, prevents further log entries from being reported to the client.
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Log
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Log {
  /// - description: Enables log domain, sends the entries collected so far to the client by means of the
  /// `entryAdded` notification.
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Log
    public static let name = "enable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Log {
  /// - description: start violation reporting.
  public struct startViolationsReport: ModelMethod {
    public typealias Model = SwiftCDPDomains.Log
    public static let name = "startViolationsReport"
    
    /// - description: Configuration for violations.
    public var config: [ViolationSetting]
    
    public init(config: [ViolationSetting]) {
      self.config = config
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Log {
  /// - description: Stop violation reporting.
  public struct stopViolationsReport: ModelMethod {
    public typealias Model = SwiftCDPDomains.Log
    public static let name = "stopViolationsReport"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

