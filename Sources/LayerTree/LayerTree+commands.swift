import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "LayerTree"

extension SwiftCDPDomains.LayerTree {
  /// - description: Provides the reasons why the given layer was composited.
  public struct compositingReasons: ModelMethod {
    public typealias Model = SwiftCDPDomains.LayerTree
    public static let name = "compositingReasons"
    
    /// - description: The id of the layer for which we want to get the reasons it was composited.
    public var layerId: LayerId
    
    public init(layerId: LayerId) {
      self.layerId = layerId
    }
    
    public struct Result: Decodable {
      /// - description: A list of strings specifying reasons for the given layer to become composited.
      public var compositingReasons: [String]
      /// - description: A list of strings specifying reason IDs for the given layer to become composited.
      public var compositingReasonIds: [String]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.LayerTree {
  /// - description: Disables compositing tree inspection.
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.LayerTree
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.LayerTree {
  /// - description: Enables compositing tree inspection.
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.LayerTree
    public static let name = "enable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.LayerTree {
  /// - description: Returns the snapshot identifier.
  public struct loadSnapshot: ModelMethod {
    public typealias Model = SwiftCDPDomains.LayerTree
    public static let name = "loadSnapshot"
    
    /// - description: An array of tiles composing the snapshot.
    public var tiles: [PictureTile]
    
    public init(tiles: [PictureTile]) {
      self.tiles = tiles
    }
    
    public struct Result: Decodable {
      /// - description: The id of the snapshot.
      public var snapshotId: SnapshotId
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.LayerTree {
  /// - description: Returns the layer snapshot identifier.
  public struct makeSnapshot: ModelMethod {
    public typealias Model = SwiftCDPDomains.LayerTree
    public static let name = "makeSnapshot"
    
    /// - description: The id of the layer.
    public var layerId: LayerId
    
    public init(layerId: LayerId) {
      self.layerId = layerId
    }
    
    public struct Result: Decodable {
      /// - description: The id of the layer snapshot.
      public var snapshotId: SnapshotId
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.LayerTree {
  public struct profileSnapshot: ModelMethod {
    public typealias Model = SwiftCDPDomains.LayerTree
    public static let name = "profileSnapshot"
    
    /// - description: The id of the layer snapshot.
    public var snapshotId: SnapshotId
    
    /// - description: The maximum number of times to replay the snapshot (1, if not specified).
    public var minRepeatCount: Int?
    
    /// - description: The minimum duration (in seconds) to replay the snapshot.
    public var minDuration: JsonNumber?
    
    /// - description: The clip rectangle to apply when replaying the snapshot.
    public var clipRect: SwiftCDPDomains.DOM.Rect?
    
    public init(snapshotId: SnapshotId, minRepeatCount: Int? = nil, minDuration: JsonNumber? = nil, clipRect: SwiftCDPDomains.DOM.Rect? = nil) {
      self.snapshotId = snapshotId
      self.minRepeatCount = minRepeatCount
      self.minDuration = minDuration
      self.clipRect = clipRect
    }
    
    public struct Result: Decodable {
      /// - description: The array of paint profiles, one per run.
      public var timings: [PaintProfile]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.LayerTree {
  /// - description: Releases layer snapshot captured by the back-end.
  public struct releaseSnapshot: ModelMethod {
    public typealias Model = SwiftCDPDomains.LayerTree
    public static let name = "releaseSnapshot"
    
    /// - description: The id of the layer snapshot.
    public var snapshotId: SnapshotId
    
    public init(snapshotId: SnapshotId) {
      self.snapshotId = snapshotId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.LayerTree {
  /// - description: Replays the layer snapshot and returns the resulting bitmap.
  public struct replaySnapshot: ModelMethod {
    public typealias Model = SwiftCDPDomains.LayerTree
    public static let name = "replaySnapshot"
    
    /// - description: The id of the layer snapshot.
    public var snapshotId: SnapshotId
    
    /// - description: The first step to replay from (replay from the very start if not specified).
    public var fromStep: Int?
    
    /// - description: The last step to replay to (replay till the end if not specified).
    public var toStep: Int?
    
    /// - description: The scale to apply while replaying (defaults to 1).
    public var scale: JsonNumber?
    
    public init(snapshotId: SnapshotId, fromStep: Int? = nil, toStep: Int? = nil, scale: JsonNumber? = nil) {
      self.snapshotId = snapshotId
      self.fromStep = fromStep
      self.toStep = toStep
      self.scale = scale
    }
    
    public struct Result: Decodable {
      /// - description: A data: URL for resulting image.
      public var dataURL: String
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.LayerTree {
  /// - description: Replays the layer snapshot and returns canvas log.
  public struct snapshotCommandLog: ModelMethod {
    public typealias Model = SwiftCDPDomains.LayerTree
    public static let name = "snapshotCommandLog"
    
    /// - description: The id of the layer snapshot.
    public var snapshotId: SnapshotId
    
    public init(snapshotId: SnapshotId) {
      self.snapshotId = snapshotId
    }
    
    public struct Result: Decodable {
      /// - description: The array of canvas function calls.
      public var commandLog: [[String: JsonValue]]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

