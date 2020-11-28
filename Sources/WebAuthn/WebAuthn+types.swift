import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "WebAuthn"

extension SwiftCDPDomains.WebAuthn {
  /// - see: https://vanilla.aslushnikov.com/?WebAuthn.AuthenticatorId
  public struct AuthenticatorId: Codable {
    private var rawValue: String
    
    public init(from decoder: Decoder) throws {
      self.rawValue = try decoder.singleValueContainer().decode(String.self)
    }
    
    public func encode(to encoder: Encoder) throws {
      var container = encoder.singleValueContainer()
      try container.encode(rawValue)
    }
  }
}

extension SwiftCDPDomains.WebAuthn {
  /// - see: https://vanilla.aslushnikov.com/?WebAuthn.AuthenticatorProtocol
  /// - choices: ["u2f", "ctap2"]
  public typealias AuthenticatorProtocol = String
}

extension SwiftCDPDomains.WebAuthn {
  /// - see: https://vanilla.aslushnikov.com/?WebAuthn.Ctap2Version
  /// - choices: ["ctap2_0", "ctap2_1"]
  public typealias Ctap2Version = String
}

extension SwiftCDPDomains.WebAuthn {
  /// - see: https://vanilla.aslushnikov.com/?WebAuthn.AuthenticatorTransport
  /// - choices: ["usb", "nfc", "ble", "cable", "internal"]
  public typealias AuthenticatorTransport = String
}

extension SwiftCDPDomains.WebAuthn {
  /// - see: https://vanilla.aslushnikov.com/?WebAuthn.VirtualAuthenticatorOptions
  public struct VirtualAuthenticatorOptions: Codable {
    public var `protocol`: AuthenticatorProtocol
    
    /// - description: Defaults to ctap2_0. Ignored if |protocol| == u2f.
    public var ctap2Version: Ctap2Version?
    
    public var transport: AuthenticatorTransport
    
    /// - description: Defaults to false.
    public var hasResidentKey: Bool?
    
    /// - description: Defaults to false.
    public var hasUserVerification: Bool?
    
    /// - description: If set to true, the authenticator will support the largeBlob extension.
    /// https://w3c.github.io/webauthn#largeBlob
    /// Defaults to false.
    public var hasLargeBlob: Bool?
    
    /// - description: If set to true, tests of user presence will succeed immediately.
    /// Otherwise, they will not be resolved. Defaults to true.
    public var automaticPresenceSimulation: Bool?
    
    /// - description: Sets whether User Verification succeeds or fails for an authenticator.
    /// Defaults to false.
    public var isUserVerified: Bool?
    
  }
}

extension SwiftCDPDomains.WebAuthn {
  /// - see: https://vanilla.aslushnikov.com/?WebAuthn.Credential
  public struct Credential: Codable {
    public var credentialId: String
    
    public var isResidentCredential: Bool
    
    /// - description: Relying Party ID the credential is scoped to. Must be set when adding a
    /// credential.
    public var rpId: String?
    
    /// - description: The ECDSA P-256 private key in PKCS#8 format.
    public var privateKey: String
    
    /// - description: An opaque byte sequence with a maximum size of 64 bytes mapping the
    /// credential to a specific user.
    public var userHandle: String?
    
    /// - description: Signature counter. This is incremented by one for each successful
    /// assertion.
    /// See https://w3c.github.io/webauthn/#signature-counter
    public var signCount: Int
    
    /// - description: The large blob associated with the credential.
    /// See https://w3c.github.io/webauthn/#sctn-large-blob-extension
    public var largeBlob: String?
    
  }
}

