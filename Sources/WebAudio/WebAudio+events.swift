import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "WebAudio"

extension SwiftCDPDomains.WebAudio {
  /// - description: Notifies that a new BaseAudioContext has been created.
  public struct contextCreated: ModelEvent {
    public typealias Model = SwiftCDPDomains.WebAudio
    
    public var context: BaseAudioContext
    
  }
}

extension SwiftCDPDomains.WebAudio {
  /// - description: Notifies that an existing BaseAudioContext will be destroyed.
  public struct contextWillBeDestroyed: ModelEvent {
    public typealias Model = SwiftCDPDomains.WebAudio
    
    public var contextId: GraphObjectId
    
  }
}

extension SwiftCDPDomains.WebAudio {
  /// - description: Notifies that existing BaseAudioContext has changed some properties (id stays the same)..
  public struct contextChanged: ModelEvent {
    public typealias Model = SwiftCDPDomains.WebAudio
    
    public var context: BaseAudioContext
    
  }
}

extension SwiftCDPDomains.WebAudio {
  /// - description: Notifies that the construction of an AudioListener has finished.
  public struct audioListenerCreated: ModelEvent {
    public typealias Model = SwiftCDPDomains.WebAudio
    
    public var listener: AudioListener
    
  }
}

extension SwiftCDPDomains.WebAudio {
  /// - description: Notifies that a new AudioListener has been created.
  public struct audioListenerWillBeDestroyed: ModelEvent {
    public typealias Model = SwiftCDPDomains.WebAudio
    
    public var contextId: GraphObjectId
    
    public var listenerId: GraphObjectId
    
  }
}

extension SwiftCDPDomains.WebAudio {
  /// - description: Notifies that a new AudioNode has been created.
  public struct audioNodeCreated: ModelEvent {
    public typealias Model = SwiftCDPDomains.WebAudio
    
    public var node: AudioNode
    
  }
}

extension SwiftCDPDomains.WebAudio {
  /// - description: Notifies that an existing AudioNode has been destroyed.
  public struct audioNodeWillBeDestroyed: ModelEvent {
    public typealias Model = SwiftCDPDomains.WebAudio
    
    public var contextId: GraphObjectId
    
    public var nodeId: GraphObjectId
    
  }
}

extension SwiftCDPDomains.WebAudio {
  /// - description: Notifies that a new AudioParam has been created.
  public struct audioParamCreated: ModelEvent {
    public typealias Model = SwiftCDPDomains.WebAudio
    
    public var param: AudioParam
    
  }
}

extension SwiftCDPDomains.WebAudio {
  /// - description: Notifies that an existing AudioParam has been destroyed.
  public struct audioParamWillBeDestroyed: ModelEvent {
    public typealias Model = SwiftCDPDomains.WebAudio
    
    public var contextId: GraphObjectId
    
    public var nodeId: GraphObjectId
    
    public var paramId: GraphObjectId
    
  }
}

extension SwiftCDPDomains.WebAudio {
  /// - description: Notifies that two AudioNodes are connected.
  public struct nodesConnected: ModelEvent {
    public typealias Model = SwiftCDPDomains.WebAudio
    
    public var contextId: GraphObjectId
    
    public var sourceId: GraphObjectId
    
    public var destinationId: GraphObjectId
    
    public var sourceOutputIndex: JsonNumber?
    
    public var destinationInputIndex: JsonNumber?
    
  }
}

extension SwiftCDPDomains.WebAudio {
  /// - description: Notifies that AudioNodes are disconnected. The destination can be null, and it means all the outgoing connections from the source are disconnected.
  public struct nodesDisconnected: ModelEvent {
    public typealias Model = SwiftCDPDomains.WebAudio
    
    public var contextId: GraphObjectId
    
    public var sourceId: GraphObjectId
    
    public var destinationId: GraphObjectId
    
    public var sourceOutputIndex: JsonNumber?
    
    public var destinationInputIndex: JsonNumber?
    
  }
}

extension SwiftCDPDomains.WebAudio {
  /// - description: Notifies that an AudioNode is connected to an AudioParam.
  public struct nodeParamConnected: ModelEvent {
    public typealias Model = SwiftCDPDomains.WebAudio
    
    public var contextId: GraphObjectId
    
    public var sourceId: GraphObjectId
    
    public var destinationId: GraphObjectId
    
    public var sourceOutputIndex: JsonNumber?
    
  }
}

extension SwiftCDPDomains.WebAudio {
  /// - description: Notifies that an AudioNode is disconnected to an AudioParam.
  public struct nodeParamDisconnected: ModelEvent {
    public typealias Model = SwiftCDPDomains.WebAudio
    
    public var contextId: GraphObjectId
    
    public var sourceId: GraphObjectId
    
    public var destinationId: GraphObjectId
    
    public var sourceOutputIndex: JsonNumber?
    
  }
}

