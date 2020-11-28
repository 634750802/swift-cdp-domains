import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "SystemInfo"

extension SwiftCDPDomains.SystemInfo {
  /// - see: https://vanilla.aslushnikov.com/?SystemInfo.GPUDevice
  /// - description: Describes a single graphics processor (GPU).
  public struct GPUDevice: Codable {
    /// - description: PCI ID of the GPU vendor, if available; 0 otherwise.
    public var vendorId: JsonNumber
    
    /// - description: PCI ID of the GPU device, if available; 0 otherwise.
    public var deviceId: JsonNumber
    
    /// - description: Sub sys ID of the GPU, only available on Windows.
    public var subSysId: JsonNumber?
    
    /// - description: Revision of the GPU, only available on Windows.
    public var revision: JsonNumber?
    
    /// - description: String description of the GPU vendor, if the PCI ID is not available.
    public var vendorString: String
    
    /// - description: String description of the GPU device, if the PCI ID is not available.
    public var deviceString: String
    
    /// - description: String description of the GPU driver vendor.
    public var driverVendor: String
    
    /// - description: String description of the GPU driver version.
    public var driverVersion: String
    
  }
}

extension SwiftCDPDomains.SystemInfo {
  /// - see: https://vanilla.aslushnikov.com/?SystemInfo.Size
  /// - description: Describes the width and height dimensions of an entity.
  public struct Size: Codable {
    /// - description: Width in pixels.
    public var width: Int
    
    /// - description: Height in pixels.
    public var height: Int
    
  }
}

extension SwiftCDPDomains.SystemInfo {
  /// - see: https://vanilla.aslushnikov.com/?SystemInfo.VideoDecodeAcceleratorCapability
  /// - description: Describes a supported video decoding profile with its associated minimum and
  /// maximum resolutions.
  public struct VideoDecodeAcceleratorCapability: Codable {
    /// - description: Video codec profile that is supported, e.g. VP9 Profile 2.
    public var profile: String
    
    /// - description: Maximum video dimensions in pixels supported for this |profile|.
    public var maxResolution: Size
    
    /// - description: Minimum video dimensions in pixels supported for this |profile|.
    public var minResolution: Size
    
  }
}

extension SwiftCDPDomains.SystemInfo {
  /// - see: https://vanilla.aslushnikov.com/?SystemInfo.VideoEncodeAcceleratorCapability
  /// - description: Describes a supported video encoding profile with its associated maximum
  /// resolution and maximum framerate.
  public struct VideoEncodeAcceleratorCapability: Codable {
    /// - description: Video codec profile that is supported, e.g H264 Main.
    public var profile: String
    
    /// - description: Maximum video dimensions in pixels supported for this |profile|.
    public var maxResolution: Size
    
    /// - description: Maximum encoding framerate in frames per second supported for this
    /// |profile|, as fraction's numerator and denominator, e.g. 24/1 fps,
    /// 24000/1001 fps, etc.
    public var maxFramerateNumerator: Int
    
    public var maxFramerateDenominator: Int
    
  }
}

extension SwiftCDPDomains.SystemInfo {
  /// - see: https://vanilla.aslushnikov.com/?SystemInfo.SubsamplingFormat
  /// - description: YUV subsampling type of the pixels of a given image.
  /// - choices: ["yuv420", "yuv422", "yuv444"]
  public typealias SubsamplingFormat = String
}

extension SwiftCDPDomains.SystemInfo {
  /// - see: https://vanilla.aslushnikov.com/?SystemInfo.ImageType
  /// - description: Image format of a given image.
  /// - choices: ["jpeg", "webp", "unknown"]
  public typealias ImageType = String
}

extension SwiftCDPDomains.SystemInfo {
  /// - see: https://vanilla.aslushnikov.com/?SystemInfo.ImageDecodeAcceleratorCapability
  /// - description: Describes a supported image decoding profile with its associated minimum and
  /// maximum resolutions and subsampling.
  public struct ImageDecodeAcceleratorCapability: Codable {
    /// - description: Image coded, e.g. Jpeg.
    public var imageType: ImageType
    
    /// - description: Maximum supported dimensions of the image in pixels.
    public var maxDimensions: Size
    
    /// - description: Minimum supported dimensions of the image in pixels.
    public var minDimensions: Size
    
    /// - description: Optional array of supported subsampling formats, e.g. 4:2:0, if known.
    public var subsamplings: [SubsamplingFormat]
    
  }
}

extension SwiftCDPDomains.SystemInfo {
  /// - see: https://vanilla.aslushnikov.com/?SystemInfo.GPUInfo
  /// - description: Provides information about the GPU(s) on the system.
  public struct GPUInfo: Codable {
    /// - description: The graphics devices on the system. Element 0 is the primary GPU.
    public var devices: [GPUDevice]
    
    /// - description: An optional dictionary of additional GPU related attributes.
    public var auxAttributes: [String: JsonPrimitive]?
    
    /// - description: An optional dictionary of graphics features and their status.
    public var featureStatus: [String: JsonPrimitive]?
    
    /// - description: An optional array of GPU driver bug workarounds.
    public var driverBugWorkarounds: [String]
    
    /// - description: Supported accelerated video decoding capabilities.
    public var videoDecoding: [VideoDecodeAcceleratorCapability]
    
    /// - description: Supported accelerated video encoding capabilities.
    public var videoEncoding: [VideoEncodeAcceleratorCapability]
    
    /// - description: Supported accelerated image decoding capabilities.
    public var imageDecoding: [ImageDecodeAcceleratorCapability]
    
  }
}

extension SwiftCDPDomains.SystemInfo {
  /// - see: https://vanilla.aslushnikov.com/?SystemInfo.ProcessInfo
  /// - description: Represents process info.
  public struct ProcessInfo: Codable {
    /// - description: Specifies process type.
    public var type: String
    
    /// - description: Specifies process id.
    public var id: Int
    
    /// - description: Specifies cumulative CPU usage in seconds across all threads of the
    /// process since the process start.
    public var cpuTime: JsonNumber
    
  }
}

