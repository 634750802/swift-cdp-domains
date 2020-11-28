import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "WebAudio"

extension SwiftCDPDomains.WebAudio {
  /// - description: Enables the WebAudio domain and starts sending context lifetime events.
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.WebAudio
    public static let name = "enable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.WebAudio {
  /// - description: Disables the WebAudio domain.
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.WebAudio
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.WebAudio {
  /// - description: Fetch the realtime data from the registered contexts.
  public struct getRealtimeData: ModelMethod {
    public typealias Model = SwiftCDPDomains.WebAudio
    public static let name = "getRealtimeData"
    
    public var contextId: GraphObjectId
    
    public init(contextId: GraphObjectId) {
      self.contextId = contextId
    }
    
    public struct Result: Decodable {
      public var realtimeData: ContextRealtimeData
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

