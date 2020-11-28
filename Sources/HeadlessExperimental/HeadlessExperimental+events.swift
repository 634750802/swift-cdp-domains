import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "HeadlessExperimental"

extension SwiftCDPDomains.HeadlessExperimental {
  /// - description: This domain provides experimental commands only supported in headless mode.
  /// - intention: This is an experimental property.
  @available(*, deprecated)
  public struct needsBeginFramesChanged: ModelEvent {
    public typealias Model = SwiftCDPDomains.HeadlessExperimental
    
    /// - description: True if BeginFrames are needed, false otherwise.
    public var needsBeginFrames: Bool
    
  }
}

