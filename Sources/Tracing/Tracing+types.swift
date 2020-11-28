import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "Tracing"

extension SwiftCDPDomains.Tracing {
  /// - see: https://vanilla.aslushnikov.com/?Tracing.MemoryDumpConfig
  /// - description: Configuration for memory dump. Used only when "memory-infra" category is enabled.
  public struct MemoryDumpConfig: Codable {
  }
}

extension SwiftCDPDomains.Tracing {
  /// - see: https://vanilla.aslushnikov.com/?Tracing.TraceConfig
  public struct TraceConfig: Codable {
    /// - description: Controls how the trace buffer stores data.
    public var recordMode: String?
    
    /// - description: Turns on JavaScript stack sampling.
    public var enableSampling: Bool?
    
    /// - description: Turns on system tracing.
    public var enableSystrace: Bool?
    
    /// - description: Turns on argument filter.
    public var enableArgumentFilter: Bool?
    
    /// - description: Included category filters.
    public var includedCategories: [String]?
    
    /// - description: Excluded category filters.
    public var excludedCategories: [String]?
    
    /// - description: Configuration to synthesize the delays in tracing.
    public var syntheticDelays: [String]?
    
    /// - description: Configuration for memory dump triggers. Used only when "memory-infra" category is enabled.
    public var memoryDumpConfig: MemoryDumpConfig?
    
  }
}

extension SwiftCDPDomains.Tracing {
  /// - see: https://vanilla.aslushnikov.com/?Tracing.StreamFormat
  /// - description: Data format of a trace. Can be either the legacy JSON format or the
  /// protocol buffer format. Note that the JSON format will be deprecated soon.
  /// - choices: ["json", "proto"]
  public typealias StreamFormat = String
}

extension SwiftCDPDomains.Tracing {
  /// - see: https://vanilla.aslushnikov.com/?Tracing.StreamCompression
  /// - description: Compression type to use for traces returned via streams.
  /// - choices: ["none", "gzip"]
  public typealias StreamCompression = String
}

extension SwiftCDPDomains.Tracing {
  /// - see: https://vanilla.aslushnikov.com/?Tracing.MemoryDumpLevelOfDetail
  /// - description: Details exposed when memory request explicitly declared.
  /// Keep consistent with memory_dump_request_args.h and
  /// memory_instrumentation.mojom
  /// - choices: ["background", "light", "detailed"]
  public typealias MemoryDumpLevelOfDetail = String
}

