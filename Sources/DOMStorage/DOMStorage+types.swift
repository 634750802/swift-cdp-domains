import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "DOMStorage"

extension SwiftCDPDomains.DOMStorage {
  /// - see: https://vanilla.aslushnikov.com/?DOMStorage.StorageId
  /// - description: DOM Storage identifier.
  public struct StorageId: Codable {
    /// - description: Security origin for the storage.
    public var securityOrigin: String
    
    /// - description: Whether the storage is local storage (not session storage).
    public var isLocalStorage: Bool
    
  }
}

extension SwiftCDPDomains.DOMStorage {
  /// - see: https://vanilla.aslushnikov.com/?DOMStorage.Item
  /// - description: DOM Storage item.
  public typealias Item = Array<String>
}

