import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Emulation"

extension SwiftCDPDomains.Emulation {
  /// - description: This domain emulates different environments for the page.
  public struct canEmulate: ModelMethod {
    public typealias Model = SwiftCDPDomains.Emulation
    public static let name = "canEmulate"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: True if emulation is supported.
      public var result: Bool
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Emulation {
  /// - description: This domain emulates different environments for the page.
  public struct clearDeviceMetricsOverride: ModelMethod {
    public typealias Model = SwiftCDPDomains.Emulation
    public static let name = "clearDeviceMetricsOverride"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Emulation {
  /// - description: This domain emulates different environments for the page.
  public struct clearGeolocationOverride: ModelMethod {
    public typealias Model = SwiftCDPDomains.Emulation
    public static let name = "clearGeolocationOverride"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Emulation {
  /// - description: This domain emulates different environments for the page.
  public struct resetPageScaleFactor: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Emulation
    public static let name = "resetPageScaleFactor"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Emulation {
  /// - description: This domain emulates different environments for the page.
  public struct setFocusEmulationEnabled: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Emulation
    public static let name = "setFocusEmulationEnabled"
    
    /// - description: Whether to enable to disable focus emulation.
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

extension SwiftCDPDomains.Emulation {
  /// - description: This domain emulates different environments for the page.
  public struct setCPUThrottlingRate: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Emulation
    public static let name = "setCPUThrottlingRate"
    
    /// - description: Throttling rate as a slowdown factor (1 is no throttle, 2 is 2x slowdown, etc).
    public var rate: JsonNumber
    
    public init(rate: JsonNumber) {
      self.rate = rate
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Emulation {
  /// - description: This domain emulates different environments for the page.
  public struct setDefaultBackgroundColorOverride: ModelMethod {
    public typealias Model = SwiftCDPDomains.Emulation
    public static let name = "setDefaultBackgroundColorOverride"
    
    /// - description: RGBA of the default background color. If not specified, any existing override will be
    /// cleared.
    public var color: SwiftCDPDomains.DOM.RGBA?
    
    public init(color: SwiftCDPDomains.DOM.RGBA? = nil) {
      self.color = color
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Emulation {
  /// - description: This domain emulates different environments for the page.
  public struct setDeviceMetricsOverride: ModelMethod {
    public typealias Model = SwiftCDPDomains.Emulation
    public static let name = "setDeviceMetricsOverride"
    
    /// - description: Overriding width value in pixels (minimum 0, maximum 10000000). 0 disables the override.
    public var width: Int
    
    /// - description: Overriding height value in pixels (minimum 0, maximum 10000000). 0 disables the override.
    public var height: Int
    
    /// - description: Overriding device scale factor value. 0 disables the override.
    public var deviceScaleFactor: JsonNumber
    
    /// - description: Whether to emulate mobile device. This includes viewport meta tag, overlay scrollbars, text
    /// autosizing and more.
    public var mobile: Bool
    
    /// - description: Scale to apply to resulting view image.
    /// - intention: This is an experimental property.
    public var scale: JsonNumber?
    
    /// - description: Overriding screen width value in pixels (minimum 0, maximum 10000000).
    /// - intention: This is an experimental property.
    public var screenWidth: Int?
    
    /// - description: Overriding screen height value in pixels (minimum 0, maximum 10000000).
    /// - intention: This is an experimental property.
    public var screenHeight: Int?
    
    /// - description: Overriding view X position on screen in pixels (minimum 0, maximum 10000000).
    /// - intention: This is an experimental property.
    public var positionX: Int?
    
    /// - description: Overriding view Y position on screen in pixels (minimum 0, maximum 10000000).
    /// - intention: This is an experimental property.
    public var positionY: Int?
    
    /// - description: Do not set visible view size, rely upon explicit setVisibleSize call.
    /// - intention: This is an experimental property.
    public var dontSetVisibleSize: Bool?
    
    /// - description: Screen orientation override.
    public var screenOrientation: ScreenOrientation?
    
    /// - description: If set, the visible area of the page will be overridden to this viewport. This viewport
    /// change is not observed by the page, e.g. viewport-relative elements do not change positions.
    /// - intention: This is an experimental property.
    public var viewport: SwiftCDPDomains.Page.Viewport?
    
    /// - description: If set, the display feature of a multi-segment screen. If not set, multi-segment support
    /// is turned-off.
    /// - intention: This is an experimental property.
    public var displayFeature: DisplayFeature?
    
    public init(width: Int, height: Int, deviceScaleFactor: JsonNumber, mobile: Bool, scale: JsonNumber? = nil, screenWidth: Int? = nil, screenHeight: Int? = nil, positionX: Int? = nil, positionY: Int? = nil, dontSetVisibleSize: Bool? = nil, screenOrientation: ScreenOrientation? = nil, viewport: SwiftCDPDomains.Page.Viewport? = nil, displayFeature: DisplayFeature? = nil) {
      self.width = width
      self.height = height
      self.deviceScaleFactor = deviceScaleFactor
      self.mobile = mobile
      self.scale = scale
      self.screenWidth = screenWidth
      self.screenHeight = screenHeight
      self.positionX = positionX
      self.positionY = positionY
      self.dontSetVisibleSize = dontSetVisibleSize
      self.screenOrientation = screenOrientation
      self.viewport = viewport
      self.displayFeature = displayFeature
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Emulation {
  /// - description: This domain emulates different environments for the page.
  public struct setScrollbarsHidden: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Emulation
    public static let name = "setScrollbarsHidden"
    
    /// - description: Whether scrollbars should be always hidden.
    public var hidden: Bool
    
    public init(hidden: Bool) {
      self.hidden = hidden
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Emulation {
  /// - description: This domain emulates different environments for the page.
  public struct setDocumentCookieDisabled: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Emulation
    public static let name = "setDocumentCookieDisabled"
    
    /// - description: Whether document.coookie API should be disabled.
    public var disabled: Bool
    
    public init(disabled: Bool) {
      self.disabled = disabled
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Emulation {
  /// - description: This domain emulates different environments for the page.
  public struct setEmitTouchEventsForMouse: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Emulation
    public static let name = "setEmitTouchEventsForMouse"
    
    /// - description: Whether touch emulation based on mouse input should be enabled.
    public var enabled: Bool
    
    /// - description: Touch/gesture events configuration. Default: current platform.
    public var configuration: String?
    
    public init(enabled: Bool, configuration: String? = nil) {
      self.enabled = enabled
      self.configuration = configuration
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Emulation {
  /// - description: This domain emulates different environments for the page.
  public struct setEmulatedMedia: ModelMethod {
    public typealias Model = SwiftCDPDomains.Emulation
    public static let name = "setEmulatedMedia"
    
    /// - description: Media type to emulate. Empty string disables the override.
    public var media: String?
    
    /// - description: Media features to emulate.
    public var features: [MediaFeature]?
    
    public init(media: String? = nil, features: [MediaFeature]? = nil) {
      self.media = media
      self.features = features
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Emulation {
  /// - description: This domain emulates different environments for the page.
  public struct setEmulatedVisionDeficiency: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Emulation
    public static let name = "setEmulatedVisionDeficiency"
    
    /// - description: Vision deficiency to emulate.
    public var type: String
    
    public init(type: String) {
      self.type = type
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Emulation {
  /// - description: This domain emulates different environments for the page.
  public struct setGeolocationOverride: ModelMethod {
    public typealias Model = SwiftCDPDomains.Emulation
    public static let name = "setGeolocationOverride"
    
    /// - description: Mock latitude
    public var latitude: Double?
    
    /// - description: Mock longitude
    public var longitude: Double?
    
    /// - description: Mock accuracy
    public var accuracy: JsonNumber?
    
    public init(latitude: Double? = nil, longitude: Double? = nil, accuracy: JsonNumber? = nil) {
      self.latitude = latitude
      self.longitude = longitude
      self.accuracy = accuracy
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Emulation {
  /// - description: This domain emulates different environments for the page.
  public struct setIdleOverride: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Emulation
    public static let name = "setIdleOverride"
    
    /// - description: Mock isUserActive
    public var isUserActive: Bool
    
    /// - description: Mock isScreenUnlocked
    public var isScreenUnlocked: Bool
    
    public init(isUserActive: Bool, isScreenUnlocked: Bool) {
      self.isUserActive = isUserActive
      self.isScreenUnlocked = isScreenUnlocked
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Emulation {
  /// - description: This domain emulates different environments for the page.
  public struct clearIdleOverride: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Emulation
    public static let name = "clearIdleOverride"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Emulation {
  /// - description: This domain emulates different environments for the page.
  @available(*, deprecated)
  public struct setNavigatorOverrides: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Emulation
    public static let name = "setNavigatorOverrides"
    
    /// - description: The platform navigator.platform should return.
    public var platform: String
    
    public init(platform: String) {
      self.platform = platform
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Emulation {
  /// - description: This domain emulates different environments for the page.
  public struct setPageScaleFactor: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Emulation
    public static let name = "setPageScaleFactor"
    
    /// - description: Page scale factor.
    public var pageScaleFactor: JsonNumber
    
    public init(pageScaleFactor: JsonNumber) {
      self.pageScaleFactor = pageScaleFactor
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Emulation {
  /// - description: This domain emulates different environments for the page.
  public struct setScriptExecutionDisabled: ModelMethod {
    public typealias Model = SwiftCDPDomains.Emulation
    public static let name = "setScriptExecutionDisabled"
    
    /// - description: Whether script execution should be disabled in the page.
    public var value: Bool
    
    public init(value: Bool) {
      self.value = value
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Emulation {
  /// - description: This domain emulates different environments for the page.
  public struct setTouchEmulationEnabled: ModelMethod {
    public typealias Model = SwiftCDPDomains.Emulation
    public static let name = "setTouchEmulationEnabled"
    
    /// - description: Whether the touch event emulation should be enabled.
    public var enabled: Bool
    
    /// - description: Maximum touch points supported. Defaults to one.
    public var maxTouchPoints: Int?
    
    public init(enabled: Bool, maxTouchPoints: Int? = nil) {
      self.enabled = enabled
      self.maxTouchPoints = maxTouchPoints
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Emulation {
  /// - description: This domain emulates different environments for the page.
  public struct setVirtualTimePolicy: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Emulation
    public static let name = "setVirtualTimePolicy"
    
    public var policy: VirtualTimePolicy
    
    /// - description: If set, after this many virtual milliseconds have elapsed virtual time will be paused and a
    /// virtualTimeBudgetExpired event is sent.
    public var budget: JsonNumber?
    
    /// - description: If set this specifies the maximum number of tasks that can be run before virtual is forced
    /// forwards to prevent deadlock.
    public var maxVirtualTimeTaskStarvationCount: Int?
    
    /// - description: If set the virtual time policy change should be deferred until any frame starts navigating.
    /// Note any previous deferred policy change is superseded.
    public var waitForNavigation: Bool?
    
    /// - description: If set, base::Time::Now will be overriden to initially return this value.
    public var initialVirtualTime: SwiftCDPDomains.Network.TimeSinceEpoch?
    
    public init(policy: VirtualTimePolicy, budget: JsonNumber? = nil, maxVirtualTimeTaskStarvationCount: Int? = nil, waitForNavigation: Bool? = nil, initialVirtualTime: SwiftCDPDomains.Network.TimeSinceEpoch? = nil) {
      self.policy = policy
      self.budget = budget
      self.maxVirtualTimeTaskStarvationCount = maxVirtualTimeTaskStarvationCount
      self.waitForNavigation = waitForNavigation
      self.initialVirtualTime = initialVirtualTime
    }
    
    public struct Result: Decodable {
      /// - description: Absolute timestamp at which virtual time was first enabled (up time in milliseconds).
      public var virtualTimeTicksBase: JsonNumber
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Emulation {
  /// - description: This domain emulates different environments for the page.
  public struct setLocaleOverride: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Emulation
    public static let name = "setLocaleOverride"
    
    /// - description: ICU style C locale (e.g. "en_US"). If not specified or empty, disables the override and
    /// restores default host system locale.
    public var locale: String?
    
    public init(locale: String? = nil) {
      self.locale = locale
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Emulation {
  /// - description: This domain emulates different environments for the page.
  public struct setTimezoneOverride: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Emulation
    public static let name = "setTimezoneOverride"
    
    /// - description: The timezone identifier. If empty, disables the override and
    /// restores default host system timezone.
    public var timezoneId: String
    
    public init(timezoneId: String) {
      self.timezoneId = timezoneId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Emulation {
  /// - description: This domain emulates different environments for the page.
  @available(*, deprecated)
  public struct setVisibleSize: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Emulation
    public static let name = "setVisibleSize"
    
    /// - description: Frame width (DIP).
    public var width: Int
    
    /// - description: Frame height (DIP).
    public var height: Int
    
    public init(width: Int, height: Int) {
      self.width = width
      self.height = height
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Emulation {
  /// - description: This domain emulates different environments for the page.
  public struct setDisabledImageTypes: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Emulation
    public static let name = "setDisabledImageTypes"
    
    /// - description: Image types to disable.
    public var imageTypes: [DisabledImageType]
    
    public init(imageTypes: [DisabledImageType]) {
      self.imageTypes = imageTypes
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Emulation {
  /// - description: This domain emulates different environments for the page.
  public struct setUserAgentOverride: ModelMethod {
    public typealias Model = SwiftCDPDomains.Emulation
    public static let name = "setUserAgentOverride"
    
    /// - description: User agent to use.
    public var userAgent: String
    
    /// - description: Browser langugage to emulate.
    public var acceptLanguage: String?
    
    /// - description: The platform navigator.platform should return.
    public var platform: String?
    
    /// - description: To be sent in Sec-CH-UA-* headers and returned in navigator.userAgentData
    /// - intention: This is an experimental property.
    public var userAgentMetadata: UserAgentMetadata?
    
    public init(userAgent: String, acceptLanguage: String? = nil, platform: String? = nil, userAgentMetadata: UserAgentMetadata? = nil) {
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

