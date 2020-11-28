import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Network"

extension SwiftCDPDomains.Network {
  /// - description: Tells whether clearing browser cache is supported.
  @available(*, deprecated)
  public struct canClearBrowserCache: ModelMethod {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "canClearBrowserCache"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: True if browser cache can be cleared.
      public var result: Bool
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Tells whether clearing browser cookies is supported.
  @available(*, deprecated)
  public struct canClearBrowserCookies: ModelMethod {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "canClearBrowserCookies"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: True if browser cookies can be cleared.
      public var result: Bool
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Tells whether emulation of network conditions is supported.
  @available(*, deprecated)
  public struct canEmulateNetworkConditions: ModelMethod {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "canEmulateNetworkConditions"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: True if emulation of network conditions is supported.
      public var result: Bool
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Clears browser cache.
  public struct clearBrowserCache: ModelMethod {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "clearBrowserCache"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Clears browser cookies.
  public struct clearBrowserCookies: ModelMethod {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "clearBrowserCookies"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Response to Network.requestIntercepted which either modifies the request to continue with any
  /// modifications, or blocks it, or completes it with the provided response bytes. If a network
  /// fetch occurs as a result which encounters a redirect an additional Network.requestIntercepted
  /// event will be sent with the same InterceptionId.
  /// Deprecated, use Fetch.continueRequest, Fetch.fulfillRequest and Fetch.failRequest instead.
  /// - intention: This is an experimental property.
  @available(*, deprecated)
  public struct continueInterceptedRequest: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "continueInterceptedRequest"
    
    public var interceptionId: InterceptionId
    
    /// - description: If set this causes the request to fail with the given reason. Passing `Aborted` for requests
    /// marked with `isNavigationRequest` also cancels the navigation. Must not be set in response
    /// to an authChallenge.
    public var errorReason: ErrorReason?
    
    /// - description: If set the requests completes using with the provided base64 encoded raw response, including
    /// HTTP status line and headers etc... Must not be set in response to an authChallenge.
    public var rawResponse: String?
    
    /// - description: If set the request url will be modified in a way that's not observable by page. Must not be
    /// set in response to an authChallenge.
    public var url: String?
    
    /// - description: If set this allows the request method to be overridden. Must not be set in response to an
    /// authChallenge.
    public var method: String?
    
    /// - description: If set this allows postData to be set. Must not be set in response to an authChallenge.
    public var postData: String?
    
    /// - description: If set this allows the request headers to be changed. Must not be set in response to an
    /// authChallenge.
    public var headers: Headers?
    
    /// - description: Response to a requestIntercepted with an authChallenge. Must not be set otherwise.
    public var authChallengeResponse: AuthChallengeResponse?
    
    public init(interceptionId: InterceptionId, errorReason: ErrorReason? = nil, rawResponse: String? = nil, url: String? = nil, method: String? = nil, postData: String? = nil, headers: Headers? = nil, authChallengeResponse: AuthChallengeResponse? = nil) {
      self.interceptionId = interceptionId
      self.errorReason = errorReason
      self.rawResponse = rawResponse
      self.url = url
      self.method = method
      self.postData = postData
      self.headers = headers
      self.authChallengeResponse = authChallengeResponse
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Deletes browser cookies with matching name and url or domain/path pair.
  public struct deleteCookies: ModelMethod {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "deleteCookies"
    
    /// - description: Name of the cookies to remove.
    public var name: String
    
    /// - description: If specified, deletes all the cookies with the given name where domain and path match
    /// provided URL.
    public var url: String?
    
    /// - description: If specified, deletes only cookies with the exact domain.
    public var domain: String?
    
    /// - description: If specified, deletes only cookies with the exact path.
    public var path: String?
    
    public init(name: String, url: String? = nil, domain: String? = nil, path: String? = nil) {
      self.name = name
      self.url = url
      self.domain = domain
      self.path = path
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Disables network tracking, prevents network events from being sent to the client.
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Activates emulation of network conditions.
  public struct emulateNetworkConditions: ModelMethod {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "emulateNetworkConditions"
    
    /// - description: True to emulate internet disconnection.
    public var offline: Bool
    
    /// - description: Minimum latency from request sent to response headers received (ms).
    public var latency: JsonNumber
    
    /// - description: Maximal aggregated download throughput (bytes/sec). -1 disables download throttling.
    public var downloadThroughput: JsonNumber
    
    /// - description: Maximal aggregated upload throughput (bytes/sec).  -1 disables upload throttling.
    public var uploadThroughput: JsonNumber
    
    /// - description: Connection type if known.
    public var connectionType: ConnectionType?
    
    public init(offline: Bool, latency: JsonNumber, downloadThroughput: JsonNumber, uploadThroughput: JsonNumber, connectionType: ConnectionType? = nil) {
      self.offline = offline
      self.latency = latency
      self.downloadThroughput = downloadThroughput
      self.uploadThroughput = uploadThroughput
      self.connectionType = connectionType
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Enables network tracking, network events will now be delivered to the client.
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "enable"
    
    /// - description: Buffer size in bytes to use when preserving network payloads (XHRs, etc).
    /// - intention: This is an experimental property.
    public var maxTotalBufferSize: Int?
    
    /// - description: Per-resource buffer size in bytes to use when preserving network payloads (XHRs, etc).
    /// - intention: This is an experimental property.
    public var maxResourceBufferSize: Int?
    
    /// - description: Longest post body size (in bytes) that would be included in requestWillBeSent notification
    public var maxPostDataSize: Int?
    
    public init(maxTotalBufferSize: Int? = nil, maxResourceBufferSize: Int? = nil, maxPostDataSize: Int? = nil) {
      self.maxTotalBufferSize = maxTotalBufferSize
      self.maxResourceBufferSize = maxResourceBufferSize
      self.maxPostDataSize = maxPostDataSize
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Returns all browser cookies. Depending on the backend support, will return detailed cookie
  /// information in the `cookies` field.
  public struct getAllCookies: ModelMethod {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "getAllCookies"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: Array of cookie objects.
      public var cookies: [Cookie]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Returns the DER-encoded certificate.
  /// - intention: This is an experimental property.
  public struct getCertificate: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "getCertificate"
    
    /// - description: Origin to get certificate for.
    public var origin: String
    
    public init(origin: String) {
      self.origin = origin
    }
    
    public struct Result: Decodable {
      public var tableNames: [String]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Returns all browser cookies for the current URL. Depending on the backend support, will return
  /// detailed cookie information in the `cookies` field.
  public struct getCookies: ModelMethod {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "getCookies"
    
    /// - description: The list of URLs for which applicable cookies will be fetched.
    /// If not specified, it's assumed to be set to the list containing
    /// the URLs of the page and all of its subframes.
    public var urls: [String]?
    
    public init(urls: [String]? = nil) {
      self.urls = urls
    }
    
    public struct Result: Decodable {
      /// - description: Array of cookie objects.
      public var cookies: [Cookie]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Returns content served for the given request.
  public struct getResponseBody: ModelMethod {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "getResponseBody"
    
    /// - description: Identifier of the network request to get content for.
    public var requestId: RequestId
    
    public init(requestId: RequestId) {
      self.requestId = requestId
    }
    
    public struct Result: Decodable {
      /// - description: Response body.
      public var body: String
      /// - description: True, if content was sent as base64.
      public var base64Encoded: Bool
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Returns post data sent with the request. Returns an error when no data was sent with the request.
  public struct getRequestPostData: ModelMethod {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "getRequestPostData"
    
    /// - description: Identifier of the network request to get content for.
    public var requestId: RequestId
    
    public init(requestId: RequestId) {
      self.requestId = requestId
    }
    
    public struct Result: Decodable {
      /// - description: Request body string, omitting files from multipart requests
      public var postData: String
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Returns content served for the given currently intercepted request.
  /// - intention: This is an experimental property.
  public struct getResponseBodyForInterception: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "getResponseBodyForInterception"
    
    /// - description: Identifier for the intercepted request to get body for.
    public var interceptionId: InterceptionId
    
    public init(interceptionId: InterceptionId) {
      self.interceptionId = interceptionId
    }
    
    public struct Result: Decodable {
      /// - description: Response body.
      public var body: String
      /// - description: True, if content was sent as base64.
      public var base64Encoded: Bool
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Returns a handle to the stream representing the response body. Note that after this command,
  /// the intercepted request can't be continued as is -- you either need to cancel it or to provide
  /// the response body. The stream only supports sequential read, IO.read will fail if the position
  /// is specified.
  /// - intention: This is an experimental property.
  public struct takeResponseBodyForInterceptionAsStream: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "takeResponseBodyForInterceptionAsStream"
    
    public var interceptionId: InterceptionId
    
    public init(interceptionId: InterceptionId) {
      self.interceptionId = interceptionId
    }
    
    public struct Result: Decodable {
      public var stream: SwiftCDPDomains.IO.StreamHandle
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: This method sends a new XMLHttpRequest which is identical to the original one. The following
  /// parameters should be identical: method, url, async, request body, extra headers, withCredentials
  /// attribute, user, password.
  /// - intention: This is an experimental property.
  public struct replayXHR: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "replayXHR"
    
    /// - description: Identifier of XHR to replay.
    public var requestId: RequestId
    
    public init(requestId: RequestId) {
      self.requestId = requestId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Searches for given string in response content.
  /// - intention: This is an experimental property.
  public struct searchInResponseBody: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "searchInResponseBody"
    
    /// - description: Identifier of the network response to search.
    public var requestId: RequestId
    
    /// - description: String to search for.
    public var query: String
    
    /// - description: If true, search is case sensitive.
    public var caseSensitive: Bool?
    
    /// - description: If true, treats string parameter as regex.
    public var isRegex: Bool?
    
    public init(requestId: RequestId, query: String, caseSensitive: Bool? = nil, isRegex: Bool? = nil) {
      self.requestId = requestId
      self.query = query
      self.caseSensitive = caseSensitive
      self.isRegex = isRegex
    }
    
    public struct Result: Decodable {
      /// - description: List of search matches.
      public var result: [SwiftCDPDomains.Debugger.SearchMatch]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Blocks URLs from loading.
  /// - intention: This is an experimental property.
  public struct setBlockedURLs: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "setBlockedURLs"
    
    /// - description: URL patterns to block. Wildcards ('*') are allowed.
    public var urls: [String]
    
    public init(urls: [String]) {
      self.urls = urls
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Toggles ignoring of service worker for each request.
  /// - intention: This is an experimental property.
  public struct setBypassServiceWorker: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "setBypassServiceWorker"
    
    /// - description: Bypass service worker and load from network.
    public var bypass: Bool
    
    public init(bypass: Bool) {
      self.bypass = bypass
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Toggles ignoring cache for each request. If `true`, cache will not be used.
  public struct setCacheDisabled: ModelMethod {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "setCacheDisabled"
    
    /// - description: Cache disabled state.
    public var cacheDisabled: Bool
    
    public init(cacheDisabled: Bool) {
      self.cacheDisabled = cacheDisabled
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Sets a cookie with the given cookie data; may overwrite equivalent cookies if they exist.
  public struct setCookie: ModelMethod {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "setCookie"
    
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
    
    /// - description: Cookie Priority type.
    /// - intention: This is an experimental property.
    public var priority: CookiePriority?
    
    public init(name: String, value: String, url: String? = nil, domain: String? = nil, path: String? = nil, secure: Bool? = nil, httpOnly: Bool? = nil, sameSite: CookieSameSite? = nil, expires: TimeSinceEpoch? = nil, priority: CookiePriority? = nil) {
      self.name = name
      self.value = value
      self.url = url
      self.domain = domain
      self.path = path
      self.secure = secure
      self.httpOnly = httpOnly
      self.sameSite = sameSite
      self.expires = expires
      self.priority = priority
    }
    
    public struct Result: Decodable {
      /// - description: Always set to true. If an error occurs, the response indicates protocol error.
      public var success: Bool
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Sets given cookies.
  public struct setCookies: ModelMethod {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "setCookies"
    
    /// - description: Cookies to be set.
    public var cookies: [CookieParam]
    
    public init(cookies: [CookieParam]) {
      self.cookies = cookies
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: For testing.
  /// - intention: This is an experimental property.
  public struct setDataSizeLimitsForTest: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "setDataSizeLimitsForTest"
    
    /// - description: Maximum total buffer size.
    public var maxTotalSize: Int
    
    /// - description: Maximum per-resource size.
    public var maxResourceSize: Int
    
    public init(maxTotalSize: Int, maxResourceSize: Int) {
      self.maxTotalSize = maxTotalSize
      self.maxResourceSize = maxResourceSize
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Specifies whether to always send extra HTTP headers with the requests from this page.
  public struct setExtraHTTPHeaders: ModelMethod {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "setExtraHTTPHeaders"
    
    /// - description: Map with extra HTTP headers.
    public var headers: Headers
    
    public init(headers: Headers) {
      self.headers = headers
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Specifies whether to attach a page script stack id in requests
  /// - intention: This is an experimental property.
  public struct setAttachDebugStack: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "setAttachDebugStack"
    
    /// - description: Whether to attach a page script stack for debugging purpose.
    public var enabled: Bool
    
    public init(enabled: Bool) {
      self.enabled = enabled
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Sets the requests to intercept that match the provided patterns and optionally resource types.
  /// Deprecated, please use Fetch.enable instead.
  /// - intention: This is an experimental property.
  @available(*, deprecated)
  public struct setRequestInterception: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "setRequestInterception"
    
    /// - description: Requests matching any of these patterns will be forwarded and wait for the corresponding
    /// continueInterceptedRequest call.
    public var patterns: [RequestPattern]
    
    public init(patterns: [RequestPattern]) {
      self.patterns = patterns
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Allows overriding user agent with the given string.
  public struct setUserAgentOverride: ModelMethod {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "setUserAgentOverride"
    
    /// - description: User agent to use.
    public var userAgent: String
    
    /// - description: Browser langugage to emulate.
    public var acceptLanguage: String?
    
    /// - description: The platform navigator.platform should return.
    public var platform: String?
    
    /// - description: To be sent in Sec-CH-UA-* headers and returned in navigator.userAgentData
    /// - intention: This is an experimental property.
    public var userAgentMetadata: SwiftCDPDomains.Emulation.UserAgentMetadata?
    
    public init(userAgent: String, acceptLanguage: String? = nil, platform: String? = nil, userAgentMetadata: SwiftCDPDomains.Emulation.UserAgentMetadata? = nil) {
      self.userAgent = userAgent
      self.acceptLanguage = acceptLanguage
      self.platform = platform
      self.userAgentMetadata = userAgentMetadata
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Returns information about the COEP/COOP isolation status.
  /// - intention: This is an experimental property.
  public struct getSecurityIsolationStatus: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "getSecurityIsolationStatus"
    
    /// - description: If no frameId is provided, the status of the target is provided.
    public var frameId: SwiftCDPDomains.Page.FrameId?
    
    public init(frameId: SwiftCDPDomains.Page.FrameId? = nil) {
      self.frameId = frameId
    }
    
    public struct Result: Decodable {
      public var status: SecurityIsolationStatus
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Fetches the resource and returns the content.
  /// - intention: This is an experimental property.
  public struct loadNetworkResource: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Network
    public static let name = "loadNetworkResource"
    
    /// - description: Frame id to get the resource for.
    public var frameId: SwiftCDPDomains.Page.FrameId
    
    /// - description: URL of the resource to get content for.
    public var url: String
    
    /// - description: Options for the request.
    public var options: LoadNetworkResourceOptions
    
    public init(frameId: SwiftCDPDomains.Page.FrameId, url: String, options: LoadNetworkResourceOptions) {
      self.frameId = frameId
      self.url = url
      self.options = options
    }
    
    public struct Result: Decodable {
      public var resource: LoadNetworkResourcePageResult
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

