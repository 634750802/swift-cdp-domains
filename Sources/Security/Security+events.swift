import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Security"

extension SwiftCDPDomains.Security {
  /// - description: Security
  @available(*, deprecated)
  public struct certificateError: ModelEvent {
    public typealias Model = SwiftCDPDomains.Security
    
    /// - description: The ID of the event.
    public var eventId: Int
    
    /// - description: The type of the error.
    public var errorType: String
    
    /// - description: The url that was requested.
    public var requestURL: String
    
  }
}

extension SwiftCDPDomains.Security {
  /// - description: Security
  public struct visibleSecurityStateChanged: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Security
    
    /// - description: Security state information about the page.
    public var visibleSecurityState: VisibleSecurityState
    
  }
}

extension SwiftCDPDomains.Security {
  /// - description: Security
  public struct securityStateChanged: ModelEvent {
    public typealias Model = SwiftCDPDomains.Security
    
    /// - description: Security state.
    public var securityState: SecurityState
    
    /// - description: True if the page was loaded over cryptographic transport such as HTTPS.
    public var schemeIsCryptographic: Bool
    
    /// - description: List of explanations for the security state. If the overall security state is `insecure` or
    /// `warning`, at least one corresponding explanation should be included.
    public var explanations: [SecurityStateExplanation]
    
    /// - description: Information about insecure content on the page.
    public var insecureContentStatus: InsecureContentStatus
    
    /// - description: Overrides user-visible description of the state.
    public var summary: String?
    
  }
}

