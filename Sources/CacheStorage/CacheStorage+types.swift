import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "CacheStorage"

extension SwiftCDPDomains.CacheStorage {
  /// - see: https://vanilla.aslushnikov.com/?CacheStorage.CacheId
  /// - description: Unique identifier of the Cache object.
  public struct CacheId: Codable {
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

extension SwiftCDPDomains.CacheStorage {
  /// - see: https://vanilla.aslushnikov.com/?CacheStorage.CachedResponseType
  /// - description: type of HTTP response cached
  /// - choices: ["basic", "cors", "default", "error", "opaqueResponse", "opaqueRedirect"]
  public typealias CachedResponseType = String
}

extension SwiftCDPDomains.CacheStorage {
  /// - see: https://vanilla.aslushnikov.com/?CacheStorage.DataEntry
  /// - description: Data entry.
  public struct DataEntry: Codable {
    /// - description: Request URL.
    public var requestURL: String
    
    /// - description: Request method.
    public var requestMethod: String
    
    /// - description: Request headers
    public var requestHeaders: [Header]
    
    /// - description: Number of seconds since epoch.
    public var responseTime: JsonNumber
    
    /// - description: HTTP response status code.
    public var responseStatus: Int
    
    /// - description: HTTP response status text.
    public var responseStatusText: String
    
    /// - description: HTTP response type
    public var responseType: CachedResponseType
    
    /// - description: Response headers
    public var responseHeaders: [Header]
    
  }
}

extension SwiftCDPDomains.CacheStorage {
  /// - see: https://vanilla.aslushnikov.com/?CacheStorage.Cache
  /// - description: Cache identifier.
  public struct Cache: Codable {
    /// - description: An opaque unique id of the cache.
    public var cacheId: CacheId
    
    /// - description: Security origin of the cache.
    public var securityOrigin: String
    
    /// - description: The name of the cache.
    public var cacheName: String
    
  }
}

extension SwiftCDPDomains.CacheStorage {
  /// - see: https://vanilla.aslushnikov.com/?CacheStorage.Header
  public struct Header: Codable {
    public var name: String
    
    public var value: String
    
  }
}

extension SwiftCDPDomains.CacheStorage {
  /// - see: https://vanilla.aslushnikov.com/?CacheStorage.CachedResponse
  /// - description: Cached response
  public struct CachedResponse: Codable {
    /// - description: Entry content, base64-encoded.
    public var body: String
    
  }
}

