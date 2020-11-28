import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "Fetch"

extension SwiftCDPDomains.Fetch {
  /// - see: https://vanilla.aslushnikov.com/?Fetch.RequestId
  /// - description: Unique request identifier.
  public struct RequestId: Codable {
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

extension SwiftCDPDomains.Fetch {
  /// - see: https://vanilla.aslushnikov.com/?Fetch.RequestStage
  /// - description: Stages of the request to handle. Request will intercept before the request is
  /// sent. Response will intercept after the response is received (but before response
  /// body is received.
  /// - choices: ["Request", "Response"]
  public typealias RequestStage = String
}

extension SwiftCDPDomains.Fetch {
  /// - see: https://vanilla.aslushnikov.com/?Fetch.RequestPattern
  public struct RequestPattern: Codable {
    /// - description: Wildcards ('*' -> zero or more, '?' -> exactly one) are allowed. Escape character is
    /// backslash. Omitting is equivalent to "*".
    public var urlPattern: String?
    
    /// - description: If set, only requests for matching resource types will be intercepted.
    public var resourceType: SwiftCDPDomains.Network.ResourceType?
    
    /// - description: Stage at wich to begin intercepting requests. Default is Request.
    public var requestStage: RequestStage?
    
  }
}

extension SwiftCDPDomains.Fetch {
  /// - see: https://vanilla.aslushnikov.com/?Fetch.HeaderEntry
  /// - description: Response HTTP header entry
  public struct HeaderEntry: Codable {
    public var name: String
    
    public var value: String
    
  }
}

extension SwiftCDPDomains.Fetch {
  /// - see: https://vanilla.aslushnikov.com/?Fetch.AuthChallenge
  /// - description: Authorization challenge for HTTP status code 401 or 407.
  public struct AuthChallenge: Codable {
    /// - description: Source of the authentication challenge.
    public var source: String?
    
    /// - description: Origin of the challenger.
    public var origin: String
    
    /// - description: The authentication scheme used, such as basic or digest
    public var scheme: String
    
    /// - description: The realm of the challenge. May be empty.
    public var realm: String
    
  }
}

extension SwiftCDPDomains.Fetch {
  /// - see: https://vanilla.aslushnikov.com/?Fetch.AuthChallengeResponse
  /// - description: Response to an AuthChallenge.
  public struct AuthChallengeResponse: Codable {
    /// - description: The decision on what to do in response to the authorization challenge.  Default means
    /// deferring to the default behavior of the net stack, which will likely either the Cancel
    /// authentication or display a popup dialog box.
    public var response: String
    
    /// - description: The username to provide, possibly empty. Should only be set if response is
    /// ProvideCredentials.
    public var username: String?
    
    /// - description: The password to provide, possibly empty. Should only be set if response is
    /// ProvideCredentials.
    public var password: String?
    
  }
}

