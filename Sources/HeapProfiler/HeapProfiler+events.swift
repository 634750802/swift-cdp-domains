import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "HeapProfiler"

extension SwiftCDPDomains.HeapProfiler {
  /// - intention: This is an experimental property.
  public struct addHeapSnapshotChunk: ModelEvent {
    public typealias Model = SwiftCDPDomains.HeapProfiler
    
    public var chunk: String
    
  }
}

extension SwiftCDPDomains.HeapProfiler {
  /// - intention: This is an experimental property.
  public struct heapStatsUpdate: ModelEvent {
    public typealias Model = SwiftCDPDomains.HeapProfiler
    
    /// - description: An array of triplets. Each triplet describes a fragment. The first integer is the fragment
    /// index, the second integer is a total count of objects for the fragment, the third integer is
    /// a total size of the objects for the fragment.
    public var statsUpdate: [Int]
    
  }
}

extension SwiftCDPDomains.HeapProfiler {
  /// - intention: This is an experimental property.
  public struct lastSeenObjectId: ModelEvent {
    public typealias Model = SwiftCDPDomains.HeapProfiler
    
    public var lastSeenObjectId: Int
    
    public var timestamp: JsonNumber
    
  }
}

extension SwiftCDPDomains.HeapProfiler {
  /// - intention: This is an experimental property.
  public struct reportHeapSnapshotProgress: ModelEvent {
    public typealias Model = SwiftCDPDomains.HeapProfiler
    
    public var done: Int
    
    public var total: Int
    
    public var finished: Bool?
    
  }
}

extension SwiftCDPDomains.HeapProfiler {
  /// - intention: This is an experimental property.
  public struct resetProfiles: ModelEvent {
    public typealias Model = SwiftCDPDomains.HeapProfiler
    
  }
}

