import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "CacheStorage"

extension SwiftCDPDomains.CacheStorage {
  /// - intention: This is an experimental property.
  public struct deleteCache: ModelMethod {
    public typealias Model = SwiftCDPDomains.CacheStorage
    public static let name = "deleteCache"
    
    /// - description: Id of cache for deletion.
    public var cacheId: CacheId
    
    public init(cacheId: CacheId) {
      self.cacheId = cacheId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.CacheStorage {
  /// - intention: This is an experimental property.
  public struct deleteEntry: ModelMethod {
    public typealias Model = SwiftCDPDomains.CacheStorage
    public static let name = "deleteEntry"
    
    /// - description: Id of cache where the entry will be deleted.
    public var cacheId: CacheId
    
    /// - description: URL spec of the request.
    public var request: String
    
    public init(cacheId: CacheId, request: String) {
      self.cacheId = cacheId
      self.request = request
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.CacheStorage {
  /// - intention: This is an experimental property.
  public struct requestCacheNames: ModelMethod {
    public typealias Model = SwiftCDPDomains.CacheStorage
    public static let name = "requestCacheNames"
    
    /// - description: Security origin.
    public var securityOrigin: String
    
    public init(securityOrigin: String) {
      self.securityOrigin = securityOrigin
    }
    
    public struct Result: Decodable {
      /// - description: Caches for the security origin.
      public var caches: [Cache]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.CacheStorage {
  /// - intention: This is an experimental property.
  public struct requestCachedResponse: ModelMethod {
    public typealias Model = SwiftCDPDomains.CacheStorage
    public static let name = "requestCachedResponse"
    
    /// - description: Id of cache that contains the entry.
    public var cacheId: CacheId
    
    /// - description: URL spec of the request.
    public var requestURL: String
    
    /// - description: headers of the request.
    public var requestHeaders: [Header]
    
    public init(cacheId: CacheId, requestURL: String, requestHeaders: [Header]) {
      self.cacheId = cacheId
      self.requestURL = requestURL
      self.requestHeaders = requestHeaders
    }
    
    public struct Result: Decodable {
      /// - description: Response read from the cache.
      public var response: CachedResponse
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.CacheStorage {
  /// - intention: This is an experimental property.
  public struct requestEntries: ModelMethod {
    public typealias Model = SwiftCDPDomains.CacheStorage
    public static let name = "requestEntries"
    
    /// - description: ID of cache to get entries from.
    public var cacheId: CacheId
    
    /// - description: Number of records to skip.
    public var skipCount: Int?
    
    /// - description: Number of records to fetch.
    public var pageSize: Int?
    
    /// - description: If present, only return the entries containing this substring in the path
    public var pathFilter: String?
    
    public init(cacheId: CacheId, skipCount: Int? = nil, pageSize: Int? = nil, pathFilter: String? = nil) {
      self.cacheId = cacheId
      self.skipCount = skipCount
      self.pageSize = pageSize
      self.pathFilter = pathFilter
    }
    
    public struct Result: Decodable {
      /// - description: Array of object store data entries.
      public var cacheDataEntries: [DataEntry]
      /// - description: Count of returned entries from this storage. If pathFilter is empty, it
      /// is the count of all entries from this storage.
      public var returnCount: JsonNumber
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

