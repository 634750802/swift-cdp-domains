import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "Browser"

extension SwiftCDPDomains.Browser {
  /// - see: https://vanilla.aslushnikov.com/?Browser.BrowserContextID
  public struct BrowserContextID: Codable {
    private var rawValue: String
    
    public init(from decoder: Decoder) throws {
      self.rawValue = try decoder.singleValueContainer().decode(String.self)
    }
    
    public func encode(to encoder: Encoder) throws {
      var container = encoder.singleValueContainer()
      try container.encode(rawValue)
    }
  }
}

extension SwiftCDPDomains.Browser {
  /// - see: https://vanilla.aslushnikov.com/?Browser.WindowID
  public struct WindowID: Codable {
    private var rawValue: Int
    
    public init(from decoder: Decoder) throws {
      self.rawValue = try decoder.singleValueContainer().decode(Int.self)
    }
    
    public func encode(to encoder: Encoder) throws {
      var container = encoder.singleValueContainer()
      try container.encode(rawValue)
    }
  }
}

extension SwiftCDPDomains.Browser {
  /// - see: https://vanilla.aslushnikov.com/?Browser.WindowState
  /// - description: The state of the browser window.
  /// - choices: ["normal", "minimized", "maximized", "fullscreen"]
  public typealias WindowState = String
}

extension SwiftCDPDomains.Browser {
  /// - see: https://vanilla.aslushnikov.com/?Browser.Bounds
  /// - description: Browser window bounds information
  public struct Bounds: Codable {
    /// - description: The offset from the left edge of the screen to the window in pixels.
    public var left: Int?
    
    /// - description: The offset from the top edge of the screen to the window in pixels.
    public var top: Int?
    
    /// - description: The window width in pixels.
    public var width: Int?
    
    /// - description: The window height in pixels.
    public var height: Int?
    
    /// - description: The window state. Default to normal.
    public var windowState: WindowState?
    
  }
}

extension SwiftCDPDomains.Browser {
  /// - see: https://vanilla.aslushnikov.com/?Browser.PermissionType
  /// - choices: ["accessibilityEvents", "audioCapture", "backgroundSync", "backgroundFetch", "clipboardReadWrite", "clipboardSanitizedWrite", "durableStorage", "flash", "geolocation", "midi", "midiSysex", "nfc", "notifications", "paymentHandler", "periodicBackgroundSync", "protectedMediaIdentifier", "sensors", "videoCapture", "videoCapturePanTiltZoom", "idleDetection", "wakeLockScreen", "wakeLockSystem"]
  public typealias PermissionType = String
}

extension SwiftCDPDomains.Browser {
  /// - see: https://vanilla.aslushnikov.com/?Browser.PermissionSetting
  /// - choices: ["granted", "denied", "prompt"]
  public typealias PermissionSetting = String
}

extension SwiftCDPDomains.Browser {
  /// - see: https://vanilla.aslushnikov.com/?Browser.PermissionDescriptor
  /// - description: Definition of PermissionDescriptor defined in the Permissions API:
  /// https://w3c.github.io/permissions/#dictdef-permissiondescriptor.
  public struct PermissionDescriptor: Codable {
    /// - description: Name of permission.
    /// See https://cs.chromium.org/chromium/src/third_party/blink/renderer/modules/permissions/permission_descriptor.idl for valid permission names.
    public var name: String
    
    /// - description: For "midi" permission, may also specify sysex control.
    public var sysex: Bool?
    
    /// - description: For "push" permission, may specify userVisibleOnly.
    /// Note that userVisibleOnly = true is the only currently supported type.
    public var userVisibleOnly: Bool?
    
    /// - description: For "clipboard" permission, may specify allowWithoutSanitization.
    public var allowWithoutSanitization: Bool?
    
    /// - description: For "camera" permission, may specify panTiltZoom.
    public var panTiltZoom: Bool?
    
  }
}

extension SwiftCDPDomains.Browser {
  /// - see: https://vanilla.aslushnikov.com/?Browser.BrowserCommandId
  /// - description: Browser command ids used by executeBrowserCommand.
  /// - choices: ["openTabSearch", "closeTabSearch"]
  public struct BrowserCommandId: Codable {
    private var rawValue: String
    
    public init(from decoder: Decoder) throws {
      self.rawValue = try decoder.singleValueContainer().decode(String.self)
    }
    
    public func encode(to encoder: Encoder) throws {
      var container = encoder.singleValueContainer()
      try container.encode(rawValue)
    }
  }
}

extension SwiftCDPDomains.Browser {
  /// - see: https://vanilla.aslushnikov.com/?Browser.Bucket
  /// - description: Chrome histogram bucket.
  public struct Bucket: Codable {
    /// - description: Minimum value (inclusive).
    public var low: Int
    
    /// - description: Maximum value (exclusive).
    public var high: Int
    
    /// - description: Number of samples.
    public var count: Int
    
  }
}

extension SwiftCDPDomains.Browser {
  /// - see: https://vanilla.aslushnikov.com/?Browser.Histogram
  /// - description: Chrome histogram.
  public struct Histogram: Codable {
    /// - description: Name.
    public var name: String
    
    /// - description: Sum of sample values.
    public var sum: Int
    
    /// - description: Total number of samples.
    public var count: Int
    
    /// - description: Buckets.
    public var buckets: [Bucket]
    
  }
}

