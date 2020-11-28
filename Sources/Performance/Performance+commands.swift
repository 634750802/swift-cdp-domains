import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Performance"

extension SwiftCDPDomains.Performance {
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Performance
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Performance {
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Performance
    public static let name = "enable"
    
    /// - description: Time domain to use for collecting and reporting duration metrics.
    public var timeDomain: String?
    
    public init(timeDomain: String? = nil) {
      self.timeDomain = timeDomain
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Performance {
  @available(*, deprecated)
  public struct setTimeDomain: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Performance
    public static let name = "setTimeDomain"
    
    /// - description: Time domain
    public var timeDomain: String
    
    public init(timeDomain: String) {
      self.timeDomain = timeDomain
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Performance {
  public struct getMetrics: ModelMethod {
    public typealias Model = SwiftCDPDomains.Performance
    public static let name = "getMetrics"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: Current values for run-time metrics.
      public var metrics: [Metric]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

