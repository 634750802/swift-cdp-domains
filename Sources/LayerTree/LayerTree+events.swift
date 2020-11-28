import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "LayerTree"

extension SwiftCDPDomains.LayerTree {
  public struct layerPainted: ModelEvent {
    public typealias Model = SwiftCDPDomains.LayerTree
    
    /// - description: The id of the painted layer.
    public var layerId: LayerId
    
    /// - description: Clip rectangle.
    public var clip: SwiftCDPDomains.DOM.Rect
    
  }
}

extension SwiftCDPDomains.LayerTree {
  public struct layerTreeDidChange: ModelEvent {
    public typealias Model = SwiftCDPDomains.LayerTree
    
    /// - description: Layer tree, absent if not in the comspositing mode.
    public var layers: [Layer]?
    
  }
}

