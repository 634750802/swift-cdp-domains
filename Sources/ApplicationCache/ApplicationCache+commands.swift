import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "ApplicationCache"

extension SwiftCDPDomains.ApplicationCache {
  /// - description: Enables application cache domain notifications.
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.ApplicationCache
    public static let name = "enable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.ApplicationCache {
  /// - description: Returns relevant application cache data for the document in given frame.
  public struct getApplicationCacheForFrame: ModelMethod {
    public typealias Model = SwiftCDPDomains.ApplicationCache
    public static let name = "getApplicationCacheForFrame"
    
    /// - description: Identifier of the frame containing document whose application cache is retrieved.
    public var frameId: SwiftCDPDomains.Page.FrameId
    
    public init(frameId: SwiftCDPDomains.Page.FrameId) {
      self.frameId = frameId
    }
    
    public struct Result: Decodable {
      /// - description: Relevant application cache data for the document in given frame.
      public var applicationCache: ApplicationCache
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.ApplicationCache {
  /// - description: Returns array of frame identifiers with manifest urls for each frame containing a document
  /// associated with some application cache.
  public struct getFramesWithManifests: ModelMethod {
    public typealias Model = SwiftCDPDomains.ApplicationCache
    public static let name = "getFramesWithManifests"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: Array of frame identifiers with manifest urls for each frame containing a document
      /// associated with some application cache.
      public var frameIds: [FrameWithManifest]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.ApplicationCache {
  /// - description: Returns manifest URL for document in the given frame.
  public struct getManifestForFrame: ModelMethod {
    public typealias Model = SwiftCDPDomains.ApplicationCache
    public static let name = "getManifestForFrame"
    
    /// - description: Identifier of the frame containing document whose manifest is retrieved.
    public var frameId: SwiftCDPDomains.Page.FrameId
    
    public init(frameId: SwiftCDPDomains.Page.FrameId) {
      self.frameId = frameId
    }
    
    public struct Result: Decodable {
      /// - description: Manifest URL for document in the given frame.
      public var manifestURL: String
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

