import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "Media"

extension SwiftCDPDomains.Media {
  /// - see: https://vanilla.aslushnikov.com/?Media.PlayerId
  /// - description: Players will get an ID that is unique within the agent context.
  public struct PlayerId: Codable {
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

extension SwiftCDPDomains.Media {
  /// - see: https://vanilla.aslushnikov.com/?Media.Timestamp
  public typealias Timestamp = JsonNumber
}

extension SwiftCDPDomains.Media {
  /// - see: https://vanilla.aslushnikov.com/?Media.PlayerMessage
  /// - description: Have one type per entry in MediaLogRecord::Type
  /// Corresponds to kMessage
  public struct PlayerMessage: Codable {
    /// - description: Keep in sync with MediaLogMessageLevel
    /// We are currently keeping the message level 'error' separate from the
    /// PlayerError type because right now they represent different things,
    /// this one being a DVLOG(ERROR) style log message that gets printed
    /// based on what log level is selected in the UI, and the other is a
    /// representation of a media::PipelineStatus object. Soon however we're
    /// going to be moving away from using PipelineStatus for errors and
    /// introducing a new error type which should hopefully let us integrate
    /// the error log level into the PlayerError type.
    public var level: String
    
    public var message: String
    
  }
}

extension SwiftCDPDomains.Media {
  /// - see: https://vanilla.aslushnikov.com/?Media.PlayerProperty
  /// - description: Corresponds to kMediaPropertyChange
  public struct PlayerProperty: Codable {
    public var name: String
    
    public var value: String
    
  }
}

extension SwiftCDPDomains.Media {
  /// - see: https://vanilla.aslushnikov.com/?Media.PlayerEvent
  /// - description: Corresponds to kMediaEventTriggered
  public struct PlayerEvent: Codable {
    public var timestamp: Timestamp
    
    public var value: String
    
  }
}

extension SwiftCDPDomains.Media {
  /// - see: https://vanilla.aslushnikov.com/?Media.PlayerError
  /// - description: Corresponds to kMediaError
  public struct PlayerError: Codable {
    public var type: String
    
    /// - description: When this switches to using media::Status instead of PipelineStatus
    /// we can remove "errorCode" and replace it with the fields from
    /// a Status instance. This also seems like a duplicate of the error
    /// level enum - there is a todo bug to have that level removed and
    /// use this instead. (crbug.com/1068454)
    public var errorCode: String
    
  }
}

