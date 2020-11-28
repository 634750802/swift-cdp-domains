import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Target"

extension SwiftCDPDomains.Target {
  /// - description: Issued when attached to target because of auto-attach or `attachToTarget` command.
  /// - intention: This is an experimental property.
  public struct attachedToTarget: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Target
    
    /// - description: Identifier assigned to the session used to send/receive messages.
    public var sessionId: SessionID
    
    public var targetInfo: TargetInfo
    
    public var waitingForDebugger: Bool
    
  }
}

extension SwiftCDPDomains.Target {
  /// - description: Issued when detached from target for any reason (including `detachFromTarget` command). Can be
  /// issued multiple times per target if multiple sessions have been attached to it.
  /// - intention: This is an experimental property.
  public struct detachedFromTarget: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Target
    
    /// - description: Detached session identifier.
    public var sessionId: SessionID
    
    /// - description: Deprecated.
    public var targetId: TargetID?
    
  }
}

extension SwiftCDPDomains.Target {
  /// - description: Notifies about a new protocol message received from the session (as reported in
  /// `attachedToTarget` event).
  public struct receivedMessageFromTarget: ModelEvent {
    public typealias Model = SwiftCDPDomains.Target
    
    /// - description: Identifier of a session which sends a message.
    public var sessionId: SessionID
    
    public var message: String
    
    /// - description: Deprecated.
    public var targetId: TargetID?
    
  }
}

extension SwiftCDPDomains.Target {
  /// - description: Issued when a possible inspection target is created.
  public struct targetCreated: ModelEvent {
    public typealias Model = SwiftCDPDomains.Target
    
    public var targetInfo: TargetInfo
    
  }
}

extension SwiftCDPDomains.Target {
  /// - description: Issued when a target is destroyed.
  public struct targetDestroyed: ModelEvent {
    public typealias Model = SwiftCDPDomains.Target
    
    public var targetId: TargetID
    
  }
}

extension SwiftCDPDomains.Target {
  /// - description: Issued when a target has crashed.
  public struct targetCrashed: ModelEvent {
    public typealias Model = SwiftCDPDomains.Target
    
    public var targetId: TargetID
    
    /// - description: Termination status type.
    public var status: String
    
    /// - description: Termination error code.
    public var errorCode: Int
    
  }
}

extension SwiftCDPDomains.Target {
  /// - description: Issued when some information about a target has changed. This only happens between
  /// `targetCreated` and `targetDestroyed`.
  public struct targetInfoChanged: ModelEvent {
    public typealias Model = SwiftCDPDomains.Target
    
    public var targetInfo: TargetInfo
    
  }
}

