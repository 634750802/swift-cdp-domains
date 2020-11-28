import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Cast"

extension SwiftCDPDomains.Cast {
  /// - description: Starts observing for sinks that can be used for tab mirroring, and if set,
  /// sinks compatible with |presentationUrl| as well. When sinks are found, a
  /// |sinksUpdated| event is fired.
  /// Also starts observing for issue messages. When an issue is added or removed,
  /// an |issueUpdated| event is fired.
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Cast
    public static let name = "enable"
    
    public var presentationUrl: String?
    
    public init(presentationUrl: String? = nil) {
      self.presentationUrl = presentationUrl
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Cast {
  /// - description: Stops observing for sinks and issues.
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Cast
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Cast {
  /// - description: Sets a sink to be used when the web page requests the browser to choose a
  /// sink via Presentation API, Remote Playback API, or Cast SDK.
  public struct setSinkToUse: ModelMethod {
    public typealias Model = SwiftCDPDomains.Cast
    public static let name = "setSinkToUse"
    
    public var sinkName: String
    
    public init(sinkName: String) {
      self.sinkName = sinkName
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Cast {
  /// - description: Starts mirroring the tab to the sink.
  public struct startTabMirroring: ModelMethod {
    public typealias Model = SwiftCDPDomains.Cast
    public static let name = "startTabMirroring"
    
    public var sinkName: String
    
    public init(sinkName: String) {
      self.sinkName = sinkName
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Cast {
  /// - description: Stops the active Cast session on the sink.
  public struct stopCasting: ModelMethod {
    public typealias Model = SwiftCDPDomains.Cast
    public static let name = "stopCasting"
    
    public var sinkName: String
    
    public init(sinkName: String) {
      self.sinkName = sinkName
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

