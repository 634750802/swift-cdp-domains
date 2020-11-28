import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "Database"

extension SwiftCDPDomains.Database {
  /// - see: https://vanilla.aslushnikov.com/?Database.DatabaseId
  /// - description: Unique identifier of Database object.
  public struct DatabaseId: Codable {
    private var rawValue: String
    
    public init(from decoder: Decoder) throws {
      self.rawValue = try decoder.singleValueContainer().decode(String.self)
    }
    
    public func encode(to encoder: Encoder) throws {
      var container = encoder.singleValueContainer()
      try container.encode(rawValue)
    }
  }
}

extension SwiftCDPDomains.Database {
  /// - see: https://vanilla.aslushnikov.com/?Database.Database
  /// - description: Database object.
  public struct Database: Codable {
    /// - description: Database ID.
    public var id: DatabaseId
    
    /// - description: Database domain.
    public var domain: String
    
    /// - description: Database name.
    public var name: String
    
    /// - description: Database version.
    public var version: String
    
  }
}

extension SwiftCDPDomains.Database {
  /// - see: https://vanilla.aslushnikov.com/?Database.Error
  /// - description: Database error.
  public struct Error: Codable {
    /// - description: Error message.
    public var message: String
    
    /// - description: Error code.
    public var code: Int
    
  }
}

