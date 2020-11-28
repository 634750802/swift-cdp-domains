import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Profiler"

extension SwiftCDPDomains.Profiler {
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Profiler
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Profiler {
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Profiler
    public static let name = "enable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Profiler {
  /// - description: Collect coverage data for the current isolate. The coverage data may be incomplete due to
  /// garbage collection.
  public struct getBestEffortCoverage: ModelMethod {
    public typealias Model = SwiftCDPDomains.Profiler
    public static let name = "getBestEffortCoverage"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: Coverage data for the current isolate.
      public var result: [ScriptCoverage]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Profiler {
  /// - description: Changes CPU profiler sampling interval. Must be called before CPU profiles recording started.
  public struct setSamplingInterval: ModelMethod {
    public typealias Model = SwiftCDPDomains.Profiler
    public static let name = "setSamplingInterval"
    
    /// - description: New sampling interval in microseconds.
    public var interval: Int
    
    public init(interval: Int) {
      self.interval = interval
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Profiler {
  public struct start: ModelMethod {
    public typealias Model = SwiftCDPDomains.Profiler
    public static let name = "start"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Profiler {
  /// - description: Enable precise code coverage. Coverage data for JavaScript executed before enabling precise code
  /// coverage may be incomplete. Enabling prevents running optimized code and resets execution
  /// counters.
  public struct startPreciseCoverage: ModelMethod {
    public typealias Model = SwiftCDPDomains.Profiler
    public static let name = "startPreciseCoverage"
    
    /// - description: Collect accurate call counts beyond simple 'covered' or 'not covered'.
    public var callCount: Bool?
    
    /// - description: Collect block-based coverage.
    public var detailed: Bool?
    
    /// - description: Allow the backend to send updates on its own initiative
    public var allowTriggeredUpdates: Bool?
    
    public init(callCount: Bool? = nil, detailed: Bool? = nil, allowTriggeredUpdates: Bool? = nil) {
      self.callCount = callCount
      self.detailed = detailed
      self.allowTriggeredUpdates = allowTriggeredUpdates
    }
    
    public struct Result: Decodable {
      /// - description: Monotonically increasing time (in seconds) when the coverage update was taken in the backend.
      public var timestamp: JsonNumber
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Profiler {
  /// - description: Enable type profile.
  /// - intention: This is an experimental property.
  public struct startTypeProfile: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Profiler
    public static let name = "startTypeProfile"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Profiler {
  public struct stop: ModelMethod {
    public typealias Model = SwiftCDPDomains.Profiler
    public static let name = "stop"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: Recorded profile.
      public var profile: Profile
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Profiler {
  /// - description: Disable precise code coverage. Disabling releases unnecessary execution count records and allows
  /// executing optimized code.
  public struct stopPreciseCoverage: ModelMethod {
    public typealias Model = SwiftCDPDomains.Profiler
    public static let name = "stopPreciseCoverage"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Profiler {
  /// - description: Disable type profile. Disabling releases type profile data collected so far.
  /// - intention: This is an experimental property.
  public struct stopTypeProfile: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Profiler
    public static let name = "stopTypeProfile"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Profiler {
  /// - description: Collect coverage data for the current isolate, and resets execution counters. Precise code
  /// coverage needs to have started.
  public struct takePreciseCoverage: ModelMethod {
    public typealias Model = SwiftCDPDomains.Profiler
    public static let name = "takePreciseCoverage"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: Coverage data for the current isolate.
      public var result: [ScriptCoverage]
      /// - description: Monotonically increasing time (in seconds) when the coverage update was taken in the backend.
      public var timestamp: JsonNumber
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Profiler {
  /// - description: Collect type profile.
  /// - intention: This is an experimental property.
  public struct takeTypeProfile: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Profiler
    public static let name = "takeTypeProfile"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: Type profile for all scripts since startTypeProfile() was turned on.
      public var result: [ScriptTypeProfile]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Profiler {
  /// - description: Enable counters collection.
  /// - intention: This is an experimental property.
  public struct enableCounters: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Profiler
    public static let name = "enableCounters"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Profiler {
  /// - description: Disable counters collection.
  /// - intention: This is an experimental property.
  public struct disableCounters: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Profiler
    public static let name = "disableCounters"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Profiler {
  /// - description: Retrieve counters.
  /// - intention: This is an experimental property.
  public struct getCounters: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Profiler
    public static let name = "getCounters"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: Collected counters information.
      public var result: [CounterInfo]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Profiler {
  /// - description: Enable run time call stats collection.
  /// - intention: This is an experimental property.
  public struct enableRuntimeCallStats: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Profiler
    public static let name = "enableRuntimeCallStats"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Profiler {
  /// - description: Disable run time call stats collection.
  /// - intention: This is an experimental property.
  public struct disableRuntimeCallStats: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Profiler
    public static let name = "disableRuntimeCallStats"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Profiler {
  /// - description: Retrieve run time call stats.
  /// - intention: This is an experimental property.
  public struct getRuntimeCallStats: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Profiler
    public static let name = "getRuntimeCallStats"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: Collected runtime call counter information.
      public var result: [RuntimeCallCounterInfo]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

