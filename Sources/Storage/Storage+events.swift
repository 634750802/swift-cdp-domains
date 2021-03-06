import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Storage"

extension SwiftCDPDomains.Storage {
  /// - description: A cache's contents have been modified.
  public struct cacheStorageContentUpdated: ModelEvent {
    public typealias Model = SwiftCDPDomains.Storage
    
    /// - description: Origin to update.
    public var origin: String
    
    /// - description: Name of cache in origin.
    public var cacheName: String
    
  }
}

extension SwiftCDPDomains.Storage {
  /// - description: A cache has been added/deleted.
  public struct cacheStorageListUpdated: ModelEvent {
    public typealias Model = SwiftCDPDomains.Storage
    
    /// - description: Origin to update.
    public var origin: String
    
  }
}

extension SwiftCDPDomains.Storage {
  /// - description: The origin's IndexedDB object store has been modified.
  public struct indexedDBContentUpdated: ModelEvent {
    public typealias Model = SwiftCDPDomains.Storage
    
    /// - description: Origin to update.
    public var origin: String
    
    /// - description: Database to update.
    public var databaseName: String
    
    /// - description: ObjectStore to update.
    public var objectStoreName: String
    
  }
}

extension SwiftCDPDomains.Storage {
  /// - description: The origin's IndexedDB database list has been modified.
  public struct indexedDBListUpdated: ModelEvent {
    public typealias Model = SwiftCDPDomains.Storage
    
    /// - description: Origin to update.
    public var origin: String
    
  }
}

