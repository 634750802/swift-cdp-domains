import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "Memory"

extension SwiftCDPDomains.Memory {
  /// - see: https://vanilla.aslushnikov.com/?Memory.PressureLevel
  /// - description: Memory pressure level.
  /// - choices: ["moderate", "critical"]
  public typealias PressureLevel = String
}

extension SwiftCDPDomains.Memory {
  /// - see: https://vanilla.aslushnikov.com/?Memory.SamplingProfileNode
  /// - description: Heap profile sample.
  public struct SamplingProfileNode: Codable {
    /// - description: Size of the sampled allocation.
    public var size: JsonNumber
    
    /// - description: Total bytes attributed to this sample.
    public var total: JsonNumber
    
    /// - description: Execution stack at the point of allocation.
    public var stack: [String]
    
  }
}

extension SwiftCDPDomains.Memory {
  /// - see: https://vanilla.aslushnikov.com/?Memory.SamplingProfile
  /// - description: Array of heap profile samples.
  public struct SamplingProfile: Codable {
    public var samples: [SamplingProfileNode]
    
    public var modules: [Module]
    
  }
}

extension SwiftCDPDomains.Memory {
  /// - see: https://vanilla.aslushnikov.com/?Memory.Module
  /// - description: Executable module information
  public struct Module: Codable {
    /// - description: Name of the module.
    public var name: String
    
    /// - description: UUID of the module.
    public var uuid: String
    
    /// - description: Base address where the module is loaded into memory. Encoded as a decimal
    /// or hexadecimal (0x prefixed) string.
    public var baseAddress: String
    
    /// - description: Size of the module in bytes.
    public var size: JsonNumber
    
  }
}

