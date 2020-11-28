import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Target"

extension SwiftCDPDomains.Target {
  /// - description: Supports additional targets discovery and allows to attach to them.
  public struct attachedToTarget: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Target
    
    /// - description: Identifier assigned to the session used to send/receive messages.
    public var sessionId: SessionID
    
    public var targetInfo: TargetInfo
    
    public var waitingForDebugger: Bool
    
  }
}

extension SwiftCDPDomains.Target {
  /// - description: Supports additional targets discovery and allows to attach to them.
  public struct detachedFromTarget: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Target
    
    /// - description: Detached session identifier.
    public var sessionId: SessionID
    
    /// - description: Deprecated.
    public var targetId: TargetID?
    
  }
}

extension SwiftCDPDomains.Target {
  /// - description: Supports additional targets discovery and allows to attach to them.
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
  /// - description: Supports additional targets discovery and allows to attach to them.
  public struct targetCreated: ModelEvent {
    public typealias Model = SwiftCDPDomains.Target
    
    public var targetInfo: TargetInfo
    
  }
}

extension SwiftCDPDomains.Target {
  /// - description: Supports additional targets discovery and allows to attach to them.
  public struct targetDestroyed: ModelEvent {
    public typealias Model = SwiftCDPDomains.Target
    
    public var targetId: TargetID
    
  }
}

extension SwiftCDPDomains.Target {
  /// - description: Supports additional targets discovery and allows to attach to them.
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
  /// - description: Supports additional targets discovery and allows to attach to them.
  public struct targetInfoChanged: ModelEvent {
    public typealias Model = SwiftCDPDomains.Target
    
    public var targetInfo: TargetInfo
    
  }
}

