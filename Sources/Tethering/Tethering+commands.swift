import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Tethering"

extension SwiftCDPDomains.Tethering {
  /// - description: Request browser port binding.
  public struct bind: ModelMethod {
    public typealias Model = SwiftCDPDomains.Tethering
    public static let name = "bind"
    
    /// - description: Port number to bind.
    public var port: Int
    
    public init(port: Int) {
      self.port = port
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Tethering {
  /// - description: Request browser port unbinding.
  public struct unbind: ModelMethod {
    public typealias Model = SwiftCDPDomains.Tethering
    public static let name = "unbind"
    
    /// - description: Port number to unbind.
    public var port: Int
    
    public init(port: Int) {
      self.port = port
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

