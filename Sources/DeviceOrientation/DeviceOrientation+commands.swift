import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "DeviceOrientation"

extension SwiftCDPDomains.DeviceOrientation {
  /// - description: Clears the overridden Device Orientation.
  public struct clearDeviceOrientationOverride: ModelMethod {
    public typealias Model = SwiftCDPDomains.DeviceOrientation
    public static let name = "clearDeviceOrientationOverride"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DeviceOrientation {
  /// - description: Overrides the Device Orientation.
  public struct setDeviceOrientationOverride: ModelMethod {
    public typealias Model = SwiftCDPDomains.DeviceOrientation
    public static let name = "setDeviceOrientationOverride"
    
    /// - description: Mock alpha
    public var alpha: JsonNumber
    
    /// - description: Mock beta
    public var beta: JsonNumber
    
    /// - description: Mock gamma
    public var gamma: JsonNumber
    
    public init(alpha: JsonNumber, beta: JsonNumber, gamma: JsonNumber) {
      self.alpha = alpha
      self.beta = beta
      self.gamma = gamma
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

