import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Memory"

extension SwiftCDPDomains.Memory {
  public struct getDOMCounters: ModelMethod {
    public typealias Model = SwiftCDPDomains.Memory
    public static let name = "getDOMCounters"
    
    public init() {
    }
    
    public struct Result: Decodable {
      public var documents: Int
      public var nodes: Int
      public var jsEventListeners: Int
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Memory {
  public struct prepareForLeakDetection: ModelMethod {
    public typealias Model = SwiftCDPDomains.Memory
    public static let name = "prepareForLeakDetection"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Memory {
  /// - description: Simulate OomIntervention by purging V8 memory.
  public struct forciblyPurgeJavaScriptMemory: ModelMethod {
    public typealias Model = SwiftCDPDomains.Memory
    public static let name = "forciblyPurgeJavaScriptMemory"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Memory {
  /// - description: Enable/disable suppressing memory pressure notifications in all processes.
  public struct setPressureNotificationsSuppressed: ModelMethod {
    public typealias Model = SwiftCDPDomains.Memory
    public static let name = "setPressureNotificationsSuppressed"
    
    /// - description: If true, memory pressure notifications will be suppressed.
    public var suppressed: Bool
    
    public init(suppressed: Bool) {
      self.suppressed = suppressed
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Memory {
  /// - description: Simulate a memory pressure notification in all processes.
  public struct simulatePressureNotification: ModelMethod {
    public typealias Model = SwiftCDPDomains.Memory
    public static let name = "simulatePressureNotification"
    
    /// - description: Memory pressure level of the notification.
    public var level: PressureLevel
    
    public init(level: PressureLevel) {
      self.level = level
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Memory {
  /// - description: Start collecting native memory profile.
  public struct startSampling: ModelMethod {
    public typealias Model = SwiftCDPDomains.Memory
    public static let name = "startSampling"
    
    /// - description: Average number of bytes between samples.
    public var samplingInterval: Int?
    
    /// - description: Do not randomize intervals between samples.
    public var suppressRandomness: Bool?
    
    public init(samplingInterval: Int? = nil, suppressRandomness: Bool? = nil) {
      self.samplingInterval = samplingInterval
      self.suppressRandomness = suppressRandomness
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Memory {
  /// - description: Stop collecting native memory profile.
  public struct stopSampling: ModelMethod {
    public typealias Model = SwiftCDPDomains.Memory
    public static let name = "stopSampling"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Memory {
  /// - description: Retrieve native memory allocations profile
  /// collected since renderer process startup.
  public struct getAllTimeSamplingProfile: ModelMethod {
    public typealias Model = SwiftCDPDomains.Memory
    public static let name = "getAllTimeSamplingProfile"
    
    public init() {
    }
    
    public struct Result: Decodable {
      public var profile: SamplingProfile
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Memory {
  /// - description: Retrieve native memory allocations profile
  /// collected since browser process startup.
  public struct getBrowserSamplingProfile: ModelMethod {
    public typealias Model = SwiftCDPDomains.Memory
    public static let name = "getBrowserSamplingProfile"
    
    public init() {
    }
    
    public struct Result: Decodable {
      public var profile: SamplingProfile
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Memory {
  /// - description: Retrieve native memory allocations profile collected since last
  /// `startSampling` call.
  public struct getSamplingProfile: ModelMethod {
    public typealias Model = SwiftCDPDomains.Memory
    public static let name = "getSamplingProfile"
    
    public init() {
    }
    
    public struct Result: Decodable {
      public var profile: SamplingProfile
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

