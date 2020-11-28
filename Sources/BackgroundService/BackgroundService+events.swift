import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "BackgroundService"

extension SwiftCDPDomains.BackgroundService {
  /// - description: Called when the recording state for the service has been updated.
  public struct recordingStateChanged: ModelEvent {
    public typealias Model = SwiftCDPDomains.BackgroundService
    
    public var isRecording: Bool
    
    public var service: ServiceName
    
  }
}

extension SwiftCDPDomains.BackgroundService {
  /// - description: Called with all existing backgroundServiceEvents when enabled, and all new
  /// events afterwards if enabled and recording.
  public struct backgroundServiceEventReceived: ModelEvent {
    public typealias Model = SwiftCDPDomains.BackgroundService
    
    public var backgroundServiceEvent: BackgroundServiceEvent
    
  }
}

