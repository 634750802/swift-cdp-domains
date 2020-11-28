import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "WebAudio"

extension SwiftCDPDomains.WebAudio {
  /// - see: https://vanilla.aslushnikov.com/?WebAudio.GraphObjectId
  /// - description: An unique ID for a graph object (AudioContext, AudioNode, AudioParam) in Web Audio API
  public struct GraphObjectId: Codable {
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

extension SwiftCDPDomains.WebAudio {
  /// - see: https://vanilla.aslushnikov.com/?WebAudio.ContextType
  /// - description: Enum of BaseAudioContext types
  /// - choices: ["realtime", "offline"]
  public typealias ContextType = String
}

extension SwiftCDPDomains.WebAudio {
  /// - see: https://vanilla.aslushnikov.com/?WebAudio.ContextState
  /// - description: Enum of AudioContextState from the spec
  /// - choices: ["suspended", "running", "closed"]
  public typealias ContextState = String
}

extension SwiftCDPDomains.WebAudio {
  /// - see: https://vanilla.aslushnikov.com/?WebAudio.NodeType
  /// - description: Enum of AudioNode types
  public typealias NodeType = String
}

extension SwiftCDPDomains.WebAudio {
  /// - see: https://vanilla.aslushnikov.com/?WebAudio.ChannelCountMode
  /// - description: Enum of AudioNode::ChannelCountMode from the spec
  /// - choices: ["clamped-max", "explicit", "max"]
  public typealias ChannelCountMode = String
}

extension SwiftCDPDomains.WebAudio {
  /// - see: https://vanilla.aslushnikov.com/?WebAudio.ChannelInterpretation
  /// - description: Enum of AudioNode::ChannelInterpretation from the spec
  /// - choices: ["discrete", "speakers"]
  public typealias ChannelInterpretation = String
}

extension SwiftCDPDomains.WebAudio {
  /// - see: https://vanilla.aslushnikov.com/?WebAudio.ParamType
  /// - description: Enum of AudioParam types
  public typealias ParamType = String
}

extension SwiftCDPDomains.WebAudio {
  /// - see: https://vanilla.aslushnikov.com/?WebAudio.AutomationRate
  /// - description: Enum of AudioParam::AutomationRate from the spec
  /// - choices: ["a-rate", "k-rate"]
  public typealias AutomationRate = String
}

extension SwiftCDPDomains.WebAudio {
  /// - see: https://vanilla.aslushnikov.com/?WebAudio.ContextRealtimeData
  /// - description: Fields in AudioContext that change in real-time.
  public struct ContextRealtimeData: Codable {
    /// - description: The current context time in second in BaseAudioContext.
    public var currentTime: JsonNumber
    
    /// - description: The time spent on rendering graph divided by render qunatum duration,
    /// and multiplied by 100. 100 means the audio renderer reached the full
    /// capacity and glitch may occur.
    public var renderCapacity: JsonNumber
    
    /// - description: A running mean of callback interval.
    public var callbackIntervalMean: JsonNumber
    
    /// - description: A running variance of callback interval.
    public var callbackIntervalVariance: JsonNumber
    
  }
}

extension SwiftCDPDomains.WebAudio {
  /// - see: https://vanilla.aslushnikov.com/?WebAudio.BaseAudioContext
  /// - description: Protocol object for BaseAudioContext
  public struct BaseAudioContext: Codable {
    public var contextId: GraphObjectId
    
    public var contextType: ContextType
    
    public var contextState: ContextState
    
    public var realtimeData: ContextRealtimeData?
    
    /// - description: Platform-dependent callback buffer size.
    public var callbackBufferSize: JsonNumber
    
    /// - description: Number of output channels supported by audio hardware in use.
    public var maxOutputChannelCount: JsonNumber
    
    /// - description: Context sample rate.
    public var sampleRate: JsonNumber
    
  }
}

extension SwiftCDPDomains.WebAudio {
  /// - see: https://vanilla.aslushnikov.com/?WebAudio.AudioListener
  /// - description: Protocol object for AudioListener
  public struct AudioListener: Codable {
    public var listenerId: GraphObjectId
    
    public var contextId: GraphObjectId
    
  }
}

extension SwiftCDPDomains.WebAudio {
  /// - see: https://vanilla.aslushnikov.com/?WebAudio.AudioNode
  /// - description: Protocol object for AudioNode
  public struct AudioNode: Codable {
    public var nodeId: GraphObjectId
    
    public var contextId: GraphObjectId
    
    public var nodeType: NodeType
    
    public var numberOfInputs: JsonNumber
    
    public var numberOfOutputs: JsonNumber
    
    public var channelCount: JsonNumber
    
    public var channelCountMode: ChannelCountMode
    
    public var channelInterpretation: ChannelInterpretation
    
  }
}

extension SwiftCDPDomains.WebAudio {
  /// - see: https://vanilla.aslushnikov.com/?WebAudio.AudioParam
  /// - description: Protocol object for AudioParam
  public struct AudioParam: Codable {
    public var paramId: GraphObjectId
    
    public var nodeId: GraphObjectId
    
    public var contextId: GraphObjectId
    
    public var paramType: ParamType
    
    public var rate: AutomationRate
    
    public var defaultValue: JsonNumber
    
    public var minValue: JsonNumber
    
    public var maxValue: JsonNumber
    
  }
}

