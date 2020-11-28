import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Cast"

extension SwiftCDPDomains.Cast {
  /// - description: This is fired whenever the list of available sinks changes. A sink is a
  /// device or a software surface that you can cast to.
  public struct sinksUpdated: ModelEvent {
    public typealias Model = SwiftCDPDomains.Cast
    
    public var sinks: [Sink]
    
  }
}

extension SwiftCDPDomains.Cast {
  /// - description: This is fired whenever the outstanding issue/error message changes.
  /// |issueMessage| is empty if there is no issue.
  public struct issueUpdated: ModelEvent {
    public typealias Model = SwiftCDPDomains.Cast
    
    public var issueMessage: String
    
  }
}

