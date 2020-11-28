import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Emulation"

extension SwiftCDPDomains.Emulation {
  /// - description: Notification sent after the virtual time budget for the current VirtualTimePolicy has run out.
  /// - intention: This is an experimental property.
  public struct virtualTimeBudgetExpired: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Emulation
    
  }
}

