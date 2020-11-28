import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Tracing"

extension SwiftCDPDomains.Tracing {
  /// - intention: This is an experimental property.
  public struct bufferUsage: ModelEvent {
    public typealias Model = SwiftCDPDomains.Tracing
    
    /// - description: A number in range [0..1] that indicates the used size of event buffer as a fraction of its
    /// total size.
    public var percentFull: JsonNumber?
    
    /// - description: An approximate number of events in the trace log.
    public var eventCount: JsonNumber?
    
    /// - description: A number in range [0..1] that indicates the used size of event buffer as a fraction of its
    /// total size.
    public var value: JsonNumber?
    
  }
}

extension SwiftCDPDomains.Tracing {
  /// - intention: This is an experimental property.
  public struct dataCollected: ModelEvent {
    public typealias Model = SwiftCDPDomains.Tracing
    
    public var value: [[String: JsonPrimitive]]
    
  }
}

extension SwiftCDPDomains.Tracing {
  /// - intention: This is an experimental property.
  public struct tracingComplete: ModelEvent {
    public typealias Model = SwiftCDPDomains.Tracing
    
    /// - description: Indicates whether some trace data is known to have been lost, e.g. because the trace ring
    /// buffer wrapped around.
    public var dataLossOccurred: Bool
    
    /// - description: A handle of the stream that holds resulting trace data.
    public var stream: SwiftCDPDomains.IO.StreamHandle?
    
    /// - description: Trace data format of returned stream.
    public var traceFormat: StreamFormat?
    
    /// - description: Compression format of returned stream.
    public var streamCompression: StreamCompression?
    
  }
}

