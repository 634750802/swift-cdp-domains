import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "Emulation"

extension SwiftCDPDomains.Emulation {
  /// - see: https://vanilla.aslushnikov.com/?Emulation.ScreenOrientation
  /// - description: Screen orientation.
  public struct ScreenOrientation: Codable {
    /// - description: Orientation type.
    public var type: String
    
    /// - description: Orientation angle.
    public var angle: Int
    
  }
}

extension SwiftCDPDomains.Emulation {
  /// - see: https://vanilla.aslushnikov.com/?Emulation.DisplayFeature
  public struct DisplayFeature: Codable {
    /// - description: Orientation of a display feature in relation to screen
    public var orientation: String
    
    /// - description: The offset from the screen origin in either the x (for vertical
    /// orientation) or y (for horizontal orientation) direction.
    public var offset: Int
    
    /// - description: A display feature may mask content such that it is not physically
    /// displayed - this length along with the offset describes this area.
    /// A display feature that only splits content will have a 0 mask_length.
    public var maskLength: Int
    
  }
}

extension SwiftCDPDomains.Emulation {
  /// - see: https://vanilla.aslushnikov.com/?Emulation.MediaFeature
  public struct MediaFeature: Codable {
    public var name: String
    
    public var value: String
    
  }
}

extension SwiftCDPDomains.Emulation {
  /// - see: https://vanilla.aslushnikov.com/?Emulation.VirtualTimePolicy
  /// - description: advance: If the scheduler runs out of immediate work, the virtual time base may fast forward to
  /// allow the next delayed task (if any) to run; pause: The virtual time base may not advance;
  /// pauseIfNetworkFetchesPending: The virtual time base may not advance if there are any pending
  /// resource fetches.
  /// - choices: ["advance", "pause", "pauseIfNetworkFetchesPending"]
  public typealias VirtualTimePolicy = String
}

extension SwiftCDPDomains.Emulation {
  /// - see: https://vanilla.aslushnikov.com/?Emulation.UserAgentBrandVersion
  /// - description: Used to specify User Agent Cient Hints to emulate. See https://wicg.github.io/ua-client-hints
  public struct UserAgentBrandVersion: Codable {
    public var brand: String
    
    public var version: String
    
  }
}

extension SwiftCDPDomains.Emulation {
  /// - see: https://vanilla.aslushnikov.com/?Emulation.UserAgentMetadata
  /// - description: Used to specify User Agent Cient Hints to emulate. See https://wicg.github.io/ua-client-hints
  public struct UserAgentMetadata: Codable {
    public var brands: [UserAgentBrandVersion]
    
    public var fullVersion: String
    
    public var platform: String
    
    public var platformVersion: String
    
    public var architecture: String
    
    public var model: String
    
    public var mobile: Bool
    
  }
}

extension SwiftCDPDomains.Emulation {
  /// - see: https://vanilla.aslushnikov.com/?Emulation.DisabledImageType
  /// - description: Enum of image types that can be disabled.
  /// - choices: ["avif", "webp"]
  public typealias DisabledImageType = String
}

