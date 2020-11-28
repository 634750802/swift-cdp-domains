import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Memory"

extension SwiftCDPDomains.Memory {
  /// - intention: This is an experimental property.
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
  /// - intention: This is an experimental property.
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
  /// - intention: This is an experimental property.
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
  /// - intention: This is an experimental property.
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
  /// - intention: This is an experimental property.
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
  /// - intention: This is an experimental property.
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
  /// - intention: This is an experimental property.
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
  /// - intention: This is an experimental property.
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
  /// - intention: This is an experimental property.
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
  /// - intention: This is an experimental property.
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

