import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Audits"

extension SwiftCDPDomains.Audits {
  public struct issueAdded: ModelEvent {
    public typealias Model = SwiftCDPDomains.Audits
    
    public var issue: InspectorIssue
    
  }
}

