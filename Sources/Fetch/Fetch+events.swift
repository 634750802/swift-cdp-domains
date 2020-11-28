import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Fetch"

extension SwiftCDPDomains.Fetch {
  /// - description: Issued when the domain is enabled and the request URL matches the
  /// specified filter. The request is paused until the client responds
  /// with one of continueRequest, failRequest or fulfillRequest.
  /// The stage of the request can be determined by presence of responseErrorReason
  /// and responseStatusCode -- the request is at the response stage if either
  /// of these fields is present and in the request stage otherwise.
  public struct requestPaused: ModelEvent {
    public typealias Model = SwiftCDPDomains.Fetch
    
    /// - description: Each request the page makes will have a unique id.
    public var requestId: RequestId
    
    /// - description: The details of the request.
    public var request: SwiftCDPDomains.Network.Request
    
    /// - description: The id of the frame that initiated the request.
    public var frameId: SwiftCDPDomains.Page.FrameId
    
    /// - description: How the requested resource will be used.
    public var resourceType: SwiftCDPDomains.Network.ResourceType
    
    /// - description: Response error if intercepted at response stage.
    public var responseErrorReason: SwiftCDPDomains.Network.ErrorReason?
    
    /// - description: Response code if intercepted at response stage.
    public var responseStatusCode: Int?
    
    /// - description: Response headers if intercepted at the response stage.
    public var responseHeaders: [HeaderEntry]?
    
    /// - description: If the intercepted request had a corresponding Network.requestWillBeSent event fired for it,
    /// then this networkId will be the same as the requestId present in the requestWillBeSent event.
    public var networkId: RequestId?
    
  }
}

extension SwiftCDPDomains.Fetch {
  /// - description: Issued when the domain is enabled with handleAuthRequests set to true.
  /// The request is paused until client responds with continueWithAuth.
  public struct authRequired: ModelEvent {
    public typealias Model = SwiftCDPDomains.Fetch
    
    /// - description: Each request the page makes will have a unique id.
    public var requestId: RequestId
    
    /// - description: The details of the request.
    public var request: SwiftCDPDomains.Network.Request
    
    /// - description: The id of the frame that initiated the request.
    public var frameId: SwiftCDPDomains.Page.FrameId
    
    /// - description: How the requested resource will be used.
    public var resourceType: SwiftCDPDomains.Network.ResourceType
    
    /// - description: Details of the Authorization Challenge encountered.
    /// If this is set, client should respond with continueRequest that
    /// contains AuthChallengeResponse.
    public var authChallenge: AuthChallenge
    
  }
}

