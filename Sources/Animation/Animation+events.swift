import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Animation"

extension SwiftCDPDomains.Animation {
  /// - description: Event for when an animation has been cancelled.
  public struct animationCanceled: ModelEvent {
    public typealias Model = SwiftCDPDomains.Animation
    
    /// - description: Id of the animation that was cancelled.
    public var id: String
    
  }
}

extension SwiftCDPDomains.Animation {
  /// - description: Event for each animation that has been created.
  public struct animationCreated: ModelEvent {
    public typealias Model = SwiftCDPDomains.Animation
    
    /// - description: Id of the animation that was created.
    public var id: String
    
  }
}

extension SwiftCDPDomains.Animation {
  /// - description: Event for animation that has been started.
  public struct animationStarted: ModelEvent {
    public typealias Model = SwiftCDPDomains.Animation
    
    /// - description: Animation that was started.
    public var animation: Animation
    
  }
}

