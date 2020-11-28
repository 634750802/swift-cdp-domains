import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "Input"

extension SwiftCDPDomains.Input {
  /// - see: https://vanilla.aslushnikov.com/?Input.TouchPoint
  public struct TouchPoint: Codable {
    /// - description: X coordinate of the event relative to the main frame's viewport in CSS pixels.
    public var x: JsonNumber
    
    /// - description: Y coordinate of the event relative to the main frame's viewport in CSS pixels. 0 refers to
    /// the top of the viewport and Y increases as it proceeds towards the bottom of the viewport.
    public var y: JsonNumber
    
    /// - description: X radius of the touch area (default: 1.0).
    public var radiusX: JsonNumber?
    
    /// - description: Y radius of the touch area (default: 1.0).
    public var radiusY: JsonNumber?
    
    /// - description: Rotation angle (default: 0.0).
    public var rotationAngle: JsonNumber?
    
    /// - description: Force (default: 1.0).
    public var force: JsonNumber?
    
    /// - description: The normalized tangential pressure, which has a range of [-1,1] (default: 0).
    /// - intention: This is an experimental property.
    public var tangentialPressure: JsonNumber?
    
    /// - description: The plane angle between the Y-Z plane and the plane containing both the stylus axis and the Y axis, in degrees of the range [-90,90], a positive tiltX is to the right (default: 0)
    /// - intention: This is an experimental property.
    public var tiltX: Int?
    
    /// - description: The plane angle between the X-Z plane and the plane containing both the stylus axis and the X axis, in degrees of the range [-90,90], a positive tiltY is towards the user (default: 0).
    /// - intention: This is an experimental property.
    public var tiltY: Int?
    
    /// - description: The clockwise rotation of a pen stylus around its own major axis, in degrees in the range [0,359] (default: 0).
    /// - intention: This is an experimental property.
    public var twist: Int?
    
    /// - description: Identifier used to track touch sources between events, must be unique within an event.
    public var id: JsonNumber?
    
  }
}

extension SwiftCDPDomains.Input {
  /// - see: https://vanilla.aslushnikov.com/?Input.GestureSourceType
  /// - choices: ["default", "touch", "mouse"]
  public typealias GestureSourceType = String
}

extension SwiftCDPDomains.Input {
  /// - see: https://vanilla.aslushnikov.com/?Input.MouseButton
  /// - choices: ["none", "left", "middle", "right", "back", "forward"]
  public typealias MouseButton = String
}

extension SwiftCDPDomains.Input {
  /// - see: https://vanilla.aslushnikov.com/?Input.TimeSinceEpoch
  /// - description: UTC time in seconds, counted from January 1, 1970.
  public typealias TimeSinceEpoch = JsonNumber
}

