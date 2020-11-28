import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "Network"

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.ResourceType
  /// - description: Resource type as it was perceived by the rendering engine.
  /// - choices: ["Document", "Stylesheet", "Image", "Media", "Font", "Script", "TextTrack", "XHR", "Fetch", "EventSource", "WebSocket", "Manifest", "SignedExchange", "Ping", "CSPViolationReport", "Preflight", "Other"]
  public typealias ResourceType = String
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.LoaderId
  /// - description: Unique loader identifier.
  public struct LoaderId: Codable {
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

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.RequestId
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

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.InterceptionId
  /// - description: Unique intercepted request identifier.
  public struct InterceptionId: Codable {
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

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.ErrorReason
  /// - description: Network level fetch failure reason.
  /// - choices: ["Failed", "Aborted", "TimedOut", "AccessDenied", "ConnectionClosed", "ConnectionReset", "ConnectionRefused", "ConnectionAborted", "ConnectionFailed", "NameNotResolved", "InternetDisconnected", "AddressUnreachable", "BlockedByClient", "BlockedByResponse"]
  public typealias ErrorReason = String
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.TimeSinceEpoch
  /// - description: UTC time in seconds, counted from January 1, 1970.
  public typealias TimeSinceEpoch = JsonNumber
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.MonotonicTime
  /// - description: Monotonically increasing time in seconds since an arbitrary point in the past.
  public typealias MonotonicTime = JsonNumber
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.Headers
  /// - description: Request / response headers as keys / values of JSON object.
  public struct Headers: Codable {
  }
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.ConnectionType
  /// - description: The underlying connection technology that the browser is supposedly using.
  /// - choices: ["none", "cellular2g", "cellular3g", "cellular4g", "bluetooth", "ethernet", "wifi", "wimax", "other"]
  public typealias ConnectionType = String
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.CookieSameSite
  /// - description: Represents the cookie's 'SameSite' status:
  /// https://tools.ietf.org/html/draft-west-first-party-cookies
  /// - choices: ["Strict", "Lax", "None"]
  public typealias CookieSameSite = String
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.CookiePriority
  /// - description: Represents the cookie's 'Priority' status:
  /// https://tools.ietf.org/html/draft-west-cookie-priority-00
  /// - choices: ["Low", "Medium", "High"]
  public typealias CookiePriority = String
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.ResourceTiming
  /// - description: Timing information for the request.
  public struct ResourceTiming: Codable {
    /// - description: Timing's requestTime is a baseline in seconds, while the other numbers are ticks in
    /// milliseconds relatively to this requestTime.
    public var requestTime: JsonNumber
    
    /// - description: Started resolving proxy.
    public var proxyStart: JsonNumber
    
    /// - description: Finished resolving proxy.
    public var proxyEnd: JsonNumber
    
    /// - description: Started DNS address resolve.
    public var dnsStart: JsonNumber
    
    /// - description: Finished DNS address resolve.
    public var dnsEnd: JsonNumber
    
    /// - description: Started connecting to the remote host.
    public var connectStart: JsonNumber
    
    /// - description: Connected to the remote host.
    public var connectEnd: JsonNumber
    
    /// - description: Started SSL handshake.
    public var sslStart: JsonNumber
    
    /// - description: Finished SSL handshake.
    public var sslEnd: JsonNumber
    
    /// - description: Started running ServiceWorker.
    /// - intention: This is an experimental property.
    public var workerStart: JsonNumber
    
    /// - description: Finished Starting ServiceWorker.
    /// - intention: This is an experimental property.
    public var workerReady: JsonNumber
    
    /// - description: Started fetch event.
    /// - intention: This is an experimental property.
    public var workerFetchStart: JsonNumber
    
    /// - description: Settled fetch event respondWith promise.
    /// - intention: This is an experimental property.
    public var workerRespondWithSettled: JsonNumber
    
    /// - description: Started sending request.
    public var sendStart: JsonNumber
    
    /// - description: Finished sending request.
    public var sendEnd: JsonNumber
    
    /// - description: Time the server started pushing request.
    /// - intention: This is an experimental property.
    public var pushStart: JsonNumber
    
    /// - description: Time the server finished pushing request.
    /// - intention: This is an experimental property.
    public var pushEnd: JsonNumber
    
    /// - description: Finished receiving response headers.
    public var receiveHeadersEnd: JsonNumber
    
  }
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.ResourcePriority
  /// - description: Loading priority of a resource request.
  /// - choices: ["VeryLow", "Low", "Medium", "High", "VeryHigh"]
  public typealias ResourcePriority = String
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.PostDataEntry
  /// - description: Post data entry for HTTP request
  public struct PostDataEntry: Codable {
    public var bytes: String?
    
  }
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.Request
  /// - description: HTTP request data.
  public struct Request: Codable {
    /// - description: Request URL (without fragment).
    public var url: String
    
    /// - description: Fragment of the requested URL starting with hash, if present.
    public var urlFragment: String?
    
    /// - description: HTTP request method.
    public var method: String
    
    /// - description: HTTP request headers.
    public var headers: Headers
    
    /// - description: HTTP POST request data.
    public var postData: String?
    
    /// - description: True when the request has POST data. Note that postData might still be omitted when this flag is true when the data is too long.
    public var hasPostData: Bool?
    
    /// - description: Request body elements. This will be converted from base64 to binary
    /// - intention: This is an experimental property.
    public var postDataEntries: [PostDataEntry]?
    
    /// - description: The mixed content type of the request.
    public var mixedContentType: SwiftCDPDomains.Security.MixedContentType?
    
    /// - description: Priority of the resource request at the time request is sent.
    public var initialPriority: ResourcePriority
    
    /// - description: The referrer policy of the request, as defined in https://www.w3.org/TR/referrer-policy/
    public var referrerPolicy: String
    
    /// - description: Whether is loaded via link preload.
    public var isLinkPreload: Bool?
    
    /// - description: Set for requests when the TrustToken API is used. Contains the parameters
    /// passed by the developer (e.g. via "fetch") as understood by the backend.
    /// - intention: This is an experimental property.
    public var trustTokenParams: TrustTokenParams?
    
  }
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.SignedCertificateTimestamp
  /// - description: Details of a signed certificate timestamp (SCT).
  public struct SignedCertificateTimestamp: Codable {
    /// - description: Validation status.
    public var status: String
    
    /// - description: Origin.
    public var origin: String
    
    /// - description: Log name / description.
    public var logDescription: String
    
    /// - description: Log ID.
    public var logId: String
    
    /// - description: Issuance date.
    public var timestamp: TimeSinceEpoch
    
    /// - description: Hash algorithm.
    public var hashAlgorithm: String
    
    /// - description: Signature algorithm.
    public var signatureAlgorithm: String
    
    /// - description: Signature data.
    public var signatureData: String
    
  }
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.SecurityDetails
  /// - description: Security details about a request.
  public struct SecurityDetails: Codable {
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
    
    /// - description: Certificate ID value.
    public var certificateId: SwiftCDPDomains.Security.CertificateId
    
    /// - description: Certificate subject name.
    public var subjectName: String
    
    /// - description: Subject Alternative Name (SAN) DNS names and IP addresses.
    public var sanList: [String]
    
    /// - description: Name of the issuing CA.
    public var issuer: String
    
    /// - description: Certificate valid from date.
    public var validFrom: TimeSinceEpoch
    
    /// - description: Certificate valid to (expiration) date
    public var validTo: TimeSinceEpoch
    
    /// - description: List of signed certificate timestamps (SCTs).
    public var signedCertificateTimestampList: [SignedCertificateTimestamp]
    
    /// - description: Whether the request complied with Certificate Transparency policy
    public var certificateTransparencyCompliance: CertificateTransparencyCompliance
    
  }
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.CertificateTransparencyCompliance
  /// - description: Whether the request complied with Certificate Transparency policy.
  /// - choices: ["unknown", "not-compliant", "compliant"]
  public typealias CertificateTransparencyCompliance = String
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.BlockedReason
  /// - description: The reason why request was blocked.
  /// - choices: ["other", "csp", "mixed-content", "origin", "inspector", "subresource-filter", "content-type", "collapsed-by-client", "coep-frame-resource-needs-coep-header", "coop-sandboxed-iframe-cannot-navigate-to-coop-page", "corp-not-same-origin", "corp-not-same-origin-after-defaulted-to-same-origin-by-coep", "corp-not-same-site"]
  public typealias BlockedReason = String
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.CorsError
  /// - description: The reason why request was blocked.
  /// - choices: ["DisallowedByMode", "InvalidResponse", "WildcardOriginNotAllowed", "MissingAllowOriginHeader", "MultipleAllowOriginValues", "InvalidAllowOriginValue", "AllowOriginMismatch", "InvalidAllowCredentials", "CorsDisabledScheme", "PreflightInvalidStatus", "PreflightDisallowedRedirect", "PreflightWildcardOriginNotAllowed", "PreflightMissingAllowOriginHeader", "PreflightMultipleAllowOriginValues", "PreflightInvalidAllowOriginValue", "PreflightAllowOriginMismatch", "PreflightInvalidAllowCredentials", "PreflightMissingAllowExternal", "PreflightInvalidAllowExternal", "InvalidAllowMethodsPreflightResponse", "InvalidAllowHeadersPreflightResponse", "MethodDisallowedByPreflightResponse", "HeaderDisallowedByPreflightResponse", "RedirectContainsCredentials", "InsecurePrivateNetwork"]
  public typealias CorsError = String
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.CorsErrorStatus
  public struct CorsErrorStatus: Codable {
    public var corsError: CorsError
    
    public var failedParameter: String
    
  }
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.ServiceWorkerResponseSource
  /// - description: Source of serviceworker response.
  /// - choices: ["cache-storage", "http-cache", "fallback-code", "network"]
  public typealias ServiceWorkerResponseSource = String
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.TrustTokenParams
  /// - description: Determines what type of Trust Token operation is executed and
  /// depending on the type, some additional parameters. The values
  /// are specified in third_party/blink/renderer/core/fetch/trust_token.idl.
  public struct TrustTokenParams: Codable {
    public var type: TrustTokenOperationType
    
    /// - description: Only set for "token-redemption" type and determine whether
    /// to request a fresh SRR or use a still valid cached SRR.
    public var refreshPolicy: String
    
    /// - description: Origins of issuers from whom to request tokens or redemption
    /// records.
    public var issuers: [String]?
    
  }
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.TrustTokenOperationType
  /// - choices: ["Issuance", "Redemption", "Signing"]
  public typealias TrustTokenOperationType = String
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.Response
  /// - description: HTTP response data.
  public struct Response: Codable {
    /// - description: Response URL. This URL can be different from CachedResource.url in case of redirect.
    public var url: String
    
    /// - description: HTTP response status code.
    public var status: Int
    
    /// - description: HTTP response status text.
    public var statusText: String
    
    /// - description: HTTP response headers.
    public var headers: Headers
    
    /// - description: HTTP response headers text.
    public var headersText: String?
    
    /// - description: Resource mimeType as determined by the browser.
    public var mimeType: String
    
    /// - description: Refined HTTP request headers that were actually transmitted over the network.
    public var requestHeaders: Headers?
    
    /// - description: HTTP request headers text.
    public var requestHeadersText: String?
    
    /// - description: Specifies whether physical connection was actually reused for this request.
    public var connectionReused: Bool
    
    /// - description: Physical connection id that was actually used for this request.
    public var connectionId: JsonNumber
    
    /// - description: Remote IP address.
    public var remoteIPAddress: String?
    
    /// - description: Remote port.
    public var remotePort: Int?
    
    /// - description: Specifies that the request was served from the disk cache.
    public var fromDiskCache: Bool?
    
    /// - description: Specifies that the request was served from the ServiceWorker.
    public var fromServiceWorker: Bool?
    
    /// - description: Specifies that the request was served from the prefetch cache.
    public var fromPrefetchCache: Bool?
    
    /// - description: Total number of bytes received for this request so far.
    public var encodedDataLength: JsonNumber
    
    /// - description: Timing information for the given request.
    public var timing: ResourceTiming?
    
    /// - description: Response source of response from ServiceWorker.
    public var serviceWorkerResponseSource: ServiceWorkerResponseSource?
    
    /// - description: The time at which the returned response was generated.
    public var responseTime: TimeSinceEpoch?
    
    /// - description: Cache Storage Cache Name.
    public var cacheStorageCacheName: String?
    
    /// - description: Protocol used to fetch this request.
    public var `protocol`: String?
    
    /// - description: Security state of the request resource.
    public var securityState: SwiftCDPDomains.Security.SecurityState
    
    /// - description: Security details for the request.
    public var securityDetails: SecurityDetails?
    
  }
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.WebSocketRequest
  /// - description: WebSocket request data.
  public struct WebSocketRequest: Codable {
    /// - description: HTTP request headers.
    public var headers: Headers
    
  }
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.WebSocketResponse
  /// - description: WebSocket response data.
  public struct WebSocketResponse: Codable {
    /// - description: HTTP response status code.
    public var status: Int
    
    /// - description: HTTP response status text.
    public var statusText: String
    
    /// - description: HTTP response headers.
    public var headers: Headers
    
    /// - description: HTTP response headers text.
    public var headersText: String?
    
    /// - description: HTTP request headers.
    public var requestHeaders: Headers?
    
    /// - description: HTTP request headers text.
    public var requestHeadersText: String?
    
  }
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.WebSocketFrame
  /// - description: WebSocket message data. This represents an entire WebSocket message, not just a fragmented frame as the name suggests.
  public struct WebSocketFrame: Codable {
    /// - description: WebSocket message opcode.
    public var opcode: JsonNumber
    
    /// - description: WebSocket message mask.
    public var mask: Bool
    
    /// - description: WebSocket message payload data.
    /// If the opcode is 1, this is a text message and payloadData is a UTF-8 string.
    /// If the opcode isn't 1, then payloadData is a base64 encoded string representing binary data.
    public var payloadData: String
    
  }
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.CachedResource
  /// - description: Information about the cached resource.
  public struct CachedResource: Codable {
    /// - description: Resource URL. This is the url of the original network request.
    public var url: String
    
    /// - description: Type of this resource.
    public var type: ResourceType
    
    /// - description: Cached response data.
    public var response: Response?
    
    /// - description: Cached response body size.
    public var bodySize: JsonNumber
    
  }
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.Initiator
  /// - description: Information about the request initiator.
  public struct Initiator: Codable {
    /// - description: Type of this initiator.
    public var type: String
    
    /// - description: Initiator JavaScript stack trace, set for Script only.
    public var stack: SwiftCDPDomains.Runtime.StackTrace?
    
    /// - description: Initiator URL, set for Parser type or for Script type (when script is importing module) or for SignedExchange type.
    public var url: String?
    
    /// - description: Initiator line number, set for Parser type or for Script type (when script is importing
    /// module) (0-based).
    public var lineNumber: JsonNumber?
    
    /// - description: Initiator column number, set for Parser type or for Script type (when script is importing
    /// module) (0-based).
    public var columnNumber: JsonNumber?
    
    /// - description: Set if another request triggered this request (e.g. preflight).
    public var requestId: RequestId?
    
  }
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.Cookie
  /// - description: Cookie object
  public struct Cookie: Codable {
    /// - description: Cookie name.
    public var name: String
    
    /// - description: Cookie value.
    public var value: String
    
    /// - description: Cookie domain.
    public var domain: String
    
    /// - description: Cookie path.
    public var path: String
    
    /// - description: Cookie expiration date as the number of seconds since the UNIX epoch.
    public var expires: JsonNumber
    
    /// - description: Cookie size.
    public var size: Int
    
    /// - description: True if cookie is http-only.
    public var httpOnly: Bool
    
    /// - description: True if cookie is secure.
    public var secure: Bool
    
    /// - description: True in case of session cookie.
    public var session: Bool
    
    /// - description: Cookie SameSite type.
    public var sameSite: CookieSameSite?
    
    /// - description: Cookie Priority
    /// - intention: This is an experimental property.
    public var priority: CookiePriority
    
  }
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.SetCookieBlockedReason
  /// - description: Types of reasons why a cookie may not be stored from a response.
  /// - choices: ["SecureOnly", "SameSiteStrict", "SameSiteLax", "SameSiteUnspecifiedTreatedAsLax", "SameSiteNoneInsecure", "UserPreferences", "SyntaxError", "SchemeNotSupported", "OverwriteSecure", "InvalidDomain", "InvalidPrefix", "UnknownError", "SchemefulSameSiteStrict", "SchemefulSameSiteLax", "SchemefulSameSiteUnspecifiedTreatedAsLax"]
  public typealias SetCookieBlockedReason = String
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.CookieBlockedReason
  /// - description: Types of reasons why a cookie may not be sent with a request.
  /// - choices: ["SecureOnly", "NotOnPath", "DomainMismatch", "SameSiteStrict", "SameSiteLax", "SameSiteUnspecifiedTreatedAsLax", "SameSiteNoneInsecure", "UserPreferences", "UnknownError", "SchemefulSameSiteStrict", "SchemefulSameSiteLax", "SchemefulSameSiteUnspecifiedTreatedAsLax"]
  public typealias CookieBlockedReason = String
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.BlockedSetCookieWithReason
  /// - description: A cookie which was not stored from a response with the corresponding reason.
  public struct BlockedSetCookieWithReason: Codable {
    /// - description: The reason(s) this cookie was blocked.
    public var blockedReasons: [SetCookieBlockedReason]
    
    /// - description: The string representing this individual cookie as it would appear in the header.
    /// This is not the entire "cookie" or "set-cookie" header which could have multiple cookies.
    public var cookieLine: String
    
    /// - description: The cookie object which represents the cookie which was not stored. It is optional because
    /// sometimes complete cookie information is not available, such as in the case of parsing
    /// errors.
    public var cookie: Cookie?
    
  }
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.BlockedCookieWithReason
  /// - description: A cookie with was not sent with a request with the corresponding reason.
  public struct BlockedCookieWithReason: Codable {
    /// - description: The reason(s) the cookie was blocked.
    public var blockedReasons: [CookieBlockedReason]
    
    /// - description: The cookie object representing the cookie which was not sent.
    public var cookie: Cookie
    
  }
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.CookieParam
  /// - description: Cookie parameter object
  public struct CookieParam: Codable {
    /// - description: Cookie name.
    public var name: String
    
    /// - description: Cookie value.
    public var value: String
    
    /// - description: The request-URI to associate with the setting of the cookie. This value can affect the
    /// default domain and path values of the created cookie.
    public var url: String?
    
    /// - description: Cookie domain.
    public var domain: String?
    
    /// - description: Cookie path.
    public var path: String?
    
    /// - description: True if cookie is secure.
    public var secure: Bool?
    
    /// - description: True if cookie is http-only.
    public var httpOnly: Bool?
    
    /// - description: Cookie SameSite type.
    public var sameSite: CookieSameSite?
    
    /// - description: Cookie expiration date, session cookie if not set
    public var expires: TimeSinceEpoch?
    
    /// - description: Cookie Priority.
    /// - intention: This is an experimental property.
    public var priority: CookiePriority?
    
  }
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.AuthChallenge
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

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.AuthChallengeResponse
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

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.InterceptionStage
  /// - description: Stages of the interception to begin intercepting. Request will intercept before the request is
  /// sent. Response will intercept after the response is received.
  /// - choices: ["Request", "HeadersReceived"]
  public typealias InterceptionStage = String
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.RequestPattern
  /// - description: Request pattern for interception.
  public struct RequestPattern: Codable {
    /// - description: Wildcards ('*' -> zero or more, '?' -> exactly one) are allowed. Escape character is
    /// backslash. Omitting is equivalent to "*".
    public var urlPattern: String?
    
    /// - description: If set, only requests for matching resource types will be intercepted.
    public var resourceType: ResourceType?
    
    /// - description: Stage at wich to begin intercepting requests. Default is Request.
    public var interceptionStage: InterceptionStage?
    
  }
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.SignedExchangeSignature
  /// - description: Information about a signed exchange signature.
  /// https://wicg.github.io/webpackage/draft-yasskin-httpbis-origin-signed-exchanges-impl.html#rfc.section.3.1
  public struct SignedExchangeSignature: Codable {
    /// - description: Signed exchange signature label.
    public var label: String
    
    /// - description: The hex string of signed exchange signature.
    public var signature: String
    
    /// - description: Signed exchange signature integrity.
    public var integrity: String
    
    /// - description: Signed exchange signature cert Url.
    public var certUrl: String?
    
    /// - description: The hex string of signed exchange signature cert sha256.
    public var certSha256: String?
    
    /// - description: Signed exchange signature validity Url.
    public var validityUrl: String
    
    /// - description: Signed exchange signature date.
    public var date: Int
    
    /// - description: Signed exchange signature expires.
    public var expires: Int
    
    /// - description: The encoded certificates.
    public var certificates: [String]?
    
  }
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.SignedExchangeHeader
  /// - description: Information about a signed exchange header.
  /// https://wicg.github.io/webpackage/draft-yasskin-httpbis-origin-signed-exchanges-impl.html#cbor-representation
  public struct SignedExchangeHeader: Codable {
    /// - description: Signed exchange request URL.
    public var requestUrl: String
    
    /// - description: Signed exchange response code.
    public var responseCode: Int
    
    /// - description: Signed exchange response headers.
    public var responseHeaders: Headers
    
    /// - description: Signed exchange response signature.
    public var signatures: [SignedExchangeSignature]
    
    /// - description: Signed exchange header integrity hash in the form of "sha256-<base64-hash-value>".
    public var headerIntegrity: String
    
  }
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.SignedExchangeErrorField
  /// - description: Field type for a signed exchange related error.
  /// - choices: ["signatureSig", "signatureIntegrity", "signatureCertUrl", "signatureCertSha256", "signatureValidityUrl", "signatureTimestamps"]
  public typealias SignedExchangeErrorField = String
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.SignedExchangeError
  /// - description: Information about a signed exchange response.
  public struct SignedExchangeError: Codable {
    /// - description: Error message.
    public var message: String
    
    /// - description: The index of the signature which caused the error.
    public var signatureIndex: Int?
    
    /// - description: The field which caused the error.
    public var errorField: SignedExchangeErrorField?
    
  }
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.SignedExchangeInfo
  /// - description: Information about a signed exchange response.
  public struct SignedExchangeInfo: Codable {
    /// - description: The outer response of signed HTTP exchange which was received from network.
    public var outerResponse: Response
    
    /// - description: Information about the signed exchange header.
    public var header: SignedExchangeHeader?
    
    /// - description: Security details for the signed exchange header.
    public var securityDetails: SecurityDetails?
    
    /// - description: Errors occurred while handling the signed exchagne.
    public var errors: [SignedExchangeError]?
    
  }
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.PrivateNetworkRequestPolicy
  /// - choices: ["Allow", "BlockFromInsecureToMorePrivate"]
  public typealias PrivateNetworkRequestPolicy = String
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.IPAddressSpace
  /// - choices: ["Local", "Private", "Public", "Unknown"]
  public typealias IPAddressSpace = String
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.ClientSecurityState
  public struct ClientSecurityState: Codable {
    public var initiatorIsSecureContext: Bool
    
    public var initiatorIPAddressSpace: IPAddressSpace
    
    public var privateNetworkRequestPolicy: PrivateNetworkRequestPolicy
    
  }
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.CrossOriginOpenerPolicyValue
  /// - choices: ["SameOrigin", "SameOriginAllowPopups", "UnsafeNone", "SameOriginPlusCoep"]
  public typealias CrossOriginOpenerPolicyValue = String
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.CrossOriginOpenerPolicyStatus
  public struct CrossOriginOpenerPolicyStatus: Codable {
    public var value: CrossOriginOpenerPolicyValue
    
    public var reportOnlyValue: CrossOriginOpenerPolicyValue
    
    public var reportingEndpoint: String?
    
    public var reportOnlyReportingEndpoint: String?
    
  }
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.CrossOriginEmbedderPolicyValue
  /// - choices: ["None", "RequireCorp"]
  public typealias CrossOriginEmbedderPolicyValue = String
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.CrossOriginEmbedderPolicyStatus
  public struct CrossOriginEmbedderPolicyStatus: Codable {
    public var value: CrossOriginEmbedderPolicyValue
    
    public var reportOnlyValue: CrossOriginEmbedderPolicyValue
    
    public var reportingEndpoint: String?
    
    public var reportOnlyReportingEndpoint: String?
    
  }
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.SecurityIsolationStatus
  public struct SecurityIsolationStatus: Codable {
    public var coop: CrossOriginOpenerPolicyStatus?
    
    public var coep: CrossOriginEmbedderPolicyStatus?
    
  }
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.LoadNetworkResourcePageResult
  /// - description: An object providing the result of a network resource load.
  public struct LoadNetworkResourcePageResult: Codable {
    public var success: Bool
    
    /// - description: Optional values used for error reporting.
    public var netError: JsonNumber?
    
    public var netErrorName: String?
    
    public var httpStatusCode: JsonNumber?
    
    /// - description: If successful, one of the following two fields holds the result.
    public var stream: SwiftCDPDomains.IO.StreamHandle?
    
    /// - description: Response headers.
    public var headers: SwiftCDPDomains.Network.Headers?
    
  }
}

extension SwiftCDPDomains.Network {
  /// - see: https://vanilla.aslushnikov.com/?Network.LoadNetworkResourceOptions
  /// - description: An options object that may be extended later to better support CORS,
  /// CORB and streaming.
  public struct LoadNetworkResourceOptions: Codable {
    public var disableCache: Bool
    
    public var includeCredentials: Bool
    
  }
}

