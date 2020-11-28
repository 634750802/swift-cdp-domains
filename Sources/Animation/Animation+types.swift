import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "Animation"

extension SwiftCDPDomains.Animation {
  /// - see: https://vanilla.aslushnikov.com/?Animation.Animation
  /// - description: Animation instance.
  public struct Animation: Codable {
    /// - description: `Animation`'s id.
    public var id: String
    
    /// - description: `Animation`'s name.
    public var name: String
    
    /// - description: `Animation`'s internal paused state.
    public var pausedState: Bool
    
    /// - description: `Animation`'s play state.
    public var playState: String
    
    /// - description: `Animation`'s playback rate.
    public var playbackRate: Double
    
    /// - description: `Animation`'s start time.
    public var startTime: Int
    
    /// - description: `Animation`'s current time.
    public var currentTime: Int
    
    /// - description: Animation type of `Animation`.
    public var type: String
    
    /// - description: `Animation`'s source animation node.
    public var source: AnimationEffect?
    
    /// - description: A unique ID for `Animation` representing the sources that triggered this CSS
    /// animation/transition.
    public var cssId: String?
    
  }
}

extension SwiftCDPDomains.Animation {
  /// - see: https://vanilla.aslushnikov.com/?Animation.AnimationEffect
  /// - description: AnimationEffect instance
  public struct AnimationEffect: Codable {
    /// - description: `AnimationEffect`'s delay.
    public var delay: Int
    
    /// - description: `AnimationEffect`'s end delay.
    public var endDelay: Int
    
    /// - description: `AnimationEffect`'s iteration start.
    public var iterationStart: Int
    
    /// - description: `AnimationEffect`'s iterations.
    public var iterations: Int
    
    /// - description: `AnimationEffect`'s iteration duration.
    public var duration: Int
    
    /// - description: `AnimationEffect`'s playback direction.
    public var direction: String
    
    /// - description: `AnimationEffect`'s fill mode.
    public var fill: String
    
    /// - description: `AnimationEffect`'s target node.
    public var backendNodeId: SwiftCDPDomains.DOM.BackendNodeId?
    
    /// - description: `AnimationEffect`'s keyframes.
    public var keyframesRule: KeyframesRule?
    
    /// - description: `AnimationEffect`'s timing function.
    public var easing: String
    
  }
}

extension SwiftCDPDomains.Animation {
  /// - see: https://vanilla.aslushnikov.com/?Animation.KeyframesRule
  /// - description: Keyframes Rule
  public struct KeyframesRule: Codable {
    /// - description: CSS keyframed animation's name.
    public var name: String?
    
    /// - description: List of animation keyframes.
    public var keyframes: [KeyframeStyle]
    
  }
}

extension SwiftCDPDomains.Animation {
  /// - see: https://vanilla.aslushnikov.com/?Animation.KeyframeStyle
  /// - description: Keyframe Style
  public struct KeyframeStyle: Codable {
    /// - description: Keyframe's time offset.
    public var offset: String
    
    /// - description: `AnimationEffect`'s timing function.
    public var easing: String
    
  }
}

