import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "ApplicationCache"

extension SwiftCDPDomains.ApplicationCache {
  /// - see: https://vanilla.aslushnikov.com/?ApplicationCache.ApplicationCacheResource
  /// - description: Detailed application cache resource information.
  public struct ApplicationCacheResource: Codable {
    /// - description: Resource url.
    public var url: String
    
    /// - description: Resource size.
    public var size: Int
    
    /// - description: Resource type.
    public var type: String
    
  }
}

extension SwiftCDPDomains.ApplicationCache {
  /// - see: https://vanilla.aslushnikov.com/?ApplicationCache.ApplicationCache
  /// - description: Detailed application cache information.
  public struct ApplicationCache: Codable {
    /// - description: Manifest URL.
    public var manifestURL: String
    
    /// - description: Application cache size.
    public var size: Int
    
    /// - description: Application cache creation time.
    public var creationTime: Int
    
    /// - description: Application cache update time.
    public var updateTime: Int
    
    /// - description: Application cache resources.
    public var resources: [ApplicationCacheResource]
    
  }
}

extension SwiftCDPDomains.ApplicationCache {
  /// - see: https://vanilla.aslushnikov.com/?ApplicationCache.FrameWithManifest
  /// - description: Frame identifier - manifest URL pair.
  public struct FrameWithManifest: Codable {
    /// - description: Frame identifier.
    public var frameId: SwiftCDPDomains.Page.FrameId
    
    /// - description: Manifest URL.
    public var manifestURL: String
    
    /// - description: Application cache status.
    public var status: Int
    
  }
}

