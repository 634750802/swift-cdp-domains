import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Database"

extension SwiftCDPDomains.Database {
  /// - intention: This is an experimental property.
  public struct addDatabase: ModelEvent {
    public typealias Model = SwiftCDPDomains.Database
    
    public var database: Database
    
  }
}

