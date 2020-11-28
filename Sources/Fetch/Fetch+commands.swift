import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Fetch"

extension SwiftCDPDomains.Fetch {
  /// - description: Disables the fetch domain.
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Fetch
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Fetch {
  /// - description: Enables issuing of requestPaused events. A request will be paused until client
  /// calls one of failRequest, fulfillRequest or continueRequest/continueWithAuth.
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Fetch
    public static let name = "enable"
    
    /// - description: If specified, only requests matching any of these patterns will produce
    /// fetchRequested event and will be paused until clients response. If not set,
    /// all requests will be affected.
    public var patterns: [RequestPattern]?
    
    /// - description: If true, authRequired events will be issued and requests will be paused
    /// expecting a call to continueWithAuth.
    public var handleAuthRequests: Bool?
    
    public init(patterns: [RequestPattern]? = nil, handleAuthRequests: Bool? = nil) {
      self.patterns = patterns
      self.handleAuthRequests = handleAuthRequests
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Fetch {
  /// - description: Causes the request to fail with specified reason.
  public struct failRequest: ModelMethod {
    public typealias Model = SwiftCDPDomains.Fetch
    public static let name = "failRequest"
    
    /// - description: An id the client received in requestPaused event.
    public var requestId: RequestId
    
    /// - description: Causes the request to fail with the given reason.
    public var errorReason: SwiftCDPDomains.Network.ErrorReason
    
    public init(requestId: RequestId, errorReason: SwiftCDPDomains.Network.ErrorReason) {
      self.requestId = requestId
      self.errorReason = errorReason
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Fetch {
  /// - description: Provides response to the request.
  public struct fulfillRequest: ModelMethod {
    public typealias Model = SwiftCDPDomains.Fetch
    public static let name = "fulfillRequest"
    
    /// - description: An id the client received in requestPaused event.
    public var requestId: RequestId
    
    /// - description: An HTTP response code.
    public var responseCode: Int
    
    /// - description: Response headers.
    public var responseHeaders: [HeaderEntry]?
    
    /// - description: Alternative way of specifying response headers as a \0-separated
    /// series of name: value pairs. Prefer the above method unless you
    /// need to represent some non-UTF8 values that can't be transmitted
    /// over the protocol as text.
    public var binaryResponseHeaders: String?
    
    /// - description: A response body.
    public var body: String?
    
    /// - description: A textual representation of responseCode.
    /// If absent, a standard phrase matching responseCode is used.
    public var responsePhrase: String?
    
    public init(requestId: RequestId, responseCode: Int, responseHeaders: [HeaderEntry]? = nil, binaryResponseHeaders: String? = nil, body: String? = nil, responsePhrase: String? = nil) {
      self.requestId = requestId
      self.responseCode = responseCode
      self.responseHeaders = responseHeaders
      self.binaryResponseHeaders = binaryResponseHeaders
      self.body = body
      self.responsePhrase = responsePhrase
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Fetch {
  /// - description: Continues the request, optionally modifying some of its parameters.
  public struct continueRequest: ModelMethod {
    public typealias Model = SwiftCDPDomains.Fetch
    public static let name = "continueRequest"
    
    /// - description: An id the client received in requestPaused event.
    public var requestId: RequestId
    
    /// - description: If set, the request url will be modified in a way that's not observable by page.
    public var url: String?
    
    /// - description: If set, the request method is overridden.
    public var method: String?
    
    /// - description: If set, overrides the post data in the request.
    public var postData: String?
    
    /// - description: If set, overrides the request headers.
    public var headers: [HeaderEntry]?
    
    public init(requestId: RequestId, url: String? = nil, method: String? = nil, postData: String? = nil, headers: [HeaderEntry]? = nil) {
      self.requestId = requestId
      self.url = url
      self.method = method
      self.postData = postData
      self.headers = headers
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Fetch {
  /// - description: Continues a request supplying authChallengeResponse following authRequired event.
  public struct continueWithAuth: ModelMethod {
    public typealias Model = SwiftCDPDomains.Fetch
    public static let name = "continueWithAuth"
    
    /// - description: An id the client received in authRequired event.
    public var requestId: RequestId
    
    /// - description: Response to  with an authChallenge.
    public var authChallengeResponse: AuthChallengeResponse
    
    public init(requestId: RequestId, authChallengeResponse: AuthChallengeResponse) {
      self.requestId = requestId
      self.authChallengeResponse = authChallengeResponse
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Fetch {
  /// - description: Causes the body of the response to be received from the server and
  /// returned as a single string. May only be issued for a request that
  /// is paused in the Response stage and is mutually exclusive with
  /// takeResponseBodyForInterceptionAsStream. Calling other methods that
  /// affect the request or disabling fetch domain before body is received
  /// results in an undefined behavior.
  public struct getResponseBody: ModelMethod {
    public typealias Model = SwiftCDPDomains.Fetch
    public static let name = "getResponseBody"
    
    /// - description: Identifier for the intercepted request to get body for.
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

extension SwiftCDPDomains.Fetch {
  /// - description: Returns a handle to the stream representing the response body.
  /// The request must be paused in the HeadersReceived stage.
  /// Note that after this command the request can't be continued
  /// as is -- client either needs to cancel it or to provide the
  /// response body.
  /// The stream only supports sequential read, IO.read will fail if the position
  /// is specified.
  /// This method is mutually exclusive with getResponseBody.
  /// Calling other methods that affect the request or disabling fetch
  /// domain before body is received results in an undefined behavior.
  public struct takeResponseBodyAsStream: ModelMethod {
    public typealias Model = SwiftCDPDomains.Fetch
    public static let name = "takeResponseBodyAsStream"
    
    public var requestId: RequestId
    
    public init(requestId: RequestId) {
      self.requestId = requestId
    }
    
    public struct Result: Decodable {
      public var stream: SwiftCDPDomains.IO.StreamHandle
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

