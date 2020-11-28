import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "IndexedDB"

extension SwiftCDPDomains.IndexedDB {
  /// - intention: This is an experimental property.
  public struct clearObjectStore: ModelMethod {
    public typealias Model = SwiftCDPDomains.IndexedDB
    public static let name = "clearObjectStore"
    
    /// - description: Security origin.
    public var securityOrigin: String
    
    /// - description: Database name.
    public var databaseName: String
    
    /// - description: Object store name.
    public var objectStoreName: String
    
    public init(securityOrigin: String, databaseName: String, objectStoreName: String) {
      self.securityOrigin = securityOrigin
      self.databaseName = databaseName
      self.objectStoreName = objectStoreName
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.IndexedDB {
  /// - intention: This is an experimental property.
  public struct deleteDatabase: ModelMethod {
    public typealias Model = SwiftCDPDomains.IndexedDB
    public static let name = "deleteDatabase"
    
    /// - description: Security origin.
    public var securityOrigin: String
    
    /// - description: Database name.
    public var databaseName: String
    
    public init(securityOrigin: String, databaseName: String) {
      self.securityOrigin = securityOrigin
      self.databaseName = databaseName
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.IndexedDB {
  /// - intention: This is an experimental property.
  public struct deleteObjectStoreEntries: ModelMethod {
    public typealias Model = SwiftCDPDomains.IndexedDB
    public static let name = "deleteObjectStoreEntries"
    
    public var securityOrigin: String
    
    public var databaseName: String
    
    public var objectStoreName: String
    
    /// - description: Range of entry keys to delete
    public var keyRange: KeyRange
    
    public init(securityOrigin: String, databaseName: String, objectStoreName: String, keyRange: KeyRange) {
      self.securityOrigin = securityOrigin
      self.databaseName = databaseName
      self.objectStoreName = objectStoreName
      self.keyRange = keyRange
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.IndexedDB {
  /// - intention: This is an experimental property.
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.IndexedDB
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.IndexedDB {
  /// - intention: This is an experimental property.
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.IndexedDB
    public static let name = "enable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.IndexedDB {
  /// - intention: This is an experimental property.
  public struct requestData: ModelMethod {
    public typealias Model = SwiftCDPDomains.IndexedDB
    public static let name = "requestData"
    
    /// - description: Security origin.
    public var securityOrigin: String
    
    /// - description: Database name.
    public var databaseName: String
    
    /// - description: Object store name.
    public var objectStoreName: String
    
    /// - description: Index name, empty string for object store data requests.
    public var indexName: String
    
    /// - description: Number of records to skip.
    public var skipCount: Int
    
    /// - description: Number of records to fetch.
    public var pageSize: Int
    
    /// - description: Key range.
    public var keyRange: KeyRange?
    
    public init(securityOrigin: String, databaseName: String, objectStoreName: String, indexName: String, skipCount: Int, pageSize: Int, keyRange: KeyRange? = nil) {
      self.securityOrigin = securityOrigin
      self.databaseName = databaseName
      self.objectStoreName = objectStoreName
      self.indexName = indexName
      self.skipCount = skipCount
      self.pageSize = pageSize
      self.keyRange = keyRange
    }
    
    public struct Result: Decodable {
      /// - description: Array of object store data entries.
      public var objectStoreDataEntries: [DataEntry]
      /// - description: If true, there are more entries to fetch in the given range.
      public var hasMore: Bool
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.IndexedDB {
  /// - intention: This is an experimental property.
  public struct getMetadata: ModelMethod {
    public typealias Model = SwiftCDPDomains.IndexedDB
    public static let name = "getMetadata"
    
    /// - description: Security origin.
    public var securityOrigin: String
    
    /// - description: Database name.
    public var databaseName: String
    
    /// - description: Object store name.
    public var objectStoreName: String
    
    public init(securityOrigin: String, databaseName: String, objectStoreName: String) {
      self.securityOrigin = securityOrigin
      self.databaseName = databaseName
      self.objectStoreName = objectStoreName
    }
    
    public struct Result: Decodable {
      /// - description: the entries count
      public var entriesCount: JsonNumber
      /// - description: the current value of key generator, to become the next inserted
      /// key into the object store. Valid if objectStore.autoIncrement
      /// is true.
      public var keyGeneratorValue: JsonNumber
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.IndexedDB {
  /// - intention: This is an experimental property.
  public struct requestDatabase: ModelMethod {
    public typealias Model = SwiftCDPDomains.IndexedDB
    public static let name = "requestDatabase"
    
    /// - description: Security origin.
    public var securityOrigin: String
    
    /// - description: Database name.
    public var databaseName: String
    
    public init(securityOrigin: String, databaseName: String) {
      self.securityOrigin = securityOrigin
      self.databaseName = databaseName
    }
    
    public struct Result: Decodable {
      /// - description: Database with an array of object stores.
      public var databaseWithObjectStores: DatabaseWithObjectStores
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.IndexedDB {
  /// - intention: This is an experimental property.
  public struct requestDatabaseNames: ModelMethod {
    public typealias Model = SwiftCDPDomains.IndexedDB
    public static let name = "requestDatabaseNames"
    
    /// - description: Security origin.
    public var securityOrigin: String
    
    public init(securityOrigin: String) {
      self.securityOrigin = securityOrigin
    }
    
    public struct Result: Decodable {
      /// - description: Database names for origin.
      public var databaseNames: [String]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

