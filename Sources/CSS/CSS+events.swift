import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "CSS"

extension SwiftCDPDomains.CSS {
  /// - description: Fires whenever a web font is updated.  A non-empty font parameter indicates a successfully loaded
  /// web font
  public struct fontsUpdated: ModelEvent {
    public typealias Model = SwiftCDPDomains.CSS
    
    /// - description: The web font that has loaded.
    public var font: FontFace?
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: Fires whenever a MediaQuery result changes (for example, after a browser window has been
  /// resized.) The current implementation considers only viewport-dependent media features.
  public struct mediaQueryResultChanged: ModelEvent {
    public typealias Model = SwiftCDPDomains.CSS
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: Fired whenever an active document stylesheet is added.
  public struct styleSheetAdded: ModelEvent {
    public typealias Model = SwiftCDPDomains.CSS
    
    /// - description: Added stylesheet metainfo.
    public var header: CSSStyleSheetHeader
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: Fired whenever a stylesheet is changed as a result of the client operation.
  public struct styleSheetChanged: ModelEvent {
    public typealias Model = SwiftCDPDomains.CSS
    
    public var styleSheetId: StyleSheetId
    
  }
}

extension SwiftCDPDomains.CSS {
  /// - description: Fired whenever an active document stylesheet is removed.
  public struct styleSheetRemoved: ModelEvent {
    public typealias Model = SwiftCDPDomains.CSS
    
    /// - description: Identifier of the removed stylesheet.
    public var styleSheetId: StyleSheetId
    
  }
}

