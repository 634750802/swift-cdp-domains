import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "Security"

extension SwiftCDPDomains.Security {
  /// - see: https://vanilla.aslushnikov.com/?Security.CertificateId
  /// - description: An internal certificate ID value.
  public struct CertificateId: Codable {
    private var rawValue: Int
    
    public init(from decoder: Decoder) throws {
      self.rawValue = try decoder.singleValueContainer().decode(Int.self)
    }
    
    public func encode(to encoder: Encoder) throws {
      var container = encoder.singleValueContainer()
      try container.encode(rawValue)
    }
  }
}

extension SwiftCDPDomains.Security {
  /// - see: https://vanilla.aslushnikov.com/?Security.MixedContentType
  /// - description: A description of mixed content (HTTP resources on HTTPS pages), as defined by
  /// https://www.w3.org/TR/mixed-content/#categories
  /// - choices: ["blockable", "optionally-blockable", "none"]
  public typealias MixedContentType = String
}

extension SwiftCDPDomains.Security {
  /// - see: https://vanilla.aslushnikov.com/?Security.SecurityState
  /// - description: The security level of a page or resource.
  /// - choices: ["unknown", "neutral", "insecure", "secure", "info", "insecure-broken"]
  public typealias SecurityState = String
}

extension SwiftCDPDomains.Security {
  /// - see: https://vanilla.aslushnikov.com/?Security.CertificateSecurityState
  /// - description: Details about the security state of the page certificate.
  public struct CertificateSecurityState: Codable {
    /// - description: Protocol name (e.g. "TLS 1.2" or "QUIC").
    public var `protocol`: String
    
    /// - description: Key Exchange used by the connection, or the empty string if not applicable.
    public var keyExchange: String
    
    /// - description: (EC)DH group used by the connection, if applicable.
    public var keyExchangeGroup: String?
    
    /// - description: Cipher name.
    public var cipher: String
    
    /// - description: TLS MAC. Note that AEAD ciphers do not have separate MACs.
    public var mac: String?
    
    /// - description: Page certificate.
    public var certificate: [String]
    
    /// - description: Certificate subject name.
    public var subjectName: String
    
    /// - description: Name of the issuing CA.
    public var issuer: String
    
    /// - description: Certificate valid from date.
    public var validFrom: SwiftCDPDomains.Network.TimeSinceEpoch
    
    /// - description: Certificate valid to (expiration) date
    public var validTo: SwiftCDPDomains.Network.TimeSinceEpoch
    
    /// - description: The highest priority network error code, if the certificate has an error.
    public var certificateNetworkError: String?
    
    /// - description: True if the certificate uses a weak signature aglorithm.
    public var certificateHasWeakSignature: Bool
    
    /// - description: True if the certificate has a SHA1 signature in the chain.
    public var certificateHasSha1Signature: Bool
    
    /// - description: True if modern SSL
    public var modernSSL: Bool
    
    /// - description: True if the connection is using an obsolete SSL protocol.
    public var obsoleteSslProtocol: Bool
    
    /// - description: True if the connection is using an obsolete SSL key exchange.
    public var obsoleteSslKeyExchange: Bool
    
    /// - description: True if the connection is using an obsolete SSL cipher.
    public var obsoleteSslCipher: Bool
    
    /// - description: True if the connection is using an obsolete SSL signature.
    public var obsoleteSslSignature: Bool
    
  }
}

extension SwiftCDPDomains.Security {
  /// - see: https://vanilla.aslushnikov.com/?Security.SafetyTipStatus
  /// - choices: ["badReputation", "lookalike"]
  public typealias SafetyTipStatus = String
}

extension SwiftCDPDomains.Security {
  /// - see: https://vanilla.aslushnikov.com/?Security.SafetyTipInfo
  public struct SafetyTipInfo: Codable {
    /// - description: Describes whether the page triggers any safety tips or reputation warnings. Default is unknown.
    public var safetyTipStatus: SafetyTipStatus
    
    /// - description: The URL the safety tip suggested ("Did you mean?"). Only filled in for lookalike matches.
    public var safeUrl: String?
    
  }
}

extension SwiftCDPDomains.Security {
  /// - see: https://vanilla.aslushnikov.com/?Security.VisibleSecurityState
  /// - description: Security state information about the page.
  public struct VisibleSecurityState: Codable {
    /// - description: The security level of the page.
    public var securityState: SecurityState
    
    /// - description: Security state details about the page certificate.
    public var certificateSecurityState: CertificateSecurityState?
    
    /// - description: The type of Safety Tip triggered on the page. Note that this field will be set even if the Safety Tip UI was not actually shown.
    public var safetyTipInfo: SafetyTipInfo?
    
    /// - description: Array of security state issues ids.
    public var securityStateIssueIds: [String]
    
  }
}

extension SwiftCDPDomains.Security {
  /// - see: https://vanilla.aslushnikov.com/?Security.SecurityStateExplanation
  /// - description: An explanation of an factor contributing to the security state.
  public struct SecurityStateExplanation: Codable {
    /// - description: Security state representing the severity of the factor being explained.
    public var securityState: SecurityState
    
    /// - description: Title describing the type of factor.
    public var title: String
    
    /// - description: Short phrase describing the type of factor.
    public var summary: String
    
    /// - description: Full text explanation of the factor.
    public var description: String
    
    /// - description: The type of mixed content described by the explanation.
    public var mixedContentType: MixedContentType
    
    /// - description: Page certificate.
    public var certificate: [String]
    
    /// - description: Recommendations to fix any issues.
    public var recommendations: [String]?
    
  }
}

extension SwiftCDPDomains.Security {
  /// - see: https://vanilla.aslushnikov.com/?Security.InsecureContentStatus
  /// - description: Information about insecure content on the page.
  public struct InsecureContentStatus: Codable {
    /// - description: Always false.
    public var ranMixedContent: Bool
    
    /// - description: Always false.
    public var displayedMixedContent: Bool
    
    /// - description: Always false.
    public var containedMixedForm: Bool
    
    /// - description: Always false.
    public var ranContentWithCertErrors: Bool
    
    /// - description: Always false.
    public var displayedContentWithCertErrors: Bool
    
    /// - description: Always set to unknown.
    public var ranInsecureContentStyle: SecurityState
    
    /// - description: Always set to unknown.
    public var displayedInsecureContentStyle: SecurityState
    
  }
}

extension SwiftCDPDomains.Security {
  /// - see: https://vanilla.aslushnikov.com/?Security.CertificateErrorAction
  /// - description: The action to take when a certificate error occurs. continue will continue processing the
  /// request and cancel will cancel the request.
  /// - choices: ["continue", "cancel"]
  public typealias CertificateErrorAction = String
}

