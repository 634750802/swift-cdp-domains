import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Media"

extension SwiftCDPDomains.Media {
  /// - description: This domain allows detailed inspection of media elements
  /// - intention: This is an experimental property.
  public struct playerPropertiesChanged: ModelEvent {
    public typealias Model = SwiftCDPDomains.Media
    
    public var playerId: PlayerId
    
    public var properties: [PlayerProperty]
    
  }
}

extension SwiftCDPDomains.Media {
  /// - description: This domain allows detailed inspection of media elements
  /// - intention: This is an experimental property.
  public struct playerEventsAdded: ModelEvent {
    public typealias Model = SwiftCDPDomains.Media
    
    public var playerId: PlayerId
    
    public var events: [PlayerEvent]
    
  }
}

extension SwiftCDPDomains.Media {
  /// - description: This domain allows detailed inspection of media elements
  /// - intention: This is an experimental property.
  public struct playerMessagesLogged: ModelEvent {
    public typealias Model = SwiftCDPDomains.Media
    
    public var playerId: PlayerId
    
    public var messages: [PlayerMessage]
    
  }
}

extension SwiftCDPDomains.Media {
  /// - description: This domain allows detailed inspection of media elements
  /// - intention: This is an experimental property.
  public struct playerErrorsRaised: ModelEvent {
    public typealias Model = SwiftCDPDomains.Media
    
    public var playerId: PlayerId
    
    public var errors: [PlayerError]
    
  }
}

extension SwiftCDPDomains.Media {
  /// - description: This domain allows detailed inspection of media elements
  /// - intention: This is an experimental property.
  public struct playersCreated: ModelEvent {
    public typealias Model = SwiftCDPDomains.Media
    
    public var players: [PlayerId]
    
  }
}

