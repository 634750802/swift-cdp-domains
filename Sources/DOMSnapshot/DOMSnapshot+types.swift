import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "DOMSnapshot"

extension SwiftCDPDomains.DOMSnapshot {
  /// - see: https://vanilla.aslushnikov.com/?DOMSnapshot.DOMNode
  /// - description: A Node in the DOM tree.
  public struct DOMNode: Codable {
    /// - description: `Node`'s nodeType.
    public var nodeType: Int
    
    /// - description: `Node`'s nodeName.
    public var nodeName: String
    
    /// - description: `Node`'s nodeValue.
    public var nodeValue: String
    
    /// - description: Only set for textarea elements, contains the text value.
    public var textValue: String?
    
    /// - description: Only set for input elements, contains the input's associated text value.
    public var inputValue: String?
    
    /// - description: Only set for radio and checkbox input elements, indicates if the element has been checked
    public var inputChecked: Bool?
    
    /// - description: Only set for option elements, indicates if the element has been selected
    public var optionSelected: Bool?
    
    /// - description: `Node`'s id, corresponds to DOM.Node.backendNodeId.
    public var backendNodeId: SwiftCDPDomains.DOM.BackendNodeId
    
    /// - description: The indexes of the node's child nodes in the `domNodes` array returned by `getSnapshot`, if
    /// any.
    public var childNodeIndexes: [Int]?
    
    /// - description: Attributes of an `Element` node.
    public var attributes: [NameValue]?
    
    /// - description: Indexes of pseudo elements associated with this node in the `domNodes` array returned by
    /// `getSnapshot`, if any.
    public var pseudoElementIndexes: [Int]?
    
    /// - description: The index of the node's related layout tree node in the `layoutTreeNodes` array returned by
    /// `getSnapshot`, if any.
    public var layoutNodeIndex: Int?
    
    /// - description: Document URL that `Document` or `FrameOwner` node points to.
    public var documentURL: String?
    
    /// - description: Base URL that `Document` or `FrameOwner` node uses for URL completion.
    public var baseURL: String?
    
    /// - description: Only set for documents, contains the document's content language.
    public var contentLanguage: String?
    
    /// - description: Only set for documents, contains the document's character set encoding.
    public var documentEncoding: String?
    
    /// - description: `DocumentType` node's publicId.
    public var publicId: String?
    
    /// - description: `DocumentType` node's systemId.
    public var systemId: String?
    
    /// - description: Frame ID for frame owner elements and also for the document node.
    public var frameId: SwiftCDPDomains.Page.FrameId?
    
    /// - description: The index of a frame owner element's content document in the `domNodes` array returned by
    /// `getSnapshot`, if any.
    public var contentDocumentIndex: Int?
    
    /// - description: Type of a pseudo element node.
    public var pseudoType: SwiftCDPDomains.DOM.PseudoType?
    
    /// - description: Shadow root type.
    public var shadowRootType: SwiftCDPDomains.DOM.ShadowRootType?
    
    /// - description: Whether this DOM node responds to mouse clicks. This includes nodes that have had click
    /// event listeners attached via JavaScript as well as anchor tags that naturally navigate when
    /// clicked.
    public var isClickable: Bool?
    
    /// - description: Details of the node's event listeners, if any.
    public var eventListeners: [SwiftCDPDomains.DOMDebugger.EventListener]?
    
    /// - description: The selected url for nodes with a srcset attribute.
    public var currentSourceURL: String?
    
    /// - description: The url of the script (if any) that generates this node.
    public var originURL: String?
    
    /// - description: Scroll offsets, set when this node is a Document.
    public var scrollOffsetX: Int?
    
    public var scrollOffsetY: Int?
    
  }
}

extension SwiftCDPDomains.DOMSnapshot {
  /// - see: https://vanilla.aslushnikov.com/?DOMSnapshot.InlineTextBox
  /// - description: Details of post layout rendered text positions. The exact layout should not be regarded as
  /// stable and may change between versions.
  public struct InlineTextBox: Codable {
    /// - description: The bounding box in document coordinates. Note that scroll offset of the document is ignored.
    public var boundingBox: SwiftCDPDomains.DOM.Rect
    
    /// - description: The starting index in characters, for this post layout textbox substring. Characters that
    /// would be represented as a surrogate pair in UTF-16 have length 2.
    public var startCharacterIndex: Int
    
    /// - description: The number of characters in this post layout textbox substring. Characters that would be
    /// represented as a surrogate pair in UTF-16 have length 2.
    public var numCharacters: Int
    
  }
}

extension SwiftCDPDomains.DOMSnapshot {
  /// - see: https://vanilla.aslushnikov.com/?DOMSnapshot.LayoutTreeNode
  /// - description: Details of an element in the DOM tree with a LayoutObject.
  public struct LayoutTreeNode: Codable {
    /// - description: The index of the related DOM node in the `domNodes` array returned by `getSnapshot`.
    public var domNodeIndex: Int
    
    /// - description: The bounding box in document coordinates. Note that scroll offset of the document is ignored.
    public var boundingBox: SwiftCDPDomains.DOM.Rect
    
    /// - description: Contents of the LayoutText, if any.
    public var layoutText: String?
    
    /// - description: The post-layout inline text nodes, if any.
    public var inlineTextNodes: [InlineTextBox]?
    
    /// - description: Index into the `computedStyles` array returned by `getSnapshot`.
    public var styleIndex: Int?
    
    /// - description: Global paint order index, which is determined by the stacking order of the nodes. Nodes
    /// that are painted together will have the same index. Only provided if includePaintOrder in
    /// getSnapshot was true.
    public var paintOrder: Int?
    
    /// - description: Set to true to indicate the element begins a new stacking context.
    public var isStackingContext: Bool?
    
  }
}

extension SwiftCDPDomains.DOMSnapshot {
  /// - see: https://vanilla.aslushnikov.com/?DOMSnapshot.ComputedStyle
  /// - description: A subset of the full ComputedStyle as defined by the request whitelist.
  public struct ComputedStyle: Codable {
    /// - description: Name/value pairs of computed style properties.
    public var properties: [NameValue]
    
  }
}

extension SwiftCDPDomains.DOMSnapshot {
  /// - see: https://vanilla.aslushnikov.com/?DOMSnapshot.NameValue
  /// - description: A name/value pair.
  public struct NameValue: Codable {
    /// - description: Attribute/property name.
    public var name: String
    
    /// - description: Attribute/property value.
    public var value: String
    
  }
}

extension SwiftCDPDomains.DOMSnapshot {
  /// - see: https://vanilla.aslushnikov.com/?DOMSnapshot.StringIndex
  /// - description: Index of the string in the strings table.
  public typealias StringIndex = Int
}

extension SwiftCDPDomains.DOMSnapshot {
  /// - see: https://vanilla.aslushnikov.com/?DOMSnapshot.ArrayOfStrings
  /// - description: Index of the string in the strings table.
  public typealias ArrayOfStrings = Array<String>
}

extension SwiftCDPDomains.DOMSnapshot {
  /// - see: https://vanilla.aslushnikov.com/?DOMSnapshot.RareStringData
  /// - description: Data that is only present on rare nodes.
  public struct RareStringData: Codable {
    public var index: [Int]
    
    public var value: [StringIndex]
    
  }
}

extension SwiftCDPDomains.DOMSnapshot {
  /// - see: https://vanilla.aslushnikov.com/?DOMSnapshot.RareBooleanData
  public struct RareBooleanData: Codable {
    public var index: [Int]
    
  }
}

extension SwiftCDPDomains.DOMSnapshot {
  /// - see: https://vanilla.aslushnikov.com/?DOMSnapshot.RareIntegerData
  public struct RareIntegerData: Codable {
    public var index: [Int]
    
    public var value: [Int]
    
  }
}

extension SwiftCDPDomains.DOMSnapshot {
  /// - see: https://vanilla.aslushnikov.com/?DOMSnapshot.Rectangle
  public typealias Rectangle = Array<String>
}

extension SwiftCDPDomains.DOMSnapshot {
  /// - see: https://vanilla.aslushnikov.com/?DOMSnapshot.DocumentSnapshot
  /// - description: Document snapshot.
  public struct DocumentSnapshot: Codable {
    /// - description: Document URL that `Document` or `FrameOwner` node points to.
    public var documentURL: StringIndex
    
    /// - description: Document title.
    public var title: StringIndex
    
    /// - description: Base URL that `Document` or `FrameOwner` node uses for URL completion.
    public var baseURL: StringIndex
    
    /// - description: Contains the document's content language.
    public var contentLanguage: StringIndex
    
    /// - description: Contains the document's character set encoding.
    public var encodingName: StringIndex
    
    /// - description: `DocumentType` node's publicId.
    public var publicId: StringIndex
    
    /// - description: `DocumentType` node's systemId.
    public var systemId: StringIndex
    
    /// - description: Frame ID for frame owner elements and also for the document node.
    public var frameId: StringIndex
    
    /// - description: A table with dom nodes.
    public var nodes: NodeTreeSnapshot
    
    /// - description: The nodes in the layout tree.
    public var layout: LayoutTreeSnapshot
    
    /// - description: The post-layout inline text nodes.
    public var textBoxes: TextBoxSnapshot
    
    /// - description: Horizontal scroll offset.
    public var scrollOffsetX: Int?
    
    /// - description: Vertical scroll offset.
    public var scrollOffsetY: Int?
    
    /// - description: Document content width.
    public var contentWidth: Int?
    
    /// - description: Document content height.
    public var contentHeight: Int?
    
  }
}

extension SwiftCDPDomains.DOMSnapshot {
  /// - see: https://vanilla.aslushnikov.com/?DOMSnapshot.NodeTreeSnapshot
  /// - description: Table containing nodes.
  public struct NodeTreeSnapshot: Codable {
    /// - description: Parent node index.
    public var parentIndex: [Int]?
    
    /// - description: `Node`'s nodeType.
    public var nodeType: [Int]?
    
    /// - description: `Node`'s nodeName.
    public var nodeName: [StringIndex]?
    
    /// - description: `Node`'s nodeValue.
    public var nodeValue: [StringIndex]?
    
    /// - description: `Node`'s id, corresponds to DOM.Node.backendNodeId.
    public var backendNodeId: [SwiftCDPDomains.DOM.BackendNodeId]?
    
    /// - description: Attributes of an `Element` node. Flatten name, value pairs.
    public var attributes: [ArrayOfStrings]?
    
    /// - description: Only set for textarea elements, contains the text value.
    public var textValue: RareStringData?
    
    /// - description: Only set for input elements, contains the input's associated text value.
    public var inputValue: RareStringData?
    
    /// - description: Only set for radio and checkbox input elements, indicates if the element has been checked
    public var inputChecked: RareBooleanData?
    
    /// - description: Only set for option elements, indicates if the element has been selected
    public var optionSelected: RareBooleanData?
    
    /// - description: The index of the document in the list of the snapshot documents.
    public var contentDocumentIndex: RareIntegerData?
    
    /// - description: Type of a pseudo element node.
    public var pseudoType: RareStringData?
    
    /// - description: Whether this DOM node responds to mouse clicks. This includes nodes that have had click
    /// event listeners attached via JavaScript as well as anchor tags that naturally navigate when
    /// clicked.
    public var isClickable: RareBooleanData?
    
    /// - description: The selected url for nodes with a srcset attribute.
    public var currentSourceURL: RareStringData?
    
    /// - description: The url of the script (if any) that generates this node.
    public var originURL: RareStringData?
    
  }
}

extension SwiftCDPDomains.DOMSnapshot {
  /// - see: https://vanilla.aslushnikov.com/?DOMSnapshot.LayoutTreeSnapshot
  /// - description: Table of details of an element in the DOM tree with a LayoutObject.
  public struct LayoutTreeSnapshot: Codable {
    /// - description: Index of the corresponding node in the `NodeTreeSnapshot` array returned by `captureSnapshot`.
    public var nodeIndex: [Int]
    
    /// - description: Array of indexes specifying computed style strings, filtered according to the `computedStyles` parameter passed to `captureSnapshot`.
    public var styles: [ArrayOfStrings]
    
    /// - description: The absolute position bounding box.
    public var bounds: [Rectangle]
    
    /// - description: Contents of the LayoutText, if any.
    public var text: [StringIndex]
    
    /// - description: Stacking context information.
    public var stackingContexts: RareBooleanData
    
    /// - description: Global paint order index, which is determined by the stacking order of the nodes. Nodes
    /// that are painted together will have the same index. Only provided if includePaintOrder in
    /// captureSnapshot was true.
    public var paintOrders: [Int]?
    
    /// - description: The offset rect of nodes. Only available when includeDOMRects is set to true
    public var offsetRects: [Rectangle]?
    
    /// - description: The scroll rect of nodes. Only available when includeDOMRects is set to true
    public var scrollRects: [Rectangle]?
    
    /// - description: The client rect of nodes. Only available when includeDOMRects is set to true
    public var clientRects: [Rectangle]?
    
  }
}

extension SwiftCDPDomains.DOMSnapshot {
  /// - see: https://vanilla.aslushnikov.com/?DOMSnapshot.TextBoxSnapshot
  /// - description: Table of details of the post layout rendered text positions. The exact layout should not be regarded as
  /// stable and may change between versions.
  public struct TextBoxSnapshot: Codable {
    /// - description: Index of the layout tree node that owns this box collection.
    public var layoutIndex: [Int]
    
    /// - description: The absolute position bounding box.
    public var bounds: [Rectangle]
    
    /// - description: The starting index in characters, for this post layout textbox substring. Characters that
    /// would be represented as a surrogate pair in UTF-16 have length 2.
    public var start: [Int]
    
    /// - description: The number of characters in this post layout textbox substring. Characters that would be
    /// represented as a surrogate pair in UTF-16 have length 2.
    public var length: [Int]
    
  }
}

