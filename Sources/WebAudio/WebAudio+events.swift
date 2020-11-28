import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "WebAudio"

extension SwiftCDPDomains.WebAudio {
  /// - description: This domain allows inspection of Web Audio API.
  /// https://webaudio.github.io/web-audio-api/
  /// - intention: This is an experimental property.
  public struct contextCreated: ModelEvent {
    public typealias Model = SwiftCDPDomains.WebAudio
    
    public var context: BaseAudioContext
    
  }
}

extension SwiftCDPDomains.WebAudio {
  /// - description: This domain allows inspection of Web Audio API.
  /// https://webaudio.github.io/web-audio-api/
  /// - intention: This is an experimental property.
  public struct contextWillBeDestroyed: ModelEvent {
    public typealias Model = SwiftCDPDomains.WebAudio
    
    public var contextId: GraphObjectId
    
  }
}

extension SwiftCDPDomains.WebAudio {
  /// - description: This domain allows inspection of Web Audio API.
  /// https://webaudio.github.io/web-audio-api/
  /// - intention: This is an experimental property.
  public struct contextChanged: ModelEvent {
    public typealias Model = SwiftCDPDomains.WebAudio
    
    public var context: BaseAudioContext
    
  }
}

extension SwiftCDPDomains.WebAudio {
  /// - description: This domain allows inspection of Web Audio API.
  /// https://webaudio.github.io/web-audio-api/
  /// - intention: This is an experimental property.
  public struct audioListenerCreated: ModelEvent {
    public typealias Model = SwiftCDPDomains.WebAudio
    
    public var listener: AudioListener
    
  }
}

extension SwiftCDPDomains.WebAudio {
  /// - description: This domain allows inspection of Web Audio API.
  /// https://webaudio.github.io/web-audio-api/
  /// - intention: This is an experimental property.
  public struct audioListenerWillBeDestroyed: ModelEvent {
    public typealias Model = SwiftCDPDomains.WebAudio
    
    public var contextId: GraphObjectId
    
    public var listenerId: GraphObjectId
    
  }
}

extension SwiftCDPDomains.WebAudio {
  /// - description: This domain allows inspection of Web Audio API.
  /// https://webaudio.github.io/web-audio-api/
  /// - intention: This is an experimental property.
  public struct audioNodeCreated: ModelEvent {
    public typealias Model = SwiftCDPDomains.WebAudio
    
    public var node: AudioNode
    
  }
}

extension SwiftCDPDomains.WebAudio {
  /// - description: This domain allows inspection of Web Audio API.
  /// https://webaudio.github.io/web-audio-api/
  /// - intention: This is an experimental property.
  public struct audioNodeWillBeDestroyed: ModelEvent {
    public typealias Model = SwiftCDPDomains.WebAudio
    
    public var contextId: GraphObjectId
    
    public var nodeId: GraphObjectId
    
  }
}

extension SwiftCDPDomains.WebAudio {
  /// - description: This domain allows inspection of Web Audio API.
  /// https://webaudio.github.io/web-audio-api/
  /// - intention: This is an experimental property.
  public struct audioParamCreated: ModelEvent {
    public typealias Model = SwiftCDPDomains.WebAudio
    
    public var param: AudioParam
    
  }
}

extension SwiftCDPDomains.WebAudio {
  /// - description: This domain allows inspection of Web Audio API.
  /// https://webaudio.github.io/web-audio-api/
  /// - intention: This is an experimental property.
  public struct audioParamWillBeDestroyed: ModelEvent {
    public typealias Model = SwiftCDPDomains.WebAudio
    
    public var contextId: GraphObjectId
    
    public var nodeId: GraphObjectId
    
    public var paramId: GraphObjectId
    
  }
}

extension SwiftCDPDomains.WebAudio {
  /// - description: This domain allows inspection of Web Audio API.
  /// https://webaudio.github.io/web-audio-api/
  /// - intention: This is an experimental property.
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
  /// - description: This domain allows inspection of Web Audio API.
  /// https://webaudio.github.io/web-audio-api/
  /// - intention: This is an experimental property.
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
  /// - description: This domain allows inspection of Web Audio API.
  /// https://webaudio.github.io/web-audio-api/
  /// - intention: This is an experimental property.
  public struct nodeParamConnected: ModelEvent {
    public typealias Model = SwiftCDPDomains.WebAudio
    
    public var contextId: GraphObjectId
    
    public var sourceId: GraphObjectId
    
    public var destinationId: GraphObjectId
    
    public var sourceOutputIndex: JsonNumber?
    
  }
}

extension SwiftCDPDomains.WebAudio {
  /// - description: This domain allows inspection of Web Audio API.
  /// https://webaudio.github.io/web-audio-api/
  /// - intention: This is an experimental property.
  public struct nodeParamDisconnected: ModelEvent {
    public typealias Model = SwiftCDPDomains.WebAudio
    
    public var contextId: GraphObjectId
    
    public var sourceId: GraphObjectId
    
    public var destinationId: GraphObjectId
    
    public var sourceOutputIndex: JsonNumber?
    
  }
}

