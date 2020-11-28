import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "Accessibility"

extension SwiftCDPDomains.Accessibility {
  /// - see: https://vanilla.aslushnikov.com/?Accessibility.AXNodeId
  /// - description: Unique accessibility node identifier.
  public struct AXNodeId: Codable {
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

extension SwiftCDPDomains.Accessibility {
  /// - see: https://vanilla.aslushnikov.com/?Accessibility.AXValueType
  /// - description: Enum of possible property types.
  /// - choices: ["boolean", "tristate", "booleanOrUndefined", "idref", "idrefList", "integer", "node", "nodeList", "number", "string", "computedString", "token", "tokenList", "domRelation", "role", "internalRole", "valueUndefined"]
  public typealias AXValueType = String
}

extension SwiftCDPDomains.Accessibility {
  /// - see: https://vanilla.aslushnikov.com/?Accessibility.AXValueSourceType
  /// - description: Enum of possible property sources.
  /// - choices: ["attribute", "implicit", "style", "contents", "placeholder", "relatedElement"]
  public typealias AXValueSourceType = String
}

extension SwiftCDPDomains.Accessibility {
  /// - see: https://vanilla.aslushnikov.com/?Accessibility.AXValueNativeSourceType
  /// - description: Enum of possible native property sources (as a subtype of a particular AXValueSourceType).
  /// - choices: ["figcaption", "label", "labelfor", "labelwrapped", "legend", "tablecaption", "title", "other"]
  public typealias AXValueNativeSourceType = String
}

extension SwiftCDPDomains.Accessibility {
  /// - see: https://vanilla.aslushnikov.com/?Accessibility.AXValueSource
  /// - description: A single source for a computed AX property.
  public struct AXValueSource: Codable {
    /// - description: What type of source this is.
    public var type: AXValueSourceType
    
    /// - description: The value of this property source.
    public var value: AXValue?
    
    /// - description: The name of the relevant attribute, if any.
    public var attribute: String?
    
    /// - description: The value of the relevant attribute, if any.
    public var attributeValue: AXValue?
    
    /// - description: Whether this source is superseded by a higher priority source.
    public var superseded: Bool?
    
    /// - description: The native markup source for this value, e.g. a <label> element.
    public var nativeSource: AXValueNativeSourceType?
    
    /// - description: The value, such as a node or node list, of the native source.
    public var nativeSourceValue: AXValue?
    
    /// - description: Whether the value for this property is invalid.
    public var invalid: Bool?
    
    /// - description: Reason for the value being invalid, if it is.
    public var invalidReason: String?
    
  }
}

extension SwiftCDPDomains.Accessibility {
  /// - see: https://vanilla.aslushnikov.com/?Accessibility.AXRelatedNode
  public struct AXRelatedNode: Codable {
    /// - description: The BackendNodeId of the related DOM node.
    public var backendDOMNodeId: SwiftCDPDomains.DOM.BackendNodeId
    
    /// - description: The IDRef value provided, if any.
    public var idref: String?
    
    /// - description: The text alternative of this node in the current context.
    public var text: String?
    
  }
}

extension SwiftCDPDomains.Accessibility {
  /// - see: https://vanilla.aslushnikov.com/?Accessibility.AXProperty
  public struct AXProperty: Codable {
    /// - description: The name of this property.
    public var name: AXPropertyName
    
    /// - description: The value of this property.
    public var value: AXValue
    
  }
}

extension SwiftCDPDomains.Accessibility {
  /// - see: https://vanilla.aslushnikov.com/?Accessibility.AXValue
  /// - description: A single computed AX property.
  public struct AXValue: Codable {
    /// - description: The type of this value.
    public var type: AXValueType
    
    /// - description: The computed value of this property.
    public var value: JsonValue?
    
    /// - description: One or more related nodes, if applicable.
    public var relatedNodes: [AXRelatedNode]?
    
    /// - description: The sources which contributed to the computation of this property.
    public var sources: [AXValueSource]?
    
  }
}

extension SwiftCDPDomains.Accessibility {
  /// - see: https://vanilla.aslushnikov.com/?Accessibility.AXPropertyName
  /// - description: Values of AXProperty name:
  /// - from 'busy' to 'roledescription': states which apply to every AX node
  /// - from 'live' to 'root': attributes which apply to nodes in live regions
  /// - from 'autocomplete' to 'valuetext': attributes which apply to widgets
  /// - from 'checked' to 'selected': states which apply to widgets
  /// - from 'activedescendant' to 'owns' - relationships between elements other than parent/child/sibling.
  /// - choices: ["busy", "disabled", "editable", "focusable", "focused", "hidden", "hiddenRoot", "invalid", "keyshortcuts", "settable", "roledescription", "live", "atomic", "relevant", "root", "autocomplete", "hasPopup", "level", "multiselectable", "orientation", "multiline", "readonly", "required", "valuemin", "valuemax", "valuetext", "checked", "expanded", "modal", "pressed", "selected", "activedescendant", "controls", "describedby", "details", "errormessage", "flowto", "labelledby", "owns"]
  public typealias AXPropertyName = String
}

extension SwiftCDPDomains.Accessibility {
  /// - see: https://vanilla.aslushnikov.com/?Accessibility.AXNode
  /// - description: A node in the accessibility tree.
  public struct AXNode: Codable {
    /// - description: Unique identifier for this node.
    public var nodeId: AXNodeId
    
    /// - description: Whether this node is ignored for accessibility
    public var ignored: Bool
    
    /// - description: Collection of reasons why this node is hidden.
    public var ignoredReasons: [AXProperty]?
    
    /// - description: This `Node`'s role, whether explicit or implicit.
    public var role: AXValue?
    
    /// - description: The accessible name for this `Node`.
    public var name: AXValue?
    
    /// - description: The accessible description for this `Node`.
    public var description: AXValue?
    
    /// - description: The value for this `Node`.
    public var value: AXValue?
    
    /// - description: All other properties
    public var properties: [AXProperty]?
    
    /// - description: IDs for each of this node's child nodes.
    public var childIds: [AXNodeId]?
    
    /// - description: The backend ID for the associated DOM node, if any.
    public var backendDOMNodeId: SwiftCDPDomains.DOM.BackendNodeId?
    
  }
}

