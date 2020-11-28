import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Security"

extension SwiftCDPDomains.Security {
  /// - description: Disables tracking security state changes.
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Security
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Security {
  /// - description: Enables tracking security state changes.
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Security
    public static let name = "enable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Security {
  /// - description: Enable/disable whether all certificate errors should be ignored.
  /// - intention: This is an experimental property.
  public struct setIgnoreCertificateErrors: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Security
    public static let name = "setIgnoreCertificateErrors"
    
    /// - description: If true, all certificate errors will be ignored.
    public var ignore: Bool
    
    public init(ignore: Bool) {
      self.ignore = ignore
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Security {
  /// - description: Handles a certificate error that fired a certificateError event.
  @available(*, deprecated)
  public struct handleCertificateError: ModelMethod {
    public typealias Model = SwiftCDPDomains.Security
    public static let name = "handleCertificateError"
    
    /// - description: The ID of the event.
    public var eventId: Int
    
    /// - description: The action to take on the certificate error.
    public var action: CertificateErrorAction
    
    public init(eventId: Int, action: CertificateErrorAction) {
      self.eventId = eventId
      self.action = action
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Security {
  /// - description: Enable/disable overriding certificate errors. If enabled, all certificate error events need to
  /// be handled by the DevTools client and should be answered with `handleCertificateError` commands.
  @available(*, deprecated)
  public struct setOverrideCertificateErrors: ModelMethod {
    public typealias Model = SwiftCDPDomains.Security
    public static let name = "setOverrideCertificateErrors"
    
    /// - description: If true, certificate errors will be overridden.
    public var override: Bool
    
    public init(override: Bool) {
      self.override = override
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

