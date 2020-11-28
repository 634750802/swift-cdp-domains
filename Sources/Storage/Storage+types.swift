import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "Storage"

extension SwiftCDPDomains.Storage {
  /// - see: https://vanilla.aslushnikov.com/?Storage.StorageType
  /// - description: Enum of possible storage types.
  /// - choices: ["appcache", "cookies", "file_systems", "indexeddb", "local_storage", "shader_cache", "websql", "service_workers", "cache_storage", "all", "other"]
  public typealias StorageType = String
}

extension SwiftCDPDomains.Storage {
  /// - see: https://vanilla.aslushnikov.com/?Storage.UsageForType
  /// - description: Usage for a storage type.
  public struct UsageForType: Codable {
    /// - description: Name of storage type.
    public var storageType: StorageType
    
    /// - description: Storage usage (bytes).
    public var usage: JsonNumber
    
  }
}

