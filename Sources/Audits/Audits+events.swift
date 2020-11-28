import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Audits"

extension SwiftCDPDomains.Audits {
  /// - description: Audits domain allows investigation of page violations and possible improvements.
  /// - intention: This is an experimental property.
  public struct issueAdded: ModelEvent {
    public typealias Model = SwiftCDPDomains.Audits
    
    public var issue: InspectorIssue
    
  }
}

