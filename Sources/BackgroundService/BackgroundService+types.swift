import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "BackgroundService"

extension SwiftCDPDomains.BackgroundService {
  /// - see: https://vanilla.aslushnikov.com/?BackgroundService.ServiceName
  /// - description: The Background Service that will be associated with the commands/events.
  /// Every Background Service operates independently, but they share the same
  /// API.
  /// - choices: ["backgroundFetch", "backgroundSync", "pushMessaging", "notifications", "paymentHandler", "periodicBackgroundSync"]
  public typealias ServiceName = String
}

extension SwiftCDPDomains.BackgroundService {
  /// - see: https://vanilla.aslushnikov.com/?BackgroundService.EventMetadata
  /// - description: A key-value pair for additional event information to pass along.
  public struct EventMetadata: Codable {
    public var key: String
    
    public var value: String
    
  }
}

extension SwiftCDPDomains.BackgroundService {
  /// - see: https://vanilla.aslushnikov.com/?BackgroundService.BackgroundServiceEvent
  public struct BackgroundServiceEvent: Codable {
    /// - description: Timestamp of the event (in seconds).
    public var timestamp: SwiftCDPDomains.Network.TimeSinceEpoch
    
    /// - description: The origin this event belongs to.
    public var origin: String
    
    /// - description: The Service Worker ID that initiated the event.
    public var serviceWorkerRegistrationId: SwiftCDPDomains.ServiceWorker.RegistrationID
    
    /// - description: The Background Service this event belongs to.
    public var service: ServiceName
    
    /// - description: A description of the event.
    public var eventName: String
    
    /// - description: An identifier that groups related events together.
    public var instanceId: String
    
    /// - description: A list of event-specific information.
    public var eventMetadata: [EventMetadata]
    
  }
}

