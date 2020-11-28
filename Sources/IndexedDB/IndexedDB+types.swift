import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "IndexedDB"

extension SwiftCDPDomains.IndexedDB {
  /// - see: https://vanilla.aslushnikov.com/?IndexedDB.DatabaseWithObjectStores
  /// - description: Database with an array of object stores.
  public struct DatabaseWithObjectStores: Codable {
    /// - description: Database name.
    public var name: String
    
    /// - description: Database version (type is not 'integer', as the standard
    /// requires the version number to be 'unsigned long long')
    public var version: JsonNumber
    
    /// - description: Object stores in this database.
    public var objectStores: [ObjectStore]
    
  }
}

extension SwiftCDPDomains.IndexedDB {
  /// - see: https://vanilla.aslushnikov.com/?IndexedDB.ObjectStore
  /// - description: Object store.
  public struct ObjectStore: Codable {
    /// - description: Object store name.
    public var name: String
    
    /// - description: Object store key path.
    public var keyPath: KeyPath
    
    /// - description: If true, object store has auto increment flag set.
    public var autoIncrement: Bool
    
    /// - description: Indexes in this object store.
    public var indexes: [ObjectStoreIndex]
    
  }
}

extension SwiftCDPDomains.IndexedDB {
  /// - see: https://vanilla.aslushnikov.com/?IndexedDB.ObjectStoreIndex
  /// - description: Object store index.
  public struct ObjectStoreIndex: Codable {
    /// - description: Index name.
    public var name: String
    
    /// - description: Index key path.
    public var keyPath: KeyPath
    
    /// - description: If true, index is unique.
    public var unique: Bool
    
    /// - description: If true, index allows multiple entries for a key.
    public var multiEntry: Bool
    
  }
}

extension SwiftCDPDomains.IndexedDB {
  /// - see: https://vanilla.aslushnikov.com/?IndexedDB.Key
  /// - description: Key.
  public struct Key: Codable {
    /// - description: Key type.
    public var type: String
    
    /// - description: Number value.
    public var number: JsonNumber?
    
    /// - description: String value.
    public var string: String?
    
    /// - description: Date value.
    public var date: JsonNumber?
    
    /// - description: Array value.
    public var array: [StructReference<Key>]?
    
  }
}

extension SwiftCDPDomains.IndexedDB {
  /// - see: https://vanilla.aslushnikov.com/?IndexedDB.KeyRange
  /// - description: Key range.
  public struct KeyRange: Codable {
    /// - description: Lower bound.
    public var lower: Key?
    
    /// - description: Upper bound.
    public var upper: Key?
    
    /// - description: If true lower bound is open.
    public var lowerOpen: Bool
    
    /// - description: If true upper bound is open.
    public var upperOpen: Bool
    
  }
}

extension SwiftCDPDomains.IndexedDB {
  /// - see: https://vanilla.aslushnikov.com/?IndexedDB.DataEntry
  /// - description: Data entry.
  public struct DataEntry: Codable {
    /// - description: Key object.
    public var key: SwiftCDPDomains.Runtime.RemoteObject
    
    /// - description: Primary key object.
    public var primaryKey: SwiftCDPDomains.Runtime.RemoteObject
    
    /// - description: Value object.
    public var value: SwiftCDPDomains.Runtime.RemoteObject
    
  }
}

extension SwiftCDPDomains.IndexedDB {
  /// - see: https://vanilla.aslushnikov.com/?IndexedDB.KeyPath
  /// - description: Key path.
  public struct KeyPath: Codable {
    /// - description: Key path type.
    public var type: String
    
    /// - description: String value.
    public var string: String?
    
    /// - description: Array value.
    public var array: [String]?
    
  }
}

