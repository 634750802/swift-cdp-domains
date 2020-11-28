import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Media"

extension SwiftCDPDomains.Media {
  /// - description: This can be called multiple times, and can be used to set / override /
  /// remove player properties. A null propValue indicates removal.
  public struct playerPropertiesChanged: ModelEvent {
    public typealias Model = SwiftCDPDomains.Media
    
    public var playerId: PlayerId
    
    public var properties: [PlayerProperty]
    
  }
}

extension SwiftCDPDomains.Media {
  /// - description: Send events as a list, allowing them to be batched on the browser for less
  /// congestion. If batched, events must ALWAYS be in chronological order.
  public struct playerEventsAdded: ModelEvent {
    public typealias Model = SwiftCDPDomains.Media
    
    public var playerId: PlayerId
    
    public var events: [PlayerEvent]
    
  }
}

extension SwiftCDPDomains.Media {
  /// - description: Send a list of any messages that need to be delivered.
  public struct playerMessagesLogged: ModelEvent {
    public typealias Model = SwiftCDPDomains.Media
    
    public var playerId: PlayerId
    
    public var messages: [PlayerMessage]
    
  }
}

extension SwiftCDPDomains.Media {
  /// - description: Send a list of any errors that need to be delivered.
  public struct playerErrorsRaised: ModelEvent {
    public typealias Model = SwiftCDPDomains.Media
    
    public var playerId: PlayerId
    
    public var errors: [PlayerError]
    
  }
}

extension SwiftCDPDomains.Media {
  /// - description: Called whenever a player is created, or when a new agent joins and recieves
  /// a list of active players. If an agent is restored, it will recieve the full
  /// list of player ids and all events again.
  public struct playersCreated: ModelEvent {
    public typealias Model = SwiftCDPDomains.Media
    
    public var players: [PlayerId]
    
  }
}

