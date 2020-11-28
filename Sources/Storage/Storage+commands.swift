import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Storage"

extension SwiftCDPDomains.Storage {
  /// - description: Clears storage for origin.
  public struct clearDataForOrigin: ModelMethod {
    public typealias Model = SwiftCDPDomains.Storage
    public static let name = "clearDataForOrigin"
    
    /// - description: Security origin.
    public var origin: String
    
    /// - description: Comma separated list of StorageType to clear.
    public var storageTypes: String
    
    public init(origin: String, storageTypes: String) {
      self.origin = origin
      self.storageTypes = storageTypes
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Storage {
  /// - description: Returns all browser cookies.
  public struct getCookies: ModelMethod {
    public typealias Model = SwiftCDPDomains.Storage
    public static let name = "getCookies"
    
    /// - description: Browser context to use when called on the browser endpoint.
    public var browserContextId: SwiftCDPDomains.Browser.BrowserContextID?
    
    public init(browserContextId: SwiftCDPDomains.Browser.BrowserContextID? = nil) {
      self.browserContextId = browserContextId
    }
    
    public struct Result: Decodable {
      /// - description: Array of cookie objects.
      public var cookies: [SwiftCDPDomains.Network.Cookie]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Storage {
  /// - description: Sets given cookies.
  public struct setCookies: ModelMethod {
    public typealias Model = SwiftCDPDomains.Storage
    public static let name = "setCookies"
    
    /// - description: Cookies to be set.
    public var cookies: [SwiftCDPDomains.Network.CookieParam]
    
    /// - description: Browser context to use when called on the browser endpoint.
    public var browserContextId: SwiftCDPDomains.Browser.BrowserContextID?
    
    public init(cookies: [SwiftCDPDomains.Network.CookieParam], browserContextId: SwiftCDPDomains.Browser.BrowserContextID? = nil) {
      self.cookies = cookies
      self.browserContextId = browserContextId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Storage {
  /// - description: Clears cookies.
  public struct clearCookies: ModelMethod {
    public typealias Model = SwiftCDPDomains.Storage
    public static let name = "clearCookies"
    
    /// - description: Browser context to use when called on the browser endpoint.
    public var browserContextId: SwiftCDPDomains.Browser.BrowserContextID?
    
    public init(browserContextId: SwiftCDPDomains.Browser.BrowserContextID? = nil) {
      self.browserContextId = browserContextId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Storage {
  /// - description: Returns usage and quota in bytes.
  public struct getUsageAndQuota: ModelMethod {
    public typealias Model = SwiftCDPDomains.Storage
    public static let name = "getUsageAndQuota"
    
    /// - description: Security origin.
    public var origin: String
    
    public init(origin: String) {
      self.origin = origin
    }
    
    public struct Result: Decodable {
      /// - description: Storage usage (bytes).
      public var usage: JsonNumber
      /// - description: Storage quota (bytes).
      public var quota: JsonNumber
      /// - description: Whether or not the origin has an active storage quota override
      public var overrideActive: Bool
      /// - description: Storage usage per type (bytes).
      public var usageBreakdown: [UsageForType]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Storage {
  /// - description: Override quota for the specified origin
  /// - intention: This is an experimental property.
  public struct overrideQuotaForOrigin: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Storage
    public static let name = "overrideQuotaForOrigin"
    
    /// - description: Security origin.
    public var origin: String
    
    /// - description: The quota size (in bytes) to override the original quota with.
    /// If this is called multiple times, the overriden quota will be equal to
    /// the quotaSize provided in the final call. If this is called without
    /// specifying a quotaSize, the quota will be reset to the default value for
    /// the specified origin. If this is called multiple times with different
    /// origins, the override will be maintained for each origin until it is
    /// disabled (called without a quotaSize).
    public var quotaSize: JsonNumber?
    
    public init(origin: String, quotaSize: JsonNumber? = nil) {
      self.origin = origin
      self.quotaSize = quotaSize
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Storage {
  /// - description: Registers origin to be notified when an update occurs to its cache storage list.
  public struct trackCacheStorageForOrigin: ModelMethod {
    public typealias Model = SwiftCDPDomains.Storage
    public static let name = "trackCacheStorageForOrigin"
    
    /// - description: Security origin.
    public var origin: String
    
    public init(origin: String) {
      self.origin = origin
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Storage {
  /// - description: Registers origin to be notified when an update occurs to its IndexedDB.
  public struct trackIndexedDBForOrigin: ModelMethod {
    public typealias Model = SwiftCDPDomains.Storage
    public static let name = "trackIndexedDBForOrigin"
    
    /// - description: Security origin.
    public var origin: String
    
    public init(origin: String) {
      self.origin = origin
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Storage {
  /// - description: Unregisters origin from receiving notifications for cache storage.
  public struct untrackCacheStorageForOrigin: ModelMethod {
    public typealias Model = SwiftCDPDomains.Storage
    public static let name = "untrackCacheStorageForOrigin"
    
    /// - description: Security origin.
    public var origin: String
    
    public init(origin: String) {
      self.origin = origin
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Storage {
  /// - description: Unregisters origin from receiving notifications for IndexedDB.
  public struct untrackIndexedDBForOrigin: ModelMethod {
    public typealias Model = SwiftCDPDomains.Storage
    public static let name = "untrackIndexedDBForOrigin"
    
    /// - description: Security origin.
    public var origin: String
    
    public init(origin: String) {
      self.origin = origin
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

