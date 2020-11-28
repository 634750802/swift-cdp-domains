import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "Performance"

extension SwiftCDPDomains.Performance {
  /// - see: https://vanilla.aslushnikov.com/?Performance.Metric
  /// - description: Run-time execution metric.
  public struct Metric: Codable {
    /// - description: Metric name.
    public var name: String
    
    /// - description: Metric value.
    public var value: JsonNumber
    
  }
}

