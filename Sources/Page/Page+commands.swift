import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Page"

extension SwiftCDPDomains.Page {
  /// - description: Deprecated, please use addScriptToEvaluateOnNewDocument instead.
  /// - intention: This is an experimental property.
  @available(*, deprecated)
  public struct addScriptToEvaluateOnLoad: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "addScriptToEvaluateOnLoad"
    
    public var scriptSource: String
    
    public init(scriptSource: String) {
      self.scriptSource = scriptSource
    }
    
    public struct Result: Decodable {
      /// - description: Identifier of the added script.
      public var identifier: ScriptIdentifier
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Evaluates given script in every frame upon creation (before loading frame's scripts).
  public struct addScriptToEvaluateOnNewDocument: ModelMethod {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "addScriptToEvaluateOnNewDocument"
    
    public var source: String
    
    /// - description: If specified, creates an isolated world with the given name and evaluates given script in it.
    /// This world name will be used as the ExecutionContextDescription::name when the corresponding
    /// event is emitted.
    /// - intention: This is an experimental property.
    public var worldName: String?
    
    public init(source: String, worldName: String? = nil) {
      self.source = source
      self.worldName = worldName
    }
    
    public struct Result: Decodable {
      /// - description: Identifier of the added script.
      public var identifier: ScriptIdentifier
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Brings page to front (activates tab).
  public struct bringToFront: ModelMethod {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "bringToFront"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Capture page screenshot.
  public struct captureScreenshot: ModelMethod {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "captureScreenshot"
    
    /// - description: Image compression format (defaults to png).
    public var format: String?
    
    /// - description: Compression quality from range [0..100] (jpeg only).
    public var quality: Int?
    
    /// - description: Capture the screenshot of a given region only.
    public var clip: Viewport?
    
    /// - description: Capture the screenshot from the surface, rather than the view. Defaults to true.
    /// - intention: This is an experimental property.
    public var fromSurface: Bool?
    
    /// - description: Capture the screenshot beyond the viewport. Defaults to false.
    /// - intention: This is an experimental property.
    public var captureBeyondViewport: Bool?
    
    public init(format: String? = nil, quality: Int? = nil, clip: Viewport? = nil, fromSurface: Bool? = nil, captureBeyondViewport: Bool? = nil) {
      self.format = format
      self.quality = quality
      self.clip = clip
      self.fromSurface = fromSurface
      self.captureBeyondViewport = captureBeyondViewport
    }
    
    public struct Result: Decodable {
      /// - description: Base64-encoded image data.
      public var data: String
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Returns a snapshot of the page as a string. For MHTML format, the serialization includes
  /// iframes, shadow DOM, external resources, and element-inline styles.
  /// - intention: This is an experimental property.
  public struct captureSnapshot: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "captureSnapshot"
    
    /// - description: Format (defaults to mhtml).
    public var format: String?
    
    public init(format: String? = nil) {
      self.format = format
    }
    
    public struct Result: Decodable {
      /// - description: Serialized page data.
      public var data: String
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Clears the overriden device metrics.
  /// - intention: This is an experimental property.
  @available(*, deprecated)
  public struct clearDeviceMetricsOverride: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "clearDeviceMetricsOverride"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Clears the overridden Device Orientation.
  /// - intention: This is an experimental property.
  @available(*, deprecated)
  public struct clearDeviceOrientationOverride: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "clearDeviceOrientationOverride"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Clears the overriden Geolocation Position and Error.
  @available(*, deprecated)
  public struct clearGeolocationOverride: ModelMethod {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "clearGeolocationOverride"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Creates an isolated world for the given frame.
  public struct createIsolatedWorld: ModelMethod {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "createIsolatedWorld"
    
    /// - description: Id of the frame in which the isolated world should be created.
    public var frameId: FrameId
    
    /// - description: An optional name which is reported in the Execution Context.
    public var worldName: String?
    
    /// - description: Whether or not universal access should be granted to the isolated world. This is a powerful
    /// option, use with caution.
    public var grantUniveralAccess: Bool?
    
    public init(frameId: FrameId, worldName: String? = nil, grantUniveralAccess: Bool? = nil) {
      self.frameId = frameId
      self.worldName = worldName
      self.grantUniveralAccess = grantUniveralAccess
    }
    
    public struct Result: Decodable {
      /// - description: Execution context of the isolated world.
      public var executionContextId: SwiftCDPDomains.Runtime.ExecutionContextId
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Deletes browser cookie with given name, domain and path.
  /// - intention: This is an experimental property.
  @available(*, deprecated)
  public struct deleteCookie: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "deleteCookie"
    
    /// - description: Name of the cookie to remove.
    public var cookieName: String
    
    /// - description: URL to match cooke domain and path.
    public var url: String
    
    public init(cookieName: String, url: String) {
      self.cookieName = cookieName
      self.url = url
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Disables page domain notifications.
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Enables page domain notifications.
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "enable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  public struct getAppManifest: ModelMethod {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "getAppManifest"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: Manifest location.
      public var url: String
      public var errors: [AppManifestError]
      /// - description: Manifest content.
      public var data: String?
      /// - description: Parsed manifest properties
      /// - intention: This is an experimental property.
      public var parsed: AppManifestParsedProperties?
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - intention: This is an experimental property.
  public struct getInstallabilityErrors: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "getInstallabilityErrors"
    
    public init() {
    }
    
    public struct Result: Decodable {
      public var installabilityErrors: [InstallabilityError]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - intention: This is an experimental property.
  public struct getManifestIcons: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "getManifestIcons"
    
    public init() {
    }
    
    public struct Result: Decodable {
      public var primaryIcon: String?
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Returns all browser cookies. Depending on the backend support, will return detailed cookie
  /// information in the `cookies` field.
  /// - intention: This is an experimental property.
  @available(*, deprecated)
  public struct getCookies: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "getCookies"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: Array of cookie objects.
      public var cookies: [SwiftCDPDomains.Network.Cookie]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Returns present frame tree structure.
  public struct getFrameTree: ModelMethod {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "getFrameTree"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: Present frame tree structure.
      public var frameTree: FrameTree
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Returns metrics relating to the layouting of the page, such as viewport bounds/scale.
  public struct getLayoutMetrics: ModelMethod {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "getLayoutMetrics"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: Metrics relating to the layout viewport.
      public var layoutViewport: LayoutViewport
      /// - description: Metrics relating to the visual viewport.
      public var visualViewport: VisualViewport
      /// - description: Size of scrollable area.
      public var contentSize: SwiftCDPDomains.DOM.Rect
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Returns navigation history for the current page.
  public struct getNavigationHistory: ModelMethod {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "getNavigationHistory"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: Index of the current navigation history entry.
      public var currentIndex: Int
      /// - description: Array of navigation history entries.
      public var entries: [NavigationEntry]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Resets navigation history for the current page.
  public struct resetNavigationHistory: ModelMethod {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "resetNavigationHistory"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Returns content of the given resource.
  /// - intention: This is an experimental property.
  public struct getResourceContent: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "getResourceContent"
    
    /// - description: Frame id to get resource for.
    public var frameId: FrameId
    
    /// - description: URL of the resource to get content for.
    public var url: String
    
    public init(frameId: FrameId, url: String) {
      self.frameId = frameId
      self.url = url
    }
    
    public struct Result: Decodable {
      /// - description: Resource content.
      public var content: String
      /// - description: True, if content was served as base64.
      public var base64Encoded: Bool
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Returns present frame / resource tree structure.
  /// - intention: This is an experimental property.
  public struct getResourceTree: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "getResourceTree"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: Present frame / resource tree structure.
      public var frameTree: FrameResourceTree
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Accepts or dismisses a JavaScript initiated dialog (alert, confirm, prompt, or onbeforeunload).
  public struct handleJavaScriptDialog: ModelMethod {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "handleJavaScriptDialog"
    
    /// - description: Whether to accept or dismiss the dialog.
    public var accept: Bool
    
    /// - description: The text to enter into the dialog prompt before accepting. Used only if this is a prompt
    /// dialog.
    public var promptText: String?
    
    public init(accept: Bool, promptText: String? = nil) {
      self.accept = accept
      self.promptText = promptText
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Navigates current page to the given URL.
  public struct navigate: ModelMethod {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "navigate"
    
    /// - description: URL to navigate the page to.
    public var url: String
    
    /// - description: Referrer URL.
    public var referrer: String?
    
    /// - description: Intended transition type.
    public var transitionType: TransitionType?
    
    /// - description: Frame id to navigate, if not specified navigates the top frame.
    public var frameId: FrameId?
    
    /// - description: Referrer-policy used for the navigation.
    /// - intention: This is an experimental property.
    public var referrerPolicy: ReferrerPolicy?
    
    public init(url: String, referrer: String? = nil, transitionType: TransitionType? = nil, frameId: FrameId? = nil, referrerPolicy: ReferrerPolicy? = nil) {
      self.url = url
      self.referrer = referrer
      self.transitionType = transitionType
      self.frameId = frameId
      self.referrerPolicy = referrerPolicy
    }
    
    public struct Result: Decodable {
      /// - description: Frame id that has navigated (or failed to navigate)
      public var frameId: FrameId
      /// - description: Loader identifier.
      public var loaderId: SwiftCDPDomains.Network.LoaderId?
      /// - description: User friendly error message, present if and only if navigation has failed.
      public var errorText: String?
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Navigates current page to the given history entry.
  public struct navigateToHistoryEntry: ModelMethod {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "navigateToHistoryEntry"
    
    /// - description: Unique id of the entry to navigate to.
    public var entryId: Int
    
    public init(entryId: Int) {
      self.entryId = entryId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Print page as PDF.
  public struct printToPDF: ModelMethod {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "printToPDF"
    
    /// - description: Paper orientation. Defaults to false.
    public var landscape: Bool?
    
    /// - description: Display header and footer. Defaults to false.
    public var displayHeaderFooter: Bool?
    
    /// - description: Print background graphics. Defaults to false.
    public var printBackground: Bool?
    
    /// - description: Scale of the webpage rendering. Defaults to 1.
    public var scale: Double?
    
    /// - description: Paper width in inches. Defaults to 8.5 inches.
    public var paperWidth: Int?
    
    /// - description: Paper height in inches. Defaults to 11 inches.
    public var paperHeight: Int?
    
    /// - description: Top margin in inches. Defaults to 1cm (~0.4 inches).
    public var marginTop: Int?
    
    /// - description: Bottom margin in inches. Defaults to 1cm (~0.4 inches).
    public var marginBottom: Int?
    
    /// - description: Left margin in inches. Defaults to 1cm (~0.4 inches).
    public var marginLeft: Int?
    
    /// - description: Right margin in inches. Defaults to 1cm (~0.4 inches).
    public var marginRight: Int?
    
    /// - description: Paper ranges to print, e.g., '1-5, 8, 11-13'. Defaults to the empty string, which means
    /// print all pages.
    public var pageRanges: String?
    
    /// - description: Whether to silently ignore invalid but successfully parsed page ranges, such as '3-2'.
    /// Defaults to false.
    public var ignoreInvalidPageRanges: Bool?
    
    /// - description: HTML template for the print header. Should be valid HTML markup with following
    /// classes used to inject printing values into them:
    /// - `date`: formatted print date
    /// - `title`: document title
    /// - `url`: document location
    /// - `pageNumber`: current page number
    /// - `totalPages`: total pages in the document
    /// For example, `<span class=title></span>` would generate span containing the title.
    public var headerTemplate: String?
    
    /// - description: HTML template for the print footer. Should use the same format as the `headerTemplate`.
    public var footerTemplate: String?
    
    /// - description: Whether or not to prefer page size as defined by css. Defaults to false,
    /// in which case the content will be scaled to fit the paper size.
    public var preferCSSPageSize: Bool?
    
    /// - description: return as stream
    /// - intention: This is an experimental property.
    public var transferMode: String?
    
    public init(landscape: Bool? = nil, displayHeaderFooter: Bool? = nil, printBackground: Bool? = nil, scale: Double? = nil, paperWidth: Int? = nil, paperHeight: Int? = nil, marginTop: Int? = nil, marginBottom: Int? = nil, marginLeft: Int? = nil, marginRight: Int? = nil, pageRanges: String? = nil, ignoreInvalidPageRanges: Bool? = nil, headerTemplate: String? = nil, footerTemplate: String? = nil, preferCSSPageSize: Bool? = nil, transferMode: String? = nil) {
      self.landscape = landscape
      self.displayHeaderFooter = displayHeaderFooter
      self.printBackground = printBackground
      self.scale = scale
      self.paperWidth = paperWidth
      self.paperHeight = paperHeight
      self.marginTop = marginTop
      self.marginBottom = marginBottom
      self.marginLeft = marginLeft
      self.marginRight = marginRight
      self.pageRanges = pageRanges
      self.ignoreInvalidPageRanges = ignoreInvalidPageRanges
      self.headerTemplate = headerTemplate
      self.footerTemplate = footerTemplate
      self.preferCSSPageSize = preferCSSPageSize
      self.transferMode = transferMode
    }
    
    public struct Result: Decodable {
      /// - description: Base64-encoded pdf data. Empty if |returnAsStream| is specified.
      public var data: String
      /// - description: A handle of the stream that holds resulting PDF data.
      /// - intention: This is an experimental property.
      public var stream: SwiftCDPDomains.IO.StreamHandle?
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Reloads given page optionally ignoring the cache.
  public struct reload: ModelMethod {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "reload"
    
    /// - description: If true, browser cache is ignored (as if the user pressed Shift+refresh).
    public var ignoreCache: Bool?
    
    /// - description: If set, the script will be injected into all frames of the inspected page after reload.
    /// Argument will be ignored if reloading dataURL origin.
    public var scriptToEvaluateOnLoad: String?
    
    public init(ignoreCache: Bool? = nil, scriptToEvaluateOnLoad: String? = nil) {
      self.ignoreCache = ignoreCache
      self.scriptToEvaluateOnLoad = scriptToEvaluateOnLoad
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Deprecated, please use removeScriptToEvaluateOnNewDocument instead.
  /// - intention: This is an experimental property.
  @available(*, deprecated)
  public struct removeScriptToEvaluateOnLoad: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "removeScriptToEvaluateOnLoad"
    
    public var identifier: ScriptIdentifier
    
    public init(identifier: ScriptIdentifier) {
      self.identifier = identifier
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Removes given script from the list.
  public struct removeScriptToEvaluateOnNewDocument: ModelMethod {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "removeScriptToEvaluateOnNewDocument"
    
    public var identifier: ScriptIdentifier
    
    public init(identifier: ScriptIdentifier) {
      self.identifier = identifier
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Acknowledges that a screencast frame has been received by the frontend.
  /// - intention: This is an experimental property.
  public struct screencastFrameAck: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "screencastFrameAck"
    
    /// - description: Frame number.
    public var sessionId: Int
    
    public init(sessionId: Int) {
      self.sessionId = sessionId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Searches for given string in resource content.
  /// - intention: This is an experimental property.
  public struct searchInResource: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "searchInResource"
    
    /// - description: Frame id for resource to search in.
    public var frameId: FrameId
    
    /// - description: URL of the resource to search in.
    public var url: String
    
    /// - description: String to search for.
    public var query: String
    
    /// - description: If true, search is case sensitive.
    public var caseSensitive: Bool?
    
    /// - description: If true, treats string parameter as regex.
    public var isRegex: Bool?
    
    public init(frameId: FrameId, url: String, query: String, caseSensitive: Bool? = nil, isRegex: Bool? = nil) {
      self.frameId = frameId
      self.url = url
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

extension SwiftCDPDomains.Page {
  /// - description: Enable Chrome's experimental ad filter on all sites.
  /// - intention: This is an experimental property.
  public struct setAdBlockingEnabled: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "setAdBlockingEnabled"
    
    /// - description: Whether to block ads.
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

extension SwiftCDPDomains.Page {
  /// - description: Enable page Content Security Policy by-passing.
  /// - intention: This is an experimental property.
  public struct setBypassCSP: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "setBypassCSP"
    
    /// - description: Whether to bypass page CSP.
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

extension SwiftCDPDomains.Page {
  /// - description: Overrides the values of device screen dimensions (window.screen.width, window.screen.height,
  /// window.innerWidth, window.innerHeight, and "device-width"/"device-height"-related CSS media
  /// query results).
  /// - intention: This is an experimental property.
  @available(*, deprecated)
  public struct setDeviceMetricsOverride: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "setDeviceMetricsOverride"
    
    /// - description: Overriding width value in pixels (minimum 0, maximum 10000000). 0 disables the override.
    public var width: Int
    
    /// - description: Overriding height value in pixels (minimum 0, maximum 10000000). 0 disables the override.
    public var height: Int
    
    /// - description: Overriding device scale factor value. 0 disables the override.
    public var deviceScaleFactor: Double
    
    /// - description: Whether to emulate mobile device. This includes viewport meta tag, overlay scrollbars, text
    /// autosizing and more.
    public var mobile: Bool
    
    /// - description: Scale to apply to resulting view image.
    public var scale: Double?
    
    /// - description: Overriding screen width value in pixels (minimum 0, maximum 10000000).
    public var screenWidth: Int?
    
    /// - description: Overriding screen height value in pixels (minimum 0, maximum 10000000).
    public var screenHeight: Int?
    
    /// - description: Overriding view X position on screen in pixels (minimum 0, maximum 10000000).
    public var positionX: Int?
    
    /// - description: Overriding view Y position on screen in pixels (minimum 0, maximum 10000000).
    public var positionY: Int?
    
    /// - description: Do not set visible view size, rely upon explicit setVisibleSize call.
    public var dontSetVisibleSize: Bool?
    
    /// - description: Screen orientation override.
    public var screenOrientation: SwiftCDPDomains.Emulation.ScreenOrientation?
    
    /// - description: The viewport dimensions and scale. If not set, the override is cleared.
    public var viewport: Viewport?
    
    public init(width: Int, height: Int, deviceScaleFactor: Double, mobile: Bool, scale: Double? = nil, screenWidth: Int? = nil, screenHeight: Int? = nil, positionX: Int? = nil, positionY: Int? = nil, dontSetVisibleSize: Bool? = nil, screenOrientation: SwiftCDPDomains.Emulation.ScreenOrientation? = nil, viewport: Viewport? = nil) {
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
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Overrides the Device Orientation.
  /// - intention: This is an experimental property.
  @available(*, deprecated)
  public struct setDeviceOrientationOverride: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "setDeviceOrientationOverride"
    
    /// - description: Mock alpha
    public var alpha: Double
    
    /// - description: Mock beta
    public var beta: Double
    
    /// - description: Mock gamma
    public var gamma: Double
    
    public init(alpha: Double, beta: Double, gamma: Double) {
      self.alpha = alpha
      self.beta = beta
      self.gamma = gamma
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Set generic font families.
  /// - intention: This is an experimental property.
  public struct setFontFamilies: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "setFontFamilies"
    
    /// - description: Specifies font families to set. If a font family is not specified, it won't be changed.
    public var fontFamilies: FontFamilies
    
    public init(fontFamilies: FontFamilies) {
      self.fontFamilies = fontFamilies
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Set default font sizes.
  /// - intention: This is an experimental property.
  public struct setFontSizes: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "setFontSizes"
    
    /// - description: Specifies font sizes to set. If a font size is not specified, it won't be changed.
    public var fontSizes: FontSizes
    
    public init(fontSizes: FontSizes) {
      self.fontSizes = fontSizes
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Sets given markup as the document's HTML.
  public struct setDocumentContent: ModelMethod {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "setDocumentContent"
    
    /// - description: Frame id to set HTML for.
    public var frameId: FrameId
    
    /// - description: HTML content to set.
    public var html: String
    
    public init(frameId: FrameId, html: String) {
      self.frameId = frameId
      self.html = html
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Set the behavior when downloading a file.
  /// - intention: This is an experimental property.
  @available(*, deprecated)
  public struct setDownloadBehavior: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "setDownloadBehavior"
    
    /// - description: Whether to allow all or deny all download requests, or use default Chrome behavior if
    /// available (otherwise deny).
    public var behavior: String
    
    /// - description: The default path to save downloaded files to. This is requred if behavior is set to 'allow'
    public var downloadPath: String?
    
    public init(behavior: String, downloadPath: String? = nil) {
      self.behavior = behavior
      self.downloadPath = downloadPath
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Overrides the Geolocation Position or Error. Omitting any of the parameters emulates position
  /// unavailable.
  @available(*, deprecated)
  public struct setGeolocationOverride: ModelMethod {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "setGeolocationOverride"
    
    /// - description: Mock latitude
    public var latitude: Double?
    
    /// - description: Mock longitude
    public var longitude: Double?
    
    /// - description: Mock accuracy
    public var accuracy: Double?
    
    public init(latitude: Double? = nil, longitude: Double? = nil, accuracy: Double? = nil) {
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

extension SwiftCDPDomains.Page {
  /// - description: Controls whether page will emit lifecycle events.
  /// - intention: This is an experimental property.
  public struct setLifecycleEventsEnabled: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "setLifecycleEventsEnabled"
    
    /// - description: If true, starts emitting lifecycle events.
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

extension SwiftCDPDomains.Page {
  /// - description: Toggles mouse event-based touch event emulation.
  /// - intention: This is an experimental property.
  @available(*, deprecated)
  public struct setTouchEmulationEnabled: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "setTouchEmulationEnabled"
    
    /// - description: Whether the touch event emulation should be enabled.
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

extension SwiftCDPDomains.Page {
  /// - description: Starts sending each frame using the `screencastFrame` event.
  /// - intention: This is an experimental property.
  public struct startScreencast: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "startScreencast"
    
    /// - description: Image compression format.
    public var format: String?
    
    /// - description: Compression quality from range [0..100].
    public var quality: Int?
    
    /// - description: Maximum screenshot width.
    public var maxWidth: Int?
    
    /// - description: Maximum screenshot height.
    public var maxHeight: Int?
    
    /// - description: Send every n-th frame.
    public var everyNthFrame: Int?
    
    public init(format: String? = nil, quality: Int? = nil, maxWidth: Int? = nil, maxHeight: Int? = nil, everyNthFrame: Int? = nil) {
      self.format = format
      self.quality = quality
      self.maxWidth = maxWidth
      self.maxHeight = maxHeight
      self.everyNthFrame = everyNthFrame
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Force the page stop all navigations and pending resource fetches.
  public struct stopLoading: ModelMethod {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "stopLoading"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Crashes renderer on the IO thread, generates minidumps.
  /// - intention: This is an experimental property.
  public struct crash: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "crash"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Tries to close page, running its beforeunload hooks, if any.
  /// - intention: This is an experimental property.
  public struct close: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "close"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Tries to update the web lifecycle state of the page.
  /// It will transition the page to the given state according to:
  /// https://github.com/WICG/web-lifecycle/
  /// - intention: This is an experimental property.
  public struct setWebLifecycleState: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "setWebLifecycleState"
    
    /// - description: Target lifecycle state
    public var state: String
    
    public init(state: String) {
      self.state = state
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Stops sending each frame in the `screencastFrame`.
  /// - intention: This is an experimental property.
  public struct stopScreencast: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "stopScreencast"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Forces compilation cache to be generated for every subresource script.
  /// - intention: This is an experimental property.
  public struct setProduceCompilationCache: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "setProduceCompilationCache"
    
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

extension SwiftCDPDomains.Page {
  /// - description: Seeds compilation cache for given url. Compilation cache does not survive
  /// cross-process navigation.
  /// - intention: This is an experimental property.
  public struct addCompilationCache: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "addCompilationCache"
    
    public var url: String
    
    /// - description: Base64-encoded data
    public var data: String
    
    public init(url: String, data: String) {
      self.url = url
      self.data = data
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Clears seeded compilation cache.
  /// - intention: This is an experimental property.
  public struct clearCompilationCache: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "clearCompilationCache"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Generates a report for testing.
  /// - intention: This is an experimental property.
  public struct generateTestReport: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "generateTestReport"
    
    /// - description: Message to be displayed in the report.
    public var message: String
    
    /// - description: Specifies the endpoint group to deliver the report to.
    public var group: String?
    
    public init(message: String, group: String? = nil) {
      self.message = message
      self.group = group
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Pauses page execution. Can be resumed using generic Runtime.runIfWaitingForDebugger.
  /// - intention: This is an experimental property.
  public struct waitForDebugger: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "waitForDebugger"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Intercept file chooser requests and transfer control to protocol clients.
  /// When file chooser interception is enabled, native file chooser dialog is not shown.
  /// Instead, a protocol event `Page.fileChooserOpened` is emitted.
  /// - intention: This is an experimental property.
  public struct setInterceptFileChooserDialog: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    public static let name = "setInterceptFileChooserDialog"
    
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

