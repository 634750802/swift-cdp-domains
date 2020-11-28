import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "WebAuthn"

extension SwiftCDPDomains.WebAuthn {
  /// - description: This domain allows configuring virtual authenticators to test the WebAuthn
  /// API.
  /// - intention: This is an experimental property.
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.WebAuthn
    public static let name = "enable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.WebAuthn {
  /// - description: This domain allows configuring virtual authenticators to test the WebAuthn
  /// API.
  /// - intention: This is an experimental property.
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.WebAuthn
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.WebAuthn {
  /// - description: This domain allows configuring virtual authenticators to test the WebAuthn
  /// API.
  /// - intention: This is an experimental property.
  public struct addVirtualAuthenticator: ModelMethod {
    public typealias Model = SwiftCDPDomains.WebAuthn
    public static let name = "addVirtualAuthenticator"
    
    public var options: VirtualAuthenticatorOptions
    
    public init(options: VirtualAuthenticatorOptions) {
      self.options = options
    }
    
    public struct Result: Decodable {
      public var authenticatorId: AuthenticatorId
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.WebAuthn {
  /// - description: This domain allows configuring virtual authenticators to test the WebAuthn
  /// API.
  /// - intention: This is an experimental property.
  public struct removeVirtualAuthenticator: ModelMethod {
    public typealias Model = SwiftCDPDomains.WebAuthn
    public static let name = "removeVirtualAuthenticator"
    
    public var authenticatorId: AuthenticatorId
    
    public init(authenticatorId: AuthenticatorId) {
      self.authenticatorId = authenticatorId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.WebAuthn {
  /// - description: This domain allows configuring virtual authenticators to test the WebAuthn
  /// API.
  /// - intention: This is an experimental property.
  public struct addCredential: ModelMethod {
    public typealias Model = SwiftCDPDomains.WebAuthn
    public static let name = "addCredential"
    
    public var authenticatorId: AuthenticatorId
    
    public var credential: Credential
    
    public init(authenticatorId: AuthenticatorId, credential: Credential) {
      self.authenticatorId = authenticatorId
      self.credential = credential
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.WebAuthn {
  /// - description: This domain allows configuring virtual authenticators to test the WebAuthn
  /// API.
  /// - intention: This is an experimental property.
  public struct getCredential: ModelMethod {
    public typealias Model = SwiftCDPDomains.WebAuthn
    public static let name = "getCredential"
    
    public var authenticatorId: AuthenticatorId
    
    public var credentialId: String
    
    public init(authenticatorId: AuthenticatorId, credentialId: String) {
      self.authenticatorId = authenticatorId
      self.credentialId = credentialId
    }
    
    public struct Result: Decodable {
      public var credential: Credential
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.WebAuthn {
  /// - description: This domain allows configuring virtual authenticators to test the WebAuthn
  /// API.
  /// - intention: This is an experimental property.
  public struct getCredentials: ModelMethod {
    public typealias Model = SwiftCDPDomains.WebAuthn
    public static let name = "getCredentials"
    
    public var authenticatorId: AuthenticatorId
    
    public init(authenticatorId: AuthenticatorId) {
      self.authenticatorId = authenticatorId
    }
    
    public struct Result: Decodable {
      public var credentials: [Credential]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.WebAuthn {
  /// - description: This domain allows configuring virtual authenticators to test the WebAuthn
  /// API.
  /// - intention: This is an experimental property.
  public struct removeCredential: ModelMethod {
    public typealias Model = SwiftCDPDomains.WebAuthn
    public static let name = "removeCredential"
    
    public var authenticatorId: AuthenticatorId
    
    public var credentialId: String
    
    public init(authenticatorId: AuthenticatorId, credentialId: String) {
      self.authenticatorId = authenticatorId
      self.credentialId = credentialId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.WebAuthn {
  /// - description: This domain allows configuring virtual authenticators to test the WebAuthn
  /// API.
  /// - intention: This is an experimental property.
  public struct clearCredentials: ModelMethod {
    public typealias Model = SwiftCDPDomains.WebAuthn
    public static let name = "clearCredentials"
    
    public var authenticatorId: AuthenticatorId
    
    public init(authenticatorId: AuthenticatorId) {
      self.authenticatorId = authenticatorId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.WebAuthn {
  /// - description: This domain allows configuring virtual authenticators to test the WebAuthn
  /// API.
  /// - intention: This is an experimental property.
  public struct setUserVerified: ModelMethod {
    public typealias Model = SwiftCDPDomains.WebAuthn
    public static let name = "setUserVerified"
    
    public var authenticatorId: AuthenticatorId
    
    public var isUserVerified: Bool
    
    public init(authenticatorId: AuthenticatorId, isUserVerified: Bool) {
      self.authenticatorId = authenticatorId
      self.isUserVerified = isUserVerified
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.WebAuthn {
  /// - description: This domain allows configuring virtual authenticators to test the WebAuthn
  /// API.
  /// - intention: This is an experimental property.
  public struct setAutomaticPresenceSimulation: ModelMethod {
    public typealias Model = SwiftCDPDomains.WebAuthn
    public static let name = "setAutomaticPresenceSimulation"
    
    public var authenticatorId: AuthenticatorId
    
    public var enabled: Bool
    
    public init(authenticatorId: AuthenticatorId, enabled: Bool) {
      self.authenticatorId = authenticatorId
      self.enabled = enabled
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

