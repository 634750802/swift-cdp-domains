import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "HeapProfiler"

extension SwiftCDPDomains.HeapProfiler {
  /// - description: Enables console to refer to the node with given id via $x (see Command Line API for more details
  /// $x functions).
  public struct addInspectedHeapObject: ModelMethod {
    public typealias Model = SwiftCDPDomains.HeapProfiler
    public static let name = "addInspectedHeapObject"
    
    /// - description: Heap snapshot object id to be accessible by means of $x command line API.
    public var heapObjectId: HeapSnapshotObjectId
    
    public init(heapObjectId: HeapSnapshotObjectId) {
      self.heapObjectId = heapObjectId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.HeapProfiler {
  public struct collectGarbage: ModelMethod {
    public typealias Model = SwiftCDPDomains.HeapProfiler
    public static let name = "collectGarbage"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.HeapProfiler {
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.HeapProfiler
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.HeapProfiler {
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.HeapProfiler
    public static let name = "enable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.HeapProfiler {
  public struct getHeapObjectId: ModelMethod {
    public typealias Model = SwiftCDPDomains.HeapProfiler
    public static let name = "getHeapObjectId"
    
    /// - description: Identifier of the object to get heap object id for.
    public var objectId: SwiftCDPDomains.Runtime.RemoteObjectId
    
    public init(objectId: SwiftCDPDomains.Runtime.RemoteObjectId) {
      self.objectId = objectId
    }
    
    public struct Result: Decodable {
      /// - description: Id of the heap snapshot object corresponding to the passed remote object id.
      public var heapSnapshotObjectId: HeapSnapshotObjectId
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.HeapProfiler {
  public struct getObjectByHeapObjectId: ModelMethod {
    public typealias Model = SwiftCDPDomains.HeapProfiler
    public static let name = "getObjectByHeapObjectId"
    
    public var objectId: HeapSnapshotObjectId
    
    /// - description: Symbolic group name that can be used to release multiple objects.
    public var objectGroup: String?
    
    public init(objectId: HeapSnapshotObjectId, objectGroup: String? = nil) {
      self.objectId = objectId
      self.objectGroup = objectGroup
    }
    
    public struct Result: Decodable {
      /// - description: Evaluation result.
      public var result: SwiftCDPDomains.Runtime.RemoteObject
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.HeapProfiler {
  public struct getSamplingProfile: ModelMethod {
    public typealias Model = SwiftCDPDomains.HeapProfiler
    public static let name = "getSamplingProfile"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: Return the sampling profile being collected.
      public var profile: SamplingHeapProfile
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.HeapProfiler {
  public struct startSampling: ModelMethod {
    public typealias Model = SwiftCDPDomains.HeapProfiler
    public static let name = "startSampling"
    
    /// - description: Average sample interval in bytes. Poisson distribution is used for the intervals. The
    /// default value is 32768 bytes.
    public var samplingInterval: Int?
    
    public init(samplingInterval: Int? = nil) {
      self.samplingInterval = samplingInterval
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.HeapProfiler {
  public struct startTrackingHeapObjects: ModelMethod {
    public typealias Model = SwiftCDPDomains.HeapProfiler
    public static let name = "startTrackingHeapObjects"
    
    public var trackAllocations: Bool?
    
    public init(trackAllocations: Bool? = nil) {
      self.trackAllocations = trackAllocations
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.HeapProfiler {
  public struct stopSampling: ModelMethod {
    public typealias Model = SwiftCDPDomains.HeapProfiler
    public static let name = "stopSampling"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: Recorded sampling heap profile.
      public var profile: SamplingHeapProfile
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.HeapProfiler {
  public struct stopTrackingHeapObjects: ModelMethod {
    public typealias Model = SwiftCDPDomains.HeapProfiler
    public static let name = "stopTrackingHeapObjects"
    
    /// - description: If true 'reportHeapSnapshotProgress' events will be generated while snapshot is being taken
    /// when the tracking is stopped.
    public var reportProgress: Bool?
    
    public var treatGlobalObjectsAsRoots: Bool?
    
    public init(reportProgress: Bool? = nil, treatGlobalObjectsAsRoots: Bool? = nil) {
      self.reportProgress = reportProgress
      self.treatGlobalObjectsAsRoots = treatGlobalObjectsAsRoots
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.HeapProfiler {
  public struct takeHeapSnapshot: ModelMethod {
    public typealias Model = SwiftCDPDomains.HeapProfiler
    public static let name = "takeHeapSnapshot"
    
    /// - description: If true 'reportHeapSnapshotProgress' events will be generated while snapshot is being taken.
    public var reportProgress: Bool?
    
    /// - description: If true, a raw snapshot without artifical roots will be generated
    public var treatGlobalObjectsAsRoots: Bool?
    
    public init(reportProgress: Bool? = nil, treatGlobalObjectsAsRoots: Bool? = nil) {
      self.reportProgress = reportProgress
      self.treatGlobalObjectsAsRoots = treatGlobalObjectsAsRoots
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

