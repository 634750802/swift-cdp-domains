import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "HeadlessExperimental"

extension SwiftCDPDomains.HeadlessExperimental {
  /// - see: https://vanilla.aslushnikov.com/?HeadlessExperimental.ScreenshotParams
  /// - description: Encoding options for a screenshot.
  public struct ScreenshotParams: Codable {
    /// - description: Image compression format (defaults to png).
    public var format: String?
    
    /// - description: Compression quality from range [0..100] (jpeg only).
    public var quality: Int?
    
  }
}

