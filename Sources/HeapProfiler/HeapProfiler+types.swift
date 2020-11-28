import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "HeapProfiler"

extension SwiftCDPDomains.HeapProfiler {
  /// - see: https://vanilla.aslushnikov.com/?HeapProfiler.HeapSnapshotObjectId
  /// - description: Heap snapshot object id.
  public struct HeapSnapshotObjectId: Codable {
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

extension SwiftCDPDomains.HeapProfiler {
  /// - see: https://vanilla.aslushnikov.com/?HeapProfiler.SamplingHeapProfileNode
  /// - description: Sampling Heap Profile node. Holds callsite information, allocation statistics and child nodes.
  public struct SamplingHeapProfileNode: Codable {
    /// - description: Function location.
    public var callFrame: SwiftCDPDomains.Runtime.CallFrame
    
    /// - description: Allocations size in bytes for the node excluding children.
    public var selfSize: Int
    
    /// - description: Node id. Ids are unique across all profiles collected between startSampling and stopSampling.
    public var id: Int
    
    /// - description: Child nodes.
    public var children: [StructReference<SamplingHeapProfileNode>]
    
  }
}

extension SwiftCDPDomains.HeapProfiler {
  /// - see: https://vanilla.aslushnikov.com/?HeapProfiler.SamplingHeapProfileSample
  /// - description: A single sample from a sampling profile.
  public struct SamplingHeapProfileSample: Codable {
    /// - description: Allocation size in bytes attributed to the sample.
    public var size: Int
    
    /// - description: Id of the corresponding profile tree node.
    public var nodeId: Int
    
    /// - description: Time-ordered sample ordinal number. It is unique across all profiles retrieved
    /// between startSampling and stopSampling.
    public var ordinal: Int
    
  }
}

extension SwiftCDPDomains.HeapProfiler {
  /// - see: https://vanilla.aslushnikov.com/?HeapProfiler.SamplingHeapProfile
  /// - description: Sampling profile.
  public struct SamplingHeapProfile: Codable {
    public var head: SamplingHeapProfileNode
    
    public var samples: [SamplingHeapProfileSample]
    
  }
}

