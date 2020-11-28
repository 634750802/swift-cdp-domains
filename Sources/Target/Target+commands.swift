import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Target"

extension SwiftCDPDomains.Target {
  /// - description: Supports additional targets discovery and allows to attach to them.
  public struct activateTarget: ModelMethod {
    public typealias Model = SwiftCDPDomains.Target
    public static let name = "activateTarget"
    
    public var targetId: TargetID
    
    public init(targetId: TargetID) {
      self.targetId = targetId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Target {
  /// - description: Supports additional targets discovery and allows to attach to them.
  public struct attachToTarget: ModelMethod {
    public typealias Model = SwiftCDPDomains.Target
    public static let name = "attachToTarget"
    
    public var targetId: TargetID
    
    /// - description: Enables "flat" access to the session via specifying sessionId attribute in the commands.
    /// We plan to make this the default, deprecate non-flattened mode,
    /// and eventually retire it. See crbug.com/991325.
    public var flatten: Bool?
    
    public init(targetId: TargetID, flatten: Bool? = nil) {
      self.targetId = targetId
      self.flatten = flatten
    }
    
    public struct Result: Decodable {
      /// - description: Id assigned to the session.
      public var sessionId: SessionID
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Target {
  /// - description: Supports additional targets discovery and allows to attach to them.
  public struct attachToBrowserTarget: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Target
    public static let name = "attachToBrowserTarget"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: Id assigned to the session.
      public var sessionId: SessionID
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Target {
  /// - description: Supports additional targets discovery and allows to attach to them.
  public struct closeTarget: ModelMethod {
    public typealias Model = SwiftCDPDomains.Target
    public static let name = "closeTarget"
    
    public var targetId: TargetID
    
    public init(targetId: TargetID) {
      self.targetId = targetId
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

extension SwiftCDPDomains.Target {
  /// - description: Supports additional targets discovery and allows to attach to them.
  public struct exposeDevToolsProtocol: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Target
    public static let name = "exposeDevToolsProtocol"
    
    public var targetId: TargetID
    
    /// - description: Binding name, 'cdp' if not specified.
    public var bindingName: String?
    
    public init(targetId: TargetID, bindingName: String? = nil) {
      self.targetId = targetId
      self.bindingName = bindingName
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Target {
  /// - description: Supports additional targets discovery and allows to attach to them.
  public struct createBrowserContext: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Target
    public static let name = "createBrowserContext"
    
    /// - description: If specified, disposes this context when debugging session disconnects.
    public var disposeOnDetach: Bool?
    
    /// - description: Proxy server, similar to the one passed to --proxy-server
    public var proxyServer: String?
    
    /// - description: Proxy bypass list, similar to the one passed to --proxy-bypass-list
    public var proxyBypassList: String?
    
    public init(disposeOnDetach: Bool? = nil, proxyServer: String? = nil, proxyBypassList: String? = nil) {
      self.disposeOnDetach = disposeOnDetach
      self.proxyServer = proxyServer
      self.proxyBypassList = proxyBypassList
    }
    
    public struct Result: Decodable {
      /// - description: The id of the context created.
      public var browserContextId: SwiftCDPDomains.Browser.BrowserContextID
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Target {
  /// - description: Supports additional targets discovery and allows to attach to them.
  public struct getBrowserContexts: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Target
    public static let name = "getBrowserContexts"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: An array of browser context ids.
      public var browserContextIds: [SwiftCDPDomains.Browser.BrowserContextID]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Target {
  /// - description: Supports additional targets discovery and allows to attach to them.
  public struct createTarget: ModelMethod {
    public typealias Model = SwiftCDPDomains.Target
    public static let name = "createTarget"
    
    /// - description: The initial URL the page will be navigated to.
    public var url: String
    
    /// - description: Frame width in DIP (headless chrome only).
    public var width: Int?
    
    /// - description: Frame height in DIP (headless chrome only).
    public var height: Int?
    
    /// - description: The browser context to create the page in.
    public var browserContextId: SwiftCDPDomains.Browser.BrowserContextID?
    
    /// - description: Whether BeginFrames for this target will be controlled via DevTools (headless chrome only,
    /// not supported on MacOS yet, false by default).
    /// - intention: This is an experimental property.
    public var enableBeginFrameControl: Bool?
    
    /// - description: Whether to create a new Window or Tab (chrome-only, false by default).
    public var newWindow: Bool?
    
    /// - description: Whether to create the target in background or foreground (chrome-only,
    /// false by default).
    public var background: Bool?
    
    public init(url: String, width: Int? = nil, height: Int? = nil, browserContextId: SwiftCDPDomains.Browser.BrowserContextID? = nil, enableBeginFrameControl: Bool? = nil, newWindow: Bool? = nil, background: Bool? = nil) {
      self.url = url
      self.width = width
      self.height = height
      self.browserContextId = browserContextId
      self.enableBeginFrameControl = enableBeginFrameControl
      self.newWindow = newWindow
      self.background = background
    }
    
    public struct Result: Decodable {
      /// - description: The id of the page opened.
      public var targetId: TargetID
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Target {
  /// - description: Supports additional targets discovery and allows to attach to them.
  public struct detachFromTarget: ModelMethod {
    public typealias Model = SwiftCDPDomains.Target
    public static let name = "detachFromTarget"
    
    /// - description: Session to detach.
    public var sessionId: SessionID?
    
    /// - description: Deprecated.
    public var targetId: TargetID?
    
    public init(sessionId: SessionID? = nil, targetId: TargetID? = nil) {
      self.sessionId = sessionId
      self.targetId = targetId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Target {
  /// - description: Supports additional targets discovery and allows to attach to them.
  public struct disposeBrowserContext: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Target
    public static let name = "disposeBrowserContext"
    
    public var browserContextId: SwiftCDPDomains.Browser.BrowserContextID
    
    public init(browserContextId: SwiftCDPDomains.Browser.BrowserContextID) {
      self.browserContextId = browserContextId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Target {
  /// - description: Supports additional targets discovery and allows to attach to them.
  public struct getTargetInfo: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Target
    public static let name = "getTargetInfo"
    
    public var targetId: TargetID?
    
    public init(targetId: TargetID? = nil) {
      self.targetId = targetId
    }
    
    public struct Result: Decodable {
      public var targetInfo: TargetInfo
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Target {
  /// - description: Supports additional targets discovery and allows to attach to them.
  public struct getTargets: ModelMethod {
    public typealias Model = SwiftCDPDomains.Target
    public static let name = "getTargets"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: The list of targets.
      public var targetInfos: [TargetInfo]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Target {
  /// - description: Supports additional targets discovery and allows to attach to them.
  @available(*, deprecated)
  public struct sendMessageToTarget: ModelMethod {
    public typealias Model = SwiftCDPDomains.Target
    public static let name = "sendMessageToTarget"
    
    public var message: String
    
    /// - description: Identifier of the session.
    public var sessionId: SessionID?
    
    /// - description: Deprecated.
    public var targetId: TargetID?
    
    public init(message: String, sessionId: SessionID? = nil, targetId: TargetID? = nil) {
      self.message = message
      self.sessionId = sessionId
      self.targetId = targetId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Target {
  /// - description: Supports additional targets discovery and allows to attach to them.
  public struct setAutoAttach: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Target
    public static let name = "setAutoAttach"
    
    /// - description: Whether to auto-attach to related targets.
    public var autoAttach: Bool
    
    /// - description: Whether to pause new targets when attaching to them. Use `Runtime.runIfWaitingForDebugger`
    /// to run paused targets.
    public var waitForDebuggerOnStart: Bool
    
    /// - description: Enables "flat" access to the session via specifying sessionId attribute in the commands.
    /// We plan to make this the default, deprecate non-flattened mode,
    /// and eventually retire it. See crbug.com/991325.
    public var flatten: Bool?
    
    public init(autoAttach: Bool, waitForDebuggerOnStart: Bool, flatten: Bool? = nil) {
      self.autoAttach = autoAttach
      self.waitForDebuggerOnStart = waitForDebuggerOnStart
      self.flatten = flatten
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Target {
  /// - description: Supports additional targets discovery and allows to attach to them.
  public struct setDiscoverTargets: ModelMethod {
    public typealias Model = SwiftCDPDomains.Target
    public static let name = "setDiscoverTargets"
    
    /// - description: Whether to discover available targets.
    public var discover: Bool
    
    public init(discover: Bool) {
      self.discover = discover
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Target {
  /// - description: Supports additional targets discovery and allows to attach to them.
  public struct setRemoteLocations: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Target
    public static let name = "setRemoteLocations"
    
    /// - description: List of remote locations.
    public var locations: [RemoteLocation]
    
    public init(locations: [RemoteLocation]) {
      self.locations = locations
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

