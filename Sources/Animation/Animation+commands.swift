import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Animation"

extension SwiftCDPDomains.Animation {
  /// - intention: This is an experimental property.
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Animation
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Animation {
  /// - intention: This is an experimental property.
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Animation
    public static let name = "enable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Animation {
  /// - intention: This is an experimental property.
  public struct getCurrentTime: ModelMethod {
    public typealias Model = SwiftCDPDomains.Animation
    public static let name = "getCurrentTime"
    
    /// - description: Id of animation.
    public var id: String
    
    public init(id: String) {
      self.id = id
    }
    
    public struct Result: Decodable {
      /// - description: Current time of the page.
      public var currentTime: JsonNumber
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Animation {
  /// - intention: This is an experimental property.
  public struct getPlaybackRate: ModelMethod {
    public typealias Model = SwiftCDPDomains.Animation
    public static let name = "getPlaybackRate"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: Playback rate for animations on page.
      public var playbackRate: JsonNumber
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Animation {
  /// - intention: This is an experimental property.
  public struct releaseAnimations: ModelMethod {
    public typealias Model = SwiftCDPDomains.Animation
    public static let name = "releaseAnimations"
    
    /// - description: List of animation ids to seek.
    public var animations: [String]
    
    public init(animations: [String]) {
      self.animations = animations
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Animation {
  /// - intention: This is an experimental property.
  public struct resolveAnimation: ModelMethod {
    public typealias Model = SwiftCDPDomains.Animation
    public static let name = "resolveAnimation"
    
    /// - description: Animation id.
    public var animationId: String
    
    public init(animationId: String) {
      self.animationId = animationId
    }
    
    public struct Result: Decodable {
      /// - description: Corresponding remote object.
      public var remoteObject: SwiftCDPDomains.Runtime.RemoteObject
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Animation {
  /// - intention: This is an experimental property.
  public struct seekAnimations: ModelMethod {
    public typealias Model = SwiftCDPDomains.Animation
    public static let name = "seekAnimations"
    
    /// - description: List of animation ids to seek.
    public var animations: [String]
    
    /// - description: Set the current time of each animation.
    public var currentTime: JsonNumber
    
    public init(animations: [String], currentTime: JsonNumber) {
      self.animations = animations
      self.currentTime = currentTime
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Animation {
  /// - intention: This is an experimental property.
  public struct setPaused: ModelMethod {
    public typealias Model = SwiftCDPDomains.Animation
    public static let name = "setPaused"
    
    /// - description: Animations to set the pause state of.
    public var animations: [String]
    
    /// - description: Paused state to set to.
    public var paused: Bool
    
    public init(animations: [String], paused: Bool) {
      self.animations = animations
      self.paused = paused
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Animation {
  /// - intention: This is an experimental property.
  public struct setPlaybackRate: ModelMethod {
    public typealias Model = SwiftCDPDomains.Animation
    public static let name = "setPlaybackRate"
    
    /// - description: Playback rate for animations on page
    public var playbackRate: JsonNumber
    
    public init(playbackRate: JsonNumber) {
      self.playbackRate = playbackRate
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Animation {
  /// - intention: This is an experimental property.
  public struct setTiming: ModelMethod {
    public typealias Model = SwiftCDPDomains.Animation
    public static let name = "setTiming"
    
    /// - description: Animation id.
    public var animationId: String
    
    /// - description: Duration of the animation.
    public var duration: JsonNumber
    
    /// - description: Delay of the animation.
    public var delay: JsonNumber
    
    public init(animationId: String, duration: JsonNumber, delay: JsonNumber) {
      self.animationId = animationId
      self.duration = duration
      self.delay = delay
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

