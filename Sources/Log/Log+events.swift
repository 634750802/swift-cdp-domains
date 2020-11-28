import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Log"

extension SwiftCDPDomains.Log {
  /// - description: Issued when new message was logged.
  public struct entryAdded: ModelEvent {
    public typealias Model = SwiftCDPDomains.Log
    
    /// - description: The entry.
    public var entry: LogEntry
    
  }
}

