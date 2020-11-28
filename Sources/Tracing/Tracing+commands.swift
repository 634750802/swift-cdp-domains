import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Tracing"

extension SwiftCDPDomains.Tracing {
  /// - description: Stop trace events collection.
  public struct end: ModelMethod {
    public typealias Model = SwiftCDPDomains.Tracing
    public static let name = "end"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Tracing {
  /// - description: Gets supported tracing categories.
  public struct getCategories: ModelMethod {
    public typealias Model = SwiftCDPDomains.Tracing
    public static let name = "getCategories"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: A list of supported tracing categories.
      public var categories: [String]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Tracing {
  /// - description: Record a clock sync marker in the trace.
  public struct recordClockSyncMarker: ModelMethod {
    public typealias Model = SwiftCDPDomains.Tracing
    public static let name = "recordClockSyncMarker"
    
    /// - description: The ID of this clock sync marker
    public var syncId: String
    
    public init(syncId: String) {
      self.syncId = syncId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Tracing {
  /// - description: Request a global memory dump.
  public struct requestMemoryDump: ModelMethod {
    public typealias Model = SwiftCDPDomains.Tracing
    public static let name = "requestMemoryDump"
    
    /// - description: Enables more deterministic results by forcing garbage collection
    public var deterministic: Bool?
    
    /// - description: Specifies level of details in memory dump. Defaults to "detailed".
    public var levelOfDetail: MemoryDumpLevelOfDetail?
    
    public init(deterministic: Bool? = nil, levelOfDetail: MemoryDumpLevelOfDetail? = nil) {
      self.deterministic = deterministic
      self.levelOfDetail = levelOfDetail
    }
    
    public struct Result: Decodable {
      /// - description: GUID of the resulting global memory dump.
      public var dumpGuid: String
      /// - description: True iff the global memory dump succeeded.
      public var success: Bool
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Tracing {
  /// - description: Start trace events collection.
  public struct start: ModelMethod {
    public typealias Model = SwiftCDPDomains.Tracing
    public static let name = "start"
    
    /// - description: Category/tag filter
    public var categories: String?
    
    /// - description: Tracing options
    public var options: String?
    
    /// - description: If set, the agent will issue bufferUsage events at this interval, specified in milliseconds
    public var bufferUsageReportingInterval: JsonNumber?
    
    /// - description: Whether to report trace events as series of dataCollected events or to save trace to a
    /// stream (defaults to `ReportEvents`).
    public var transferMode: String?
    
    /// - description: Trace data format to use. This only applies when using `ReturnAsStream`
    /// transfer mode (defaults to `json`).
    public var streamFormat: StreamFormat?
    
    /// - description: Compression format to use. This only applies when using `ReturnAsStream`
    /// transfer mode (defaults to `none`)
    public var streamCompression: StreamCompression?
    
    public var traceConfig: TraceConfig?
    
    public init(categories: String? = nil, options: String? = nil, bufferUsageReportingInterval: JsonNumber? = nil, transferMode: String? = nil, streamFormat: StreamFormat? = nil, streamCompression: StreamCompression? = nil, traceConfig: TraceConfig? = nil) {
      self.categories = categories
      self.options = options
      self.bufferUsageReportingInterval = bufferUsageReportingInterval
      self.transferMode = transferMode
      self.streamFormat = streamFormat
      self.streamCompression = streamCompression
      self.traceConfig = traceConfig
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

