import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "HeapProfiler"

extension SwiftCDPDomains.HeapProfiler {
  public struct addHeapSnapshotChunk: ModelEvent {
    public typealias Model = SwiftCDPDomains.HeapProfiler
    
    public var chunk: String
    
  }
}

extension SwiftCDPDomains.HeapProfiler {
  /// - description: If heap objects tracking has been started then backend may send update for one or more fragments
  public struct heapStatsUpdate: ModelEvent {
    public typealias Model = SwiftCDPDomains.HeapProfiler
    
    /// - description: An array of triplets. Each triplet describes a fragment. The first integer is the fragment
    /// index, the second integer is a total count of objects for the fragment, the third integer is
    /// a total size of the objects for the fragment.
    public var statsUpdate: [Int]
    
  }
}

extension SwiftCDPDomains.HeapProfiler {
  /// - description: If heap objects tracking has been started then backend regularly sends a current value for last
  /// seen object id and corresponding timestamp. If the were changes in the heap since last event
  /// then one or more heapStatsUpdate events will be sent before a new lastSeenObjectId event.
  public struct lastSeenObjectId: ModelEvent {
    public typealias Model = SwiftCDPDomains.HeapProfiler
    
    public var lastSeenObjectId: Int
    
    public var timestamp: Int
    
  }
}

extension SwiftCDPDomains.HeapProfiler {
  public struct reportHeapSnapshotProgress: ModelEvent {
    public typealias Model = SwiftCDPDomains.HeapProfiler
    
    public var done: Int
    
    public var total: Int
    
    public var finished: Bool?
    
  }
}

extension SwiftCDPDomains.HeapProfiler {
  public struct resetProfiles: ModelEvent {
    public typealias Model = SwiftCDPDomains.HeapProfiler
    
  }
}

