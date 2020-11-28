import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Cast"

extension SwiftCDPDomains.Cast {
  /// - description: A domain for interacting with Cast, Presentation API, and Remote Playback API
  /// functionalities.
  /// - intention: This is an experimental property.
  public struct sinksUpdated: ModelEvent {
    public typealias Model = SwiftCDPDomains.Cast
    
    public var sinks: [Sink]
    
  }
}

extension SwiftCDPDomains.Cast {
  /// - description: A domain for interacting with Cast, Presentation API, and Remote Playback API
  /// functionalities.
  /// - intention: This is an experimental property.
  public struct issueUpdated: ModelEvent {
    public typealias Model = SwiftCDPDomains.Cast
    
    public var issueMessage: String
    
  }
}

