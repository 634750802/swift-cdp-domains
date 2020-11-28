import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "Page"

extension SwiftCDPDomains.Page {
  /// - see: https://vanilla.aslushnikov.com/?Page.FrameId
  /// - description: Unique frame identifier.
  public struct FrameId: Codable {
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

extension SwiftCDPDomains.Page {
  /// - see: https://vanilla.aslushnikov.com/?Page.AdFrameType
  /// - description: Indicates whether a frame has been identified as an ad.
  /// - choices: ["none", "child", "root"]
  public typealias AdFrameType = String
}

extension SwiftCDPDomains.Page {
  /// - see: https://vanilla.aslushnikov.com/?Page.SecureContextType
  /// - description: Indicates whether the frame is a secure context and why it is the case.
  /// - choices: ["Secure", "SecureLocalhost", "InsecureScheme", "InsecureAncestor"]
  public typealias SecureContextType = String
}

extension SwiftCDPDomains.Page {
  /// - see: https://vanilla.aslushnikov.com/?Page.CrossOriginIsolatedContextType
  /// - description: Indicates whether the frame is cross-origin isolated and why it is the case.
  /// - choices: ["Isolated", "NotIsolated", "NotIsolatedFeatureDisabled"]
  public typealias CrossOriginIsolatedContextType = String
}

extension SwiftCDPDomains.Page {
  /// - see: https://vanilla.aslushnikov.com/?Page.GatedAPIFeatures
  /// - choices: ["SharedArrayBuffers", "SharedArrayBuffersTransferAllowed", "PerformanceMeasureMemory", "PerformanceProfile"]
  public typealias GatedAPIFeatures = String
}

extension SwiftCDPDomains.Page {
  /// - see: https://vanilla.aslushnikov.com/?Page.Frame
  /// - description: Information about the Frame on the page.
  public struct Frame: Codable {
    /// - description: Frame unique identifier.
    public var id: FrameId
    
    /// - description: Parent frame identifier.
    public var parentId: String?
    
    /// - description: Identifier of the loader associated with this frame.
    public var loaderId: SwiftCDPDomains.Network.LoaderId
    
    /// - description: Frame's name as specified in the tag.
    public var name: String?
    
    /// - description: Frame document's URL without fragment.
    public var url: String
    
    /// - description: Frame document's URL fragment including the '#'.
    /// - intention: This is an experimental property.
    public var urlFragment: String?
    
    /// - description: Frame document's registered domain, taking the public suffixes list into account.
    /// Extracted from the Frame's url.
    /// Example URLs: http://www.google.com/file.html -> "google.com"
    ///               http://a.b.co.uk/file.html      -> "b.co.uk"
    /// - intention: This is an experimental property.
    public var domainAndRegistry: String
    
    /// - description: Frame document's security origin.
    public var securityOrigin: String
    
    /// - description: Frame document's mimeType as determined by the browser.
    public var mimeType: String
    
    /// - description: If the frame failed to load, this contains the URL that could not be loaded. Note that unlike url above, this URL may contain a fragment.
    /// - intention: This is an experimental property.
    public var unreachableUrl: String?
    
    /// - description: Indicates whether this frame was tagged as an ad.
    /// - intention: This is an experimental property.
    public var adFrameType: AdFrameType?
    
    /// - description: Indicates whether the main document is a secure context and explains why that is the case.
    /// - intention: This is an experimental property.
    public var secureContextType: SecureContextType
    
    /// - description: Indicates whether this is a cross origin isolated context.
    /// - intention: This is an experimental property.
    public var crossOriginIsolatedContextType: CrossOriginIsolatedContextType
    
    /// - description: Indicated which gated APIs / features are available.
    /// - intention: This is an experimental property.
    public var gatedAPIFeatures: [GatedAPIFeatures]
    
  }
}

extension SwiftCDPDomains.Page {
  /// - see: https://vanilla.aslushnikov.com/?Page.FrameResource
  /// - description: Information about the Resource on the page.
  public struct FrameResource: Codable {
    /// - description: Resource URL.
    public var url: String
    
    /// - description: Type of this resource.
    public var type: SwiftCDPDomains.Network.ResourceType
    
    /// - description: Resource mimeType as determined by the browser.
    public var mimeType: String
    
    /// - description: last-modified timestamp as reported by server.
    public var lastModified: SwiftCDPDomains.Network.TimeSinceEpoch?
    
    /// - description: Resource content size.
    public var contentSize: JsonNumber?
    
    /// - description: True if the resource failed to load.
    public var failed: Bool?
    
    /// - description: True if the resource was canceled during loading.
    public var canceled: Bool?
    
  }
}

extension SwiftCDPDomains.Page {
  /// - see: https://vanilla.aslushnikov.com/?Page.FrameResourceTree
  /// - description: Information about the Frame hierarchy along with their cached resources.
  public struct FrameResourceTree: Codable {
    /// - description: Frame information for this tree item.
    public var frame: Frame
    
    /// - description: Child frames.
    public var childFrames: [StructReference<FrameResourceTree>]?
    
    /// - description: Information about frame resources.
    public var resources: [FrameResource]
    
  }
}

extension SwiftCDPDomains.Page {
  /// - see: https://vanilla.aslushnikov.com/?Page.FrameTree
  /// - description: Information about the Frame hierarchy.
  public struct FrameTree: Codable {
    /// - description: Frame information for this tree item.
    public var frame: Frame
    
    /// - description: Child frames.
    public var childFrames: [StructReference<FrameTree>]?
    
  }
}

extension SwiftCDPDomains.Page {
  /// - see: https://vanilla.aslushnikov.com/?Page.ScriptIdentifier
  /// - description: Unique script identifier.
  public typealias ScriptIdentifier = String
}

extension SwiftCDPDomains.Page {
  /// - see: https://vanilla.aslushnikov.com/?Page.TransitionType
  /// - description: Transition type.
  /// - choices: ["link", "typed", "address_bar", "auto_bookmark", "auto_subframe", "manual_subframe", "generated", "auto_toplevel", "form_submit", "reload", "keyword", "keyword_generated", "other"]
  public typealias TransitionType = String
}

extension SwiftCDPDomains.Page {
  /// - see: https://vanilla.aslushnikov.com/?Page.NavigationEntry
  /// - description: Navigation history entry.
  public struct NavigationEntry: Codable {
    /// - description: Unique id of the navigation history entry.
    public var id: Int
    
    /// - description: URL of the navigation history entry.
    public var url: String
    
    /// - description: URL that the user typed in the url bar.
    public var userTypedURL: String
    
    /// - description: Title of the navigation history entry.
    public var title: String
    
    /// - description: Transition type.
    public var transitionType: TransitionType
    
  }
}

extension SwiftCDPDomains.Page {
  /// - see: https://vanilla.aslushnikov.com/?Page.ScreencastFrameMetadata
  /// - description: Screencast frame metadata.
  public struct ScreencastFrameMetadata: Codable {
    /// - description: Top offset in DIP.
    public var offsetTop: Int
    
    /// - description: Page scale factor.
    public var pageScaleFactor: Double
    
    /// - description: Device screen width in DIP.
    public var deviceWidth: Int
    
    /// - description: Device screen height in DIP.
    public var deviceHeight: Int
    
    /// - description: Position of horizontal scroll in CSS pixels.
    public var scrollOffsetX: Int
    
    /// - description: Position of vertical scroll in CSS pixels.
    public var scrollOffsetY: Int
    
    /// - description: Frame swap timestamp.
    public var timestamp: SwiftCDPDomains.Network.TimeSinceEpoch?
    
  }
}

extension SwiftCDPDomains.Page {
  /// - see: https://vanilla.aslushnikov.com/?Page.DialogType
  /// - description: Javascript dialog type.
  /// - choices: ["alert", "confirm", "prompt", "beforeunload"]
  public typealias DialogType = String
}

extension SwiftCDPDomains.Page {
  /// - see: https://vanilla.aslushnikov.com/?Page.AppManifestError
  /// - description: Error while paring app manifest.
  public struct AppManifestError: Codable {
    /// - description: Error message.
    public var message: String
    
    /// - description: If criticial, this is a non-recoverable parse error.
    public var critical: Int
    
    /// - description: Error line.
    public var line: Int
    
    /// - description: Error column.
    public var column: Int
    
  }
}

extension SwiftCDPDomains.Page {
  /// - see: https://vanilla.aslushnikov.com/?Page.AppManifestParsedProperties
  /// - description: Parsed app manifest properties.
  public struct AppManifestParsedProperties: Codable {
    /// - description: Computed scope value
    public var scope: String
    
  }
}

extension SwiftCDPDomains.Page {
  /// - see: https://vanilla.aslushnikov.com/?Page.LayoutViewport
  /// - description: Layout viewport position and dimensions.
  public struct LayoutViewport: Codable {
    /// - description: Horizontal offset relative to the document (CSS pixels).
    public var pageX: Int
    
    /// - description: Vertical offset relative to the document (CSS pixels).
    public var pageY: Int
    
    /// - description: Width (CSS pixels), excludes scrollbar if present.
    public var clientWidth: Int
    
    /// - description: Height (CSS pixels), excludes scrollbar if present.
    public var clientHeight: Int
    
  }
}

extension SwiftCDPDomains.Page {
  /// - see: https://vanilla.aslushnikov.com/?Page.VisualViewport
  /// - description: Visual viewport position, dimensions, and scale.
  public struct VisualViewport: Codable {
    /// - description: Horizontal offset relative to the layout viewport (CSS pixels).
    public var offsetX: Int
    
    /// - description: Vertical offset relative to the layout viewport (CSS pixels).
    public var offsetY: Int
    
    /// - description: Horizontal offset relative to the document (CSS pixels).
    public var pageX: Int
    
    /// - description: Vertical offset relative to the document (CSS pixels).
    public var pageY: Int
    
    /// - description: Width (CSS pixels), excludes scrollbar if present.
    public var clientWidth: Int
    
    /// - description: Height (CSS pixels), excludes scrollbar if present.
    public var clientHeight: Int
    
    /// - description: Scale relative to the ideal viewport (size at width=device-width).
    public var scale: Double
    
    /// - description: Page zoom factor (CSS to device independent pixels ratio).
    public var zoom: Double?
    
  }
}

extension SwiftCDPDomains.Page {
  /// - see: https://vanilla.aslushnikov.com/?Page.Viewport
  /// - description: Viewport for capturing screenshot.
  public struct Viewport: Codable {
    /// - description: X offset in device independent pixels (dip).
    public var x: Int
    
    /// - description: Y offset in device independent pixels (dip).
    public var y: Int
    
    /// - description: Rectangle width in device independent pixels (dip).
    public var width: Int
    
    /// - description: Rectangle height in device independent pixels (dip).
    public var height: Int
    
    /// - description: Page scale factor.
    public var scale: Double
    
  }
}

extension SwiftCDPDomains.Page {
  /// - see: https://vanilla.aslushnikov.com/?Page.FontFamilies
  /// - description: Generic font families collection.
  public struct FontFamilies: Codable {
    /// - description: The standard font-family.
    public var standard: String?
    
    /// - description: The fixed font-family.
    public var fixed: String?
    
    /// - description: The serif font-family.
    public var serif: String?
    
    /// - description: The sansSerif font-family.
    public var sansSerif: String?
    
    /// - description: The cursive font-family.
    public var cursive: String?
    
    /// - description: The fantasy font-family.
    public var fantasy: String?
    
    /// - description: The pictograph font-family.
    public var pictograph: String?
    
  }
}

extension SwiftCDPDomains.Page {
  /// - see: https://vanilla.aslushnikov.com/?Page.FontSizes
  /// - description: Default font sizes.
  public struct FontSizes: Codable {
    /// - description: Default standard font size.
    public var standard: Int?
    
    /// - description: Default fixed font size.
    public var fixed: Int?
    
  }
}

extension SwiftCDPDomains.Page {
  /// - see: https://vanilla.aslushnikov.com/?Page.ClientNavigationReason
  /// - choices: ["formSubmissionGet", "formSubmissionPost", "httpHeaderRefresh", "scriptInitiated", "metaTagRefresh", "pageBlockInterstitial", "reload", "anchorClick"]
  public typealias ClientNavigationReason = String
}

extension SwiftCDPDomains.Page {
  /// - see: https://vanilla.aslushnikov.com/?Page.ClientNavigationDisposition
  /// - choices: ["currentTab", "newTab", "newWindow", "download"]
  public typealias ClientNavigationDisposition = String
}

extension SwiftCDPDomains.Page {
  /// - see: https://vanilla.aslushnikov.com/?Page.InstallabilityErrorArgument
  public struct InstallabilityErrorArgument: Codable {
    /// - description: Argument name (e.g. name:'minimum-icon-size-in-pixels').
    public var name: String
    
    /// - description: Argument value (e.g. value:'64').
    public var value: String
    
  }
}

extension SwiftCDPDomains.Page {
  /// - see: https://vanilla.aslushnikov.com/?Page.InstallabilityError
  /// - description: The installability error
  public struct InstallabilityError: Codable {
    /// - description: The error id (e.g. 'manifest-missing-suitable-icon').
    public var errorId: String
    
    /// - description: The list of error arguments (e.g. {name:'minimum-icon-size-in-pixels', value:'64'}).
    public var errorArguments: [InstallabilityErrorArgument]
    
  }
}

extension SwiftCDPDomains.Page {
  /// - see: https://vanilla.aslushnikov.com/?Page.ReferrerPolicy
  /// - description: The referring-policy used for the navigation.
  /// - choices: ["noReferrer", "noReferrerWhenDowngrade", "origin", "originWhenCrossOrigin", "sameOrigin", "strictOrigin", "strictOriginWhenCrossOrigin", "unsafeUrl"]
  public typealias ReferrerPolicy = String
}

