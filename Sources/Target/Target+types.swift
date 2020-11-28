import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "Target"

extension SwiftCDPDomains.Target {
  /// - see: https://vanilla.aslushnikov.com/?Target.TargetID
  public struct TargetID: Codable {
    private var rawValue: String
    
    public init(from decoder: Decoder) throws {
      self.rawValue = try decoder.singleValueContainer().decode(String.self)
    }
    
    public func encode(to encoder: Encoder) throws {
      var container = encoder.singleValueContainer()
      try container.encode(rawValue)
    }
  }
}

extension SwiftCDPDomains.Target {
  /// - see: https://vanilla.aslushnikov.com/?Target.SessionID
  /// - description: Unique identifier of attached debugging session.
  public struct SessionID: Codable {
    private var rawValue: String
    
    public init(from decoder: Decoder) throws {
      self.rawValue = try decoder.singleValueContainer().decode(String.self)
    }
    
    public func encode(to encoder: Encoder) throws {
      var container = encoder.singleValueContainer()
      try container.encode(rawValue)
    }
  }
}

extension SwiftCDPDomains.Target {
  /// - see: https://vanilla.aslushnikov.com/?Target.TargetInfo
  public struct TargetInfo: Codable {
    public var targetId: TargetID
    
    public var type: String
    
    public var title: String
    
    public var url: String
    
    /// - description: Whether the target has an attached client.
    public var attached: Bool
    
    /// - description: Opener target Id
    public var openerId: TargetID?
    
    /// - description: Whether the target has access to the originating window.
    /// - intention: This is an experimental property.
    public var canAccessOpener: Bool
    
    /// - description: Frame id of originating window (is only set if target has an opener).
    /// - intention: This is an experimental property.
    public var openerFrameId: SwiftCDPDomains.Page.FrameId?
    
    /// - intention: This is an experimental property.
    public var browserContextId: SwiftCDPDomains.Browser.BrowserContextID?
    
  }
}

extension SwiftCDPDomains.Target {
  /// - see: https://vanilla.aslushnikov.com/?Target.RemoteLocation
  public struct RemoteLocation: Codable {
    public var host: String
    
    public var port: Int
    
  }
}

