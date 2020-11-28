import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "ApplicationCache"

extension SwiftCDPDomains.ApplicationCache {
  public struct applicationCacheStatusUpdated: ModelEvent {
    public typealias Model = SwiftCDPDomains.ApplicationCache
    
    /// - description: Identifier of the frame containing document whose application cache updated status.
    public var frameId: SwiftCDPDomains.Page.FrameId
    
    /// - description: Manifest URL.
    public var manifestURL: String
    
    /// - description: Updated application cache status.
    public var status: Int
    
  }
}

extension SwiftCDPDomains.ApplicationCache {
  public struct networkStateUpdated: ModelEvent {
    public typealias Model = SwiftCDPDomains.ApplicationCache
    
    public var isNowOnline: Bool
    
  }
}

