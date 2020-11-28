import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "BackgroundService"

extension SwiftCDPDomains.BackgroundService {
  /// - description: Defines events for background web platform features.
  /// - intention: This is an experimental property.
  public struct recordingStateChanged: ModelEvent {
    public typealias Model = SwiftCDPDomains.BackgroundService
    
    public var isRecording: Bool
    
    public var service: ServiceName
    
  }
}

extension SwiftCDPDomains.BackgroundService {
  /// - description: Defines events for background web platform features.
  /// - intention: This is an experimental property.
  public struct backgroundServiceEventReceived: ModelEvent {
    public typealias Model = SwiftCDPDomains.BackgroundService
    
    public var backgroundServiceEvent: BackgroundServiceEvent
    
  }
}

