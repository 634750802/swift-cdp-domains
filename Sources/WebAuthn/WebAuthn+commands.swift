import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "WebAuthn"

extension SwiftCDPDomains.WebAuthn {
  /// - description: Enable the WebAuthn domain and start intercepting credential storage and
  /// retrieval with a virtual authenticator.
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
  /// - description: Disable the WebAuthn domain.
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
  /// - description: Creates and adds a virtual authenticator.
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
  /// - description: Removes the given authenticator.
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
  /// - description: Adds the credential to the specified authenticator.
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
  /// - description: Returns a single credential stored in the given virtual authenticator that
  /// matches the credential ID.
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
  /// - description: Returns all the credentials stored in the given virtual authenticator.
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
  /// - description: Removes a credential from the authenticator.
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
  /// - description: Clears all the credentials from the specified device.
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
  /// - description: Sets whether User Verification succeeds or fails for an authenticator.
  /// The default is true.
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
  /// - description: Sets whether tests of user presence will succeed immediately (if true) or fail to resolve (if false) for an authenticator.
  /// The default is true.
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

