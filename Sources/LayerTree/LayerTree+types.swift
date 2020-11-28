import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "LayerTree"

extension SwiftCDPDomains.LayerTree {
  /// - see: https://vanilla.aslushnikov.com/?LayerTree.LayerId
  /// - description: Unique Layer identifier.
  public struct LayerId: Codable {
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

extension SwiftCDPDomains.LayerTree {
  /// - see: https://vanilla.aslushnikov.com/?LayerTree.SnapshotId
  /// - description: Unique snapshot identifier.
  public struct SnapshotId: Codable {
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

extension SwiftCDPDomains.LayerTree {
  /// - see: https://vanilla.aslushnikov.com/?LayerTree.ScrollRect
  /// - description: Rectangle where scrolling happens on the main thread.
  public struct ScrollRect: Codable {
    /// - description: Rectangle itself.
    public var rect: SwiftCDPDomains.DOM.Rect
    
    /// - description: Reason for rectangle to force scrolling on the main thread
    public var type: String
    
  }
}

extension SwiftCDPDomains.LayerTree {
  /// - see: https://vanilla.aslushnikov.com/?LayerTree.StickyPositionConstraint
  /// - description: Sticky position constraints.
  public struct StickyPositionConstraint: Codable {
    /// - description: Layout rectangle of the sticky element before being shifted
    public var stickyBoxRect: SwiftCDPDomains.DOM.Rect
    
    /// - description: Layout rectangle of the containing block of the sticky element
    public var containingBlockRect: SwiftCDPDomains.DOM.Rect
    
    /// - description: The nearest sticky layer that shifts the sticky box
    public var nearestLayerShiftingStickyBox: LayerId?
    
    /// - description: The nearest sticky layer that shifts the containing block
    public var nearestLayerShiftingContainingBlock: LayerId?
    
  }
}

extension SwiftCDPDomains.LayerTree {
  /// - see: https://vanilla.aslushnikov.com/?LayerTree.PictureTile
  /// - description: Serialized fragment of layer picture along with its offset within the layer.
  public struct PictureTile: Codable {
    /// - description: Offset from owning layer left boundary
    public var x: JsonNumber
    
    /// - description: Offset from owning layer top boundary
    public var y: JsonNumber
    
    /// - description: Base64-encoded snapshot data.
    public var picture: String
    
  }
}

extension SwiftCDPDomains.LayerTree {
  /// - see: https://vanilla.aslushnikov.com/?LayerTree.Layer
  /// - description: Information about a compositing layer.
  public struct Layer: Codable {
    /// - description: The unique id for this layer.
    public var layerId: LayerId
    
    /// - description: The id of parent (not present for root).
    public var parentLayerId: LayerId?
    
    /// - description: The backend id for the node associated with this layer.
    public var backendNodeId: SwiftCDPDomains.DOM.BackendNodeId?
    
    /// - description: Offset from parent layer, X coordinate.
    public var offsetX: JsonNumber
    
    /// - description: Offset from parent layer, Y coordinate.
    public var offsetY: JsonNumber
    
    /// - description: Layer width.
    public var width: JsonNumber
    
    /// - description: Layer height.
    public var height: JsonNumber
    
    /// - description: Transformation matrix for layer, default is identity matrix
    public var transform: [JsonNumber]?
    
    /// - description: Transform anchor point X, absent if no transform specified
    public var anchorX: JsonNumber?
    
    /// - description: Transform anchor point Y, absent if no transform specified
    public var anchorY: JsonNumber?
    
    /// - description: Transform anchor point Z, absent if no transform specified
    public var anchorZ: JsonNumber?
    
    /// - description: Indicates how many time this layer has painted.
    public var paintCount: Int
    
    /// - description: Indicates whether this layer hosts any content, rather than being used for
    /// transform/scrolling purposes only.
    public var drawsContent: Bool
    
    /// - description: Set if layer is not visible.
    public var invisible: Bool?
    
    /// - description: Rectangles scrolling on main thread only.
    public var scrollRects: [ScrollRect]?
    
    /// - description: Sticky position constraint information
    public var stickyPositionConstraint: StickyPositionConstraint?
    
  }
}

extension SwiftCDPDomains.LayerTree {
  /// - see: https://vanilla.aslushnikov.com/?LayerTree.PaintProfile
  /// - description: Array of timings, one per paint step.
  public typealias PaintProfile = Array<String>
}

