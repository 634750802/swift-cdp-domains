import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Network"

extension SwiftCDPDomains.Network {
  /// - description: Fired when data chunk was received over the network.
  public struct dataReceived: ModelEvent {
    public typealias Model = SwiftCDPDomains.Network
    
    /// - description: Request identifier.
    public var requestId: RequestId
    
    /// - description: Timestamp.
    public var timestamp: MonotonicTime
    
    /// - description: Data chunk length.
    public var dataLength: Int
    
    /// - description: Actual bytes received (might be less than dataLength for compressed encodings).
    public var encodedDataLength: Int
    
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Fired when EventSource message is received.
  public struct eventSourceMessageReceived: ModelEvent {
    public typealias Model = SwiftCDPDomains.Network
    
    /// - description: Request identifier.
    public var requestId: RequestId
    
    /// - description: Timestamp.
    public var timestamp: MonotonicTime
    
    /// - description: Message type.
    public var eventName: String
    
    /// - description: Message identifier.
    public var eventId: String
    
    /// - description: Message content.
    public var data: String
    
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Fired when HTTP request has failed to load.
  public struct loadingFailed: ModelEvent {
    public typealias Model = SwiftCDPDomains.Network
    
    /// - description: Request identifier.
    public var requestId: RequestId
    
    /// - description: Timestamp.
    public var timestamp: MonotonicTime
    
    /// - description: Resource type.
    public var type: ResourceType
    
    /// - description: User friendly error message.
    public var errorText: String
    
    /// - description: True if loading was canceled.
    public var canceled: Bool?
    
    /// - description: The reason why loading was blocked, if any.
    public var blockedReason: BlockedReason?
    
    /// - description: The reason why loading was blocked by CORS, if any.
    public var corsErrorStatus: CorsErrorStatus?
    
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Fired when HTTP request has finished loading.
  public struct loadingFinished: ModelEvent {
    public typealias Model = SwiftCDPDomains.Network
    
    /// - description: Request identifier.
    public var requestId: RequestId
    
    /// - description: Timestamp.
    public var timestamp: MonotonicTime
    
    /// - description: Total number of bytes received for this request.
    public var encodedDataLength: JsonNumber
    
    /// - description: Set when 1) response was blocked by Cross-Origin Read Blocking and also
    /// 2) this needs to be reported to the DevTools console.
    public var shouldReportCorbBlocking: Bool?
    
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Details of an intercepted HTTP request, which must be either allowed, blocked, modified or
  /// mocked.
  /// Deprecated, use Fetch.requestPaused instead.
  /// - intention: This is an experimental property.
  @available(*, deprecated)
  public struct requestIntercepted: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Network
    
    /// - description: Each request the page makes will have a unique id, however if any redirects are encountered
    /// while processing that fetch, they will be reported with the same id as the original fetch.
    /// Likewise if HTTP authentication is needed then the same fetch id will be used.
    public var interceptionId: InterceptionId
    
    public var request: Request
    
    /// - description: The id of the frame that initiated the request.
    public var frameId: SwiftCDPDomains.Page.FrameId
    
    /// - description: How the requested resource will be used.
    public var resourceType: ResourceType
    
    /// - description: Whether this is a navigation request, which can abort the navigation completely.
    public var isNavigationRequest: Bool
    
    /// - description: Set if the request is a navigation that will result in a download.
    /// Only present after response is received from the server (i.e. HeadersReceived stage).
    public var isDownload: Bool?
    
    /// - description: Redirect location, only sent if a redirect was intercepted.
    public var redirectUrl: String?
    
    /// - description: Details of the Authorization Challenge encountered. If this is set then
    /// continueInterceptedRequest must contain an authChallengeResponse.
    public var authChallenge: AuthChallenge?
    
    /// - description: Response error if intercepted at response stage or if redirect occurred while intercepting
    /// request.
    public var responseErrorReason: ErrorReason?
    
    /// - description: Response code if intercepted at response stage or if redirect occurred while intercepting
    /// request or auth retry occurred.
    public var responseStatusCode: Int?
    
    /// - description: Response headers if intercepted at the response stage or if redirect occurred while
    /// intercepting request or auth retry occurred.
    public var responseHeaders: Headers?
    
    /// - description: If the intercepted request had a corresponding requestWillBeSent event fired for it, then
    /// this requestId will be the same as the requestId present in the requestWillBeSent event.
    public var requestId: RequestId?
    
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Fired if request ended up loading from cache.
  public struct requestServedFromCache: ModelEvent {
    public typealias Model = SwiftCDPDomains.Network
    
    /// - description: Request identifier.
    public var requestId: RequestId
    
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Fired when page is about to send HTTP request.
  public struct requestWillBeSent: ModelEvent {
    public typealias Model = SwiftCDPDomains.Network
    
    /// - description: Request identifier.
    public var requestId: RequestId
    
    /// - description: Loader identifier. Empty string if the request is fetched from worker.
    public var loaderId: LoaderId
    
    /// - description: URL of the document this request is loaded for.
    public var documentURL: String
    
    /// - description: Request data.
    public var request: Request
    
    /// - description: Timestamp.
    public var timestamp: MonotonicTime
    
    /// - description: Timestamp.
    public var wallTime: TimeSinceEpoch
    
    /// - description: Request initiator.
    public var initiator: Initiator
    
    /// - description: Redirect response data.
    public var redirectResponse: Response?
    
    /// - description: Type of this resource.
    public var type: ResourceType?
    
    /// - description: Frame identifier.
    public var frameId: SwiftCDPDomains.Page.FrameId?
    
    /// - description: Whether the request is initiated by a user gesture. Defaults to false.
    public var hasUserGesture: Bool?
    
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Fired when resource loading priority is changed
  /// - intention: This is an experimental property.
  public struct resourceChangedPriority: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Network
    
    /// - description: Request identifier.
    public var requestId: RequestId
    
    /// - description: New priority
    public var newPriority: ResourcePriority
    
    /// - description: Timestamp.
    public var timestamp: MonotonicTime
    
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Fired when a signed exchange was received over the network
  /// - intention: This is an experimental property.
  public struct signedExchangeReceived: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Network
    
    /// - description: Request identifier.
    public var requestId: RequestId
    
    /// - description: Information about the signed exchange response.
    public var info: SignedExchangeInfo
    
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Fired when HTTP response is available.
  public struct responseReceived: ModelEvent {
    public typealias Model = SwiftCDPDomains.Network
    
    /// - description: Request identifier.
    public var requestId: RequestId
    
    /// - description: Loader identifier. Empty string if the request is fetched from worker.
    public var loaderId: LoaderId
    
    /// - description: Timestamp.
    public var timestamp: MonotonicTime
    
    /// - description: Resource type.
    public var type: ResourceType
    
    /// - description: Response data.
    public var response: Response
    
    /// - description: Frame identifier.
    public var frameId: SwiftCDPDomains.Page.FrameId?
    
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Fired when WebSocket is closed.
  public struct webSocketClosed: ModelEvent {
    public typealias Model = SwiftCDPDomains.Network
    
    /// - description: Request identifier.
    public var requestId: RequestId
    
    /// - description: Timestamp.
    public var timestamp: MonotonicTime
    
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Fired upon WebSocket creation.
  public struct webSocketCreated: ModelEvent {
    public typealias Model = SwiftCDPDomains.Network
    
    /// - description: Request identifier.
    public var requestId: RequestId
    
    /// - description: WebSocket request URL.
    public var url: String
    
    /// - description: Request initiator.
    public var initiator: Initiator?
    
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Fired when WebSocket message error occurs.
  public struct webSocketFrameError: ModelEvent {
    public typealias Model = SwiftCDPDomains.Network
    
    /// - description: Request identifier.
    public var requestId: RequestId
    
    /// - description: Timestamp.
    public var timestamp: MonotonicTime
    
    /// - description: WebSocket error message.
    public var errorMessage: String
    
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Fired when WebSocket message is received.
  public struct webSocketFrameReceived: ModelEvent {
    public typealias Model = SwiftCDPDomains.Network
    
    /// - description: Request identifier.
    public var requestId: RequestId
    
    /// - description: Timestamp.
    public var timestamp: MonotonicTime
    
    /// - description: WebSocket response data.
    public var response: WebSocketFrame
    
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Fired when WebSocket message is sent.
  public struct webSocketFrameSent: ModelEvent {
    public typealias Model = SwiftCDPDomains.Network
    
    /// - description: Request identifier.
    public var requestId: RequestId
    
    /// - description: Timestamp.
    public var timestamp: MonotonicTime
    
    /// - description: WebSocket response data.
    public var response: WebSocketFrame
    
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Fired when WebSocket handshake response becomes available.
  public struct webSocketHandshakeResponseReceived: ModelEvent {
    public typealias Model = SwiftCDPDomains.Network
    
    /// - description: Request identifier.
    public var requestId: RequestId
    
    /// - description: Timestamp.
    public var timestamp: MonotonicTime
    
    /// - description: WebSocket response data.
    public var response: WebSocketResponse
    
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Fired when WebSocket is about to initiate handshake.
  public struct webSocketWillSendHandshakeRequest: ModelEvent {
    public typealias Model = SwiftCDPDomains.Network
    
    /// - description: Request identifier.
    public var requestId: RequestId
    
    /// - description: Timestamp.
    public var timestamp: MonotonicTime
    
    /// - description: UTC Timestamp.
    public var wallTime: TimeSinceEpoch
    
    /// - description: WebSocket request data.
    public var request: WebSocketRequest
    
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Fired upon WebTransport creation.
  public struct webTransportCreated: ModelEvent {
    public typealias Model = SwiftCDPDomains.Network
    
    /// - description: WebTransport identifier.
    public var transportId: RequestId
    
    /// - description: WebTransport request URL.
    public var url: String
    
    /// - description: Request initiator.
    public var initiator: Initiator?
    
  }
}

extension SwiftCDPDomains.Network {
  public struct webTransportClosed: ModelEvent {
    public typealias Model = SwiftCDPDomains.Network
    
    /// - description: WebTransport identifier.
    public var transportId: RequestId
    
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Fired when additional information about a requestWillBeSent event is available from the
  /// network stack. Not every requestWillBeSent event will have an additional
  /// requestWillBeSentExtraInfo fired for it, and there is no guarantee whether requestWillBeSent
  /// or requestWillBeSentExtraInfo will be fired first for the same request.
  /// - intention: This is an experimental property.
  public struct requestWillBeSentExtraInfo: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Network
    
    /// - description: Request identifier. Used to match this information to an existing requestWillBeSent event.
    public var requestId: RequestId
    
    /// - description: A list of cookies potentially associated to the requested URL. This includes both cookies sent with
    /// the request and the ones not sent; the latter are distinguished by having blockedReason field set.
    public var associatedCookies: [BlockedCookieWithReason]
    
    /// - description: Raw request headers as they will be sent over the wire.
    public var headers: Headers
    
    /// - description: The client security state set for the request.
    public var clientSecurityState: ClientSecurityState?
    
  }
}

extension SwiftCDPDomains.Network {
  /// - description: Fired when additional information about a responseReceived event is available from the network
  /// stack. Not every responseReceived event will have an additional responseReceivedExtraInfo for
  /// it, and responseReceivedExtraInfo may be fired before or after responseReceived.
  /// - intention: This is an experimental property.
  public struct responseReceivedExtraInfo: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Network
    
    /// - description: Request identifier. Used to match this information to another responseReceived event.
    public var requestId: RequestId
    
    /// - description: A list of cookies which were not stored from the response along with the corresponding
    /// reasons for blocking. The cookies here may not be valid due to syntax errors, which
    /// are represented by the invalid cookie line string instead of a proper cookie.
    public var blockedCookies: [BlockedSetCookieWithReason]
    
    /// - description: Raw response headers as they were received over the wire.
    public var headers: Headers
    
    /// - description: Raw response header text as it was received over the wire. The raw text may not always be
    /// available, such as in the case of HTTP/2 or QUIC.
    public var headersText: String?
    
  }
}

