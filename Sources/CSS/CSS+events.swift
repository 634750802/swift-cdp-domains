import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "CSS"

extension SwiftCDPDomains.CSS {
  /// - description: This domain exposes CSS read/write operations. All CSS objects (stylesheets, rules, and styles)
  /// have an associated `id` used in subsequent operations on the related object. Each object type has
  /// a specific `id` structure, and those are not interchangeable between objects of different kinds.
  /// CSS objects can be loaded using the `get*ForNode()` calls (which accept a DOM node id). A client
  /// can also keep track of stylesheets via the `styleSheetAdded`/`styleSheetRemoved` events and
  /// subsequently load the required stylesheet contents using the `getStyleSheet[Text]()` methods.
  /// - intention: This is an experimental property.
  public struct fontsUpdated: ModelEvent {
    public typealias Model = SwiftCDPDomains.CSS
    
    /// - description: The web font that has loaded.
    public var font: FontFace?
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: This domain exposes CSS read/write operations. All CSS objects (stylesheets, rules, and styles)
  /// have an associated `id` used in subsequent operations on the related object. Each object type has
  /// a specific `id` structure, and those are not interchangeable between objects of different kinds.
  /// CSS objects can be loaded using the `get*ForNode()` calls (which accept a DOM node id). A client
  /// can also keep track of stylesheets via the `styleSheetAdded`/`styleSheetRemoved` events and
  /// subsequently load the required stylesheet contents using the `getStyleSheet[Text]()` methods.
  /// - intention: This is an experimental property.
  public struct mediaQueryResultChanged: ModelEvent {
    public typealias Model = SwiftCDPDomains.CSS
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: This domain exposes CSS read/write operations. All CSS objects (stylesheets, rules, and styles)
  /// have an associated `id` used in subsequent operations on the related object. Each object type has
  /// a specific `id` structure, and those are not interchangeable between objects of different kinds.
  /// CSS objects can be loaded using the `get*ForNode()` calls (which accept a DOM node id). A client
  /// can also keep track of stylesheets via the `styleSheetAdded`/`styleSheetRemoved` events and
  /// subsequently load the required stylesheet contents using the `getStyleSheet[Text]()` methods.
  /// - intention: This is an experimental property.
  public struct styleSheetAdded: ModelEvent {
    public typealias Model = SwiftCDPDomains.CSS
    
    /// - description: Added stylesheet metainfo.
    public var header: CSSStyleSheetHeader
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: This domain exposes CSS read/write operations. All CSS objects (stylesheets, rules, and styles)
  /// have an associated `id` used in subsequent operations on the related object. Each object type has
  /// a specific `id` structure, and those are not interchangeable between objects of different kinds.
  /// CSS objects can be loaded using the `get*ForNode()` calls (which accept a DOM node id). A client
  /// can also keep track of stylesheets via the `styleSheetAdded`/`styleSheetRemoved` events and
  /// subsequently load the required stylesheet contents using the `getStyleSheet[Text]()` methods.
  /// - intention: This is an experimental property.
  public struct styleSheetChanged: ModelEvent {
    public typealias Model = SwiftCDPDomains.CSS
    
    public var styleSheetId: StyleSheetId
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: This domain exposes CSS read/write operations. All CSS objects (stylesheets, rules, and styles)
  /// have an associated `id` used in subsequent operations on the related object. Each object type has
  /// a specific `id` structure, and those are not interchangeable between objects of different kinds.
  /// CSS objects can be loaded using the `get*ForNode()` calls (which accept a DOM node id). A client
  /// can also keep track of stylesheets via the `styleSheetAdded`/`styleSheetRemoved` events and
  /// subsequently load the required stylesheet contents using the `getStyleSheet[Text]()` methods.
  /// - intention: This is an experimental property.
  public struct styleSheetRemoved: ModelEvent {
    public typealias Model = SwiftCDPDomains.CSS
    
    /// - description: Identifier of the removed stylesheet.
    public var styleSheetId: StyleSheetId
    
  }
}

