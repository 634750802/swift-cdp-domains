import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "HeadlessExperimental"

extension SwiftCDPDomains.HeadlessExperimental {
  /// - description: Issued when the target starts or stops needing BeginFrames.
  /// Deprecated. Issue beginFrame unconditionally instead and use result from
  /// beginFrame to detect whether the frames were suppressed.
  @available(*, deprecated)
  public struct needsBeginFramesChanged: ModelEvent {
    public typealias Model = SwiftCDPDomains.HeadlessExperimental
    
    /// - description: True if BeginFrames are needed, false otherwise.
    public var needsBeginFrames: Bool
    
  }
}

