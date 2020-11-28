import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Performance"

extension SwiftCDPDomains.Performance {
  public struct metrics: ModelEvent {
    public typealias Model = SwiftCDPDomains.Performance
    
    /// - description: Current values of the metrics.
    public var metrics: [Metric]
    
    /// - description: Timestamp title.
    public var title: String
    
  }
}

