import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Log"

extension SwiftCDPDomains.Log {
  /// - description: Provides access to log entries.
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
  /// - description: Provides access to log entries.
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
  /// - description: Provides access to log entries.
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
  /// - description: Provides access to log entries.
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
  /// - description: Provides access to log entries.
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

