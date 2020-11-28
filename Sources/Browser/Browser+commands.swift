import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Browser"

extension SwiftCDPDomains.Browser {
  /// - description: Set permission settings for given origin.
  /// - intention: This is an experimental property.
  public struct setPermission: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Browser
    public static let name = "setPermission"
    
    /// - description: Descriptor of permission to override.
    public var permission: PermissionDescriptor
    
    /// - description: Setting of the permission.
    public var setting: PermissionSetting
    
    /// - description: Origin the permission applies to, all origins if not specified.
    public var origin: String?
    
    /// - description: Context to override. When omitted, default browser context is used.
    public var browserContextId: BrowserContextID?
    
    public init(permission: PermissionDescriptor, setting: PermissionSetting, origin: String? = nil, browserContextId: BrowserContextID? = nil) {
      self.permission = permission
      self.setting = setting
      self.origin = origin
      self.browserContextId = browserContextId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Browser {
  /// - description: Grant specific permissions to the given origin and reject all others.
  /// - intention: This is an experimental property.
  public struct grantPermissions: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Browser
    public static let name = "grantPermissions"
    
    public var permissions: [PermissionType]
    
    /// - description: Origin the permission applies to, all origins if not specified.
    public var origin: String?
    
    /// - description: BrowserContext to override permissions. When omitted, default browser context is used.
    public var browserContextId: BrowserContextID?
    
    public init(permissions: [PermissionType], origin: String? = nil, browserContextId: BrowserContextID? = nil) {
      self.permissions = permissions
      self.origin = origin
      self.browserContextId = browserContextId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Browser {
  /// - description: Reset all permission management for all origins.
  /// - intention: This is an experimental property.
  public struct resetPermissions: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Browser
    public static let name = "resetPermissions"
    
    /// - description: BrowserContext to reset permissions. When omitted, default browser context is used.
    public var browserContextId: BrowserContextID?
    
    public init(browserContextId: BrowserContextID? = nil) {
      self.browserContextId = browserContextId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Browser {
  /// - description: Set the behavior when downloading a file.
  /// - intention: This is an experimental property.
  public struct setDownloadBehavior: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Browser
    public static let name = "setDownloadBehavior"
    
    /// - description: Whether to allow all or deny all download requests, or use default Chrome behavior if
    /// available (otherwise deny). |allowAndName| allows download and names files according to
    /// their dowmload guids.
    public var behavior: String
    
    /// - description: BrowserContext to set download behavior. When omitted, default browser context is used.
    public var browserContextId: BrowserContextID?
    
    /// - description: The default path to save downloaded files to. This is requred if behavior is set to 'allow'
    /// or 'allowAndName'.
    public var downloadPath: String?
    
    public init(behavior: String, browserContextId: BrowserContextID? = nil, downloadPath: String? = nil) {
      self.behavior = behavior
      self.browserContextId = browserContextId
      self.downloadPath = downloadPath
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Browser {
  /// - description: Close browser gracefully.
  public struct close: ModelMethod {
    public typealias Model = SwiftCDPDomains.Browser
    public static let name = "close"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Browser {
  /// - description: Crashes browser on the main thread.
  /// - intention: This is an experimental property.
  public struct crash: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Browser
    public static let name = "crash"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Browser {
  /// - description: Crashes GPU process.
  /// - intention: This is an experimental property.
  public struct crashGpuProcess: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Browser
    public static let name = "crashGpuProcess"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Browser {
  /// - description: Returns version information.
  public struct getVersion: ModelMethod {
    public typealias Model = SwiftCDPDomains.Browser
    public static let name = "getVersion"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: Protocol version.
      public var protocolVersion: String
      /// - description: Product name.
      public var product: String
      /// - description: Product revision.
      public var revision: String
      /// - description: User-Agent.
      public var userAgent: String
      /// - description: V8 version.
      public var jsVersion: String
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Browser {
  /// - description: Returns the command line switches for the browser process if, and only if
  /// --enable-automation is on the commandline.
  /// - intention: This is an experimental property.
  public struct getBrowserCommandLine: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Browser
    public static let name = "getBrowserCommandLine"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: Commandline parameters
      public var arguments: [String]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Browser {
  /// - description: Get Chrome histograms.
  /// - intention: This is an experimental property.
  public struct getHistograms: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Browser
    public static let name = "getHistograms"
    
    /// - description: Requested substring in name. Only histograms which have query as a
    /// substring in their name are extracted. An empty or absent query returns
    /// all histograms.
    public var query: String?
    
    /// - description: If true, retrieve delta since last call.
    public var delta: Bool?
    
    public init(query: String? = nil, delta: Bool? = nil) {
      self.query = query
      self.delta = delta
    }
    
    public struct Result: Decodable {
      /// - description: Histograms.
      public var histograms: [Histogram]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Browser {
  /// - description: Get a Chrome histogram by name.
  /// - intention: This is an experimental property.
  public struct getHistogram: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Browser
    public static let name = "getHistogram"
    
    /// - description: Requested histogram name.
    public var name: String
    
    /// - description: If true, retrieve delta since last call.
    public var delta: Bool?
    
    public init(name: String, delta: Bool? = nil) {
      self.name = name
      self.delta = delta
    }
    
    public struct Result: Decodable {
      /// - description: Histogram.
      public var histogram: Histogram
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Browser {
  /// - description: Get position and size of the browser window.
  /// - intention: This is an experimental property.
  public struct getWindowBounds: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Browser
    public static let name = "getWindowBounds"
    
    /// - description: Browser window id.
    public var windowId: WindowID
    
    public init(windowId: WindowID) {
      self.windowId = windowId
    }
    
    public struct Result: Decodable {
      /// - description: Bounds information of the window. When window state is 'minimized', the restored window
      /// position and size are returned.
      public var bounds: Bounds
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Browser {
  /// - description: Get the browser window that contains the devtools target.
  /// - intention: This is an experimental property.
  public struct getWindowForTarget: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Browser
    public static let name = "getWindowForTarget"
    
    /// - description: Devtools agent host id. If called as a part of the session, associated targetId is used.
    public var targetId: SwiftCDPDomains.Target.TargetID?
    
    public init(targetId: SwiftCDPDomains.Target.TargetID? = nil) {
      self.targetId = targetId
    }
    
    public struct Result: Decodable {
      /// - description: Browser window id.
      public var windowId: WindowID
      /// - description: Bounds information of the window. When window state is 'minimized', the restored window
      /// position and size are returned.
      public var bounds: Bounds
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Browser {
  /// - description: Set position and/or size of the browser window.
  /// - intention: This is an experimental property.
  public struct setWindowBounds: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Browser
    public static let name = "setWindowBounds"
    
    /// - description: Browser window id.
    public var windowId: WindowID
    
    /// - description: New window bounds. The 'minimized', 'maximized' and 'fullscreen' states cannot be combined
    /// with 'left', 'top', 'width' or 'height'. Leaves unspecified fields unchanged.
    public var bounds: Bounds
    
    public init(windowId: WindowID, bounds: Bounds) {
      self.windowId = windowId
      self.bounds = bounds
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Browser {
  /// - description: Set dock tile details, platform-specific.
  /// - intention: This is an experimental property.
  public struct setDockTile: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Browser
    public static let name = "setDockTile"
    
    public var badgeLabel: String?
    
    /// - description: Png encoded image.
    public var image: String?
    
    public init(badgeLabel: String? = nil, image: String? = nil) {
      self.badgeLabel = badgeLabel
      self.image = image
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Browser {
  /// - description: Invoke custom browser commands used by telemetry.
  /// - intention: This is an experimental property.
  public struct executeBrowserCommand: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Browser
    public static let name = "executeBrowserCommand"
    
    public var commandId: BrowserCommandId
    
    public init(commandId: BrowserCommandId) {
      self.commandId = commandId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

