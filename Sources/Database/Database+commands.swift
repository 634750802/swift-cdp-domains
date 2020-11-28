import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Database"

extension SwiftCDPDomains.Database {
  /// - intention: This is an experimental property.
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Database
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Database {
  /// - intention: This is an experimental property.
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Database
    public static let name = "enable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Database {
  /// - intention: This is an experimental property.
  public struct executeSQL: ModelMethod {
    public typealias Model = SwiftCDPDomains.Database
    public static let name = "executeSQL"
    
    public var databaseId: DatabaseId
    
    public var query: String
    
    public init(databaseId: DatabaseId, query: String) {
      self.databaseId = databaseId
      self.query = query
    }
    
    public struct Result: Decodable {
      public var columnNames: [String]?
      public var values: [[String: JsonPrimitive]]?
      public var sqlError: Error?
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Database {
  /// - intention: This is an experimental property.
  public struct getDatabaseTableNames: ModelMethod {
    public typealias Model = SwiftCDPDomains.Database
    public static let name = "getDatabaseTableNames"
    
    public var databaseId: DatabaseId
    
    public init(databaseId: DatabaseId) {
      self.databaseId = databaseId
    }
    
    public struct Result: Decodable {
      public var tableNames: [String]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

