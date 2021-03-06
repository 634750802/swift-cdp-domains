import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "HeadlessExperimental"

extension SwiftCDPDomains.HeadlessExperimental {
  /// - description: Sends a BeginFrame to the target and returns when the frame was completed. Optionally captures a
  /// screenshot from the resulting frame. Requires that the target was created with enabled
  /// BeginFrameControl. Designed for use with --run-all-compositor-stages-before-draw, see also
  /// https://goo.gl/3zHXhB for more background.
  public struct beginFrame: ModelMethod {
    public typealias Model = SwiftCDPDomains.HeadlessExperimental
    public static let name = "beginFrame"
    
    /// - description: Timestamp of this BeginFrame in Renderer TimeTicks (milliseconds of uptime). If not set,
    /// the current time will be used.
    public var frameTimeTicks: Int?
    
    /// - description: The interval between BeginFrames that is reported to the compositor, in milliseconds.
    /// Defaults to a 60 frames/second interval, i.e. about 16.666 milliseconds.
    public var interval: Int?
    
    /// - description: Whether updates should not be committed and drawn onto the display. False by default. If
    /// true, only side effects of the BeginFrame will be run, such as layout and animations, but
    /// any visual updates may not be visible on the display or in screenshots.
    public var noDisplayUpdates: Bool?
    
    /// - description: If set, a screenshot of the frame will be captured and returned in the response. Otherwise,
    /// no screenshot will be captured. Note that capturing a screenshot can fail, for example,
    /// during renderer initialization. In such a case, no screenshot data will be returned.
    public var screenshot: ScreenshotParams?
    
    public init(frameTimeTicks: Int? = nil, interval: Int? = nil, noDisplayUpdates: Bool? = nil, screenshot: ScreenshotParams? = nil) {
      self.frameTimeTicks = frameTimeTicks
      self.interval = interval
      self.noDisplayUpdates = noDisplayUpdates
      self.screenshot = screenshot
    }
    
    public struct Result: Decodable {
      /// - description: Whether the BeginFrame resulted in damage and, thus, a new frame was committed to the
      /// display. Reported for diagnostic uses, may be removed in the future.
      public var hasDamage: Bool
      /// - description: Base64-encoded image data of the screenshot, if one was requested and successfully taken.
      public var screenshotData: String?
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.HeadlessExperimental {
  /// - description: Disables headless events for the target.
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.HeadlessExperimental
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.HeadlessExperimental {
  /// - description: Enables headless events for the target.
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.HeadlessExperimental
    public static let name = "enable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

