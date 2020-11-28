import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Cast"

extension SwiftCDPDomains.Cast {
  /// - description: A domain for interacting with Cast, Presentation API, and Remote Playback API
  /// functionalities.
  /// - intention: This is an experimental property.
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
  /// - description: A domain for interacting with Cast, Presentation API, and Remote Playback API
  /// functionalities.
  /// - intention: This is an experimental property.
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
  /// - description: A domain for interacting with Cast, Presentation API, and Remote Playback API
  /// functionalities.
  /// - intention: This is an experimental property.
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
  /// - description: A domain for interacting with Cast, Presentation API, and Remote Playback API
  /// functionalities.
  /// - intention: This is an experimental property.
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
  /// - description: A domain for interacting with Cast, Presentation API, and Remote Playback API
  /// functionalities.
  /// - intention: This is an experimental property.
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

