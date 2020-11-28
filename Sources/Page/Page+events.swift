import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Page"

extension SwiftCDPDomains.Page {
  /// - description: Actions and events related to the inspected page belong to the page domain.
  public struct domContentEventFired: ModelEvent {
    public typealias Model = SwiftCDPDomains.Page
    
    public var timestamp: SwiftCDPDomains.Network.MonotonicTime
    
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Actions and events related to the inspected page belong to the page domain.
  public struct fileChooserOpened: ModelEvent {
    public typealias Model = SwiftCDPDomains.Page
    
    /// - description: Id of the frame containing input node.
    /// - intention: This is an experimental property.
    public var frameId: FrameId
    
    /// - description: Input node id.
    /// - intention: This is an experimental property.
    public var backendNodeId: SwiftCDPDomains.DOM.BackendNodeId
    
    /// - description: Input mode.
    public var mode: String
    
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Actions and events related to the inspected page belong to the page domain.
  public struct frameAttached: ModelEvent {
    public typealias Model = SwiftCDPDomains.Page
    
    /// - description: Id of the frame that has been attached.
    public var frameId: FrameId
    
    /// - description: Parent frame identifier.
    public var parentFrameId: FrameId
    
    /// - description: JavaScript stack trace of when frame was attached, only set if frame initiated from script.
    public var stack: SwiftCDPDomains.Runtime.StackTrace?
    
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Actions and events related to the inspected page belong to the page domain.
  @available(*, deprecated)
  public struct frameClearedScheduledNavigation: ModelEvent {
    public typealias Model = SwiftCDPDomains.Page
    
    /// - description: Id of the frame that has cleared its scheduled navigation.
    public var frameId: FrameId
    
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Actions and events related to the inspected page belong to the page domain.
  public struct frameDetached: ModelEvent {
    public typealias Model = SwiftCDPDomains.Page
    
    /// - description: Id of the frame that has been detached.
    public var frameId: FrameId
    
    /// - intention: This is an experimental property.
    public var reason: String
    
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Actions and events related to the inspected page belong to the page domain.
  public struct frameNavigated: ModelEvent {
    public typealias Model = SwiftCDPDomains.Page
    
    /// - description: Frame object.
    public var frame: Frame
    
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Actions and events related to the inspected page belong to the page domain.
  public struct documentOpened: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    
    /// - description: Frame object.
    public var frame: Frame
    
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Actions and events related to the inspected page belong to the page domain.
  public struct frameResized: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Actions and events related to the inspected page belong to the page domain.
  public struct frameRequestedNavigation: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    
    /// - description: Id of the frame that is being navigated.
    public var frameId: FrameId
    
    /// - description: The reason for the navigation.
    public var reason: ClientNavigationReason
    
    /// - description: The destination URL for the requested navigation.
    public var url: String
    
    /// - description: The disposition for the navigation.
    public var disposition: ClientNavigationDisposition
    
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Actions and events related to the inspected page belong to the page domain.
  @available(*, deprecated)
  public struct frameScheduledNavigation: ModelEvent {
    public typealias Model = SwiftCDPDomains.Page
    
    /// - description: Id of the frame that has scheduled a navigation.
    public var frameId: FrameId
    
    /// - description: Delay (in seconds) until the navigation is scheduled to begin. The navigation is not
    /// guaranteed to start.
    public var delay: Int
    
    /// - description: The reason for the navigation.
    public var reason: ClientNavigationReason
    
    /// - description: The destination URL for the scheduled navigation.
    public var url: String
    
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Actions and events related to the inspected page belong to the page domain.
  public struct frameStartedLoading: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    
    /// - description: Id of the frame that has started loading.
    public var frameId: FrameId
    
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Actions and events related to the inspected page belong to the page domain.
  public struct frameStoppedLoading: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    
    /// - description: Id of the frame that has stopped loading.
    public var frameId: FrameId
    
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Actions and events related to the inspected page belong to the page domain.
  public struct downloadWillBegin: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    
    /// - description: Id of the frame that caused download to begin.
    public var frameId: FrameId
    
    /// - description: Global unique identifier of the download.
    public var guid: String
    
    /// - description: URL of the resource being downloaded.
    public var url: String
    
    /// - description: Suggested file name of the resource (the actual name of the file saved on disk may differ).
    public var suggestedFilename: String
    
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Actions and events related to the inspected page belong to the page domain.
  public struct downloadProgress: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    
    /// - description: Global unique identifier of the download.
    public var guid: String
    
    /// - description: Total expected bytes to download.
    public var totalBytes: Int
    
    /// - description: Total bytes received.
    public var receivedBytes: Int
    
    /// - description: Download status.
    public var state: String
    
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Actions and events related to the inspected page belong to the page domain.
  public struct interstitialHidden: ModelEvent {
    public typealias Model = SwiftCDPDomains.Page
    
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Actions and events related to the inspected page belong to the page domain.
  public struct interstitialShown: ModelEvent {
    public typealias Model = SwiftCDPDomains.Page
    
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Actions and events related to the inspected page belong to the page domain.
  public struct javascriptDialogClosed: ModelEvent {
    public typealias Model = SwiftCDPDomains.Page
    
    /// - description: Whether dialog was confirmed.
    public var result: Bool
    
    /// - description: User input in case of prompt.
    public var userInput: String
    
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Actions and events related to the inspected page belong to the page domain.
  public struct javascriptDialogOpening: ModelEvent {
    public typealias Model = SwiftCDPDomains.Page
    
    /// - description: Frame url.
    public var url: String
    
    /// - description: Message that will be displayed by the dialog.
    public var message: String
    
    /// - description: Dialog type.
    public var type: DialogType
    
    /// - description: True iff browser is capable showing or acting on the given dialog. When browser has no
    /// dialog handler for given target, calling alert while Page domain is engaged will stall
    /// the page execution. Execution can be resumed via calling Page.handleJavaScriptDialog.
    public var hasBrowserHandler: Bool
    
    /// - description: Default dialog prompt.
    public var defaultPrompt: String?
    
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Actions and events related to the inspected page belong to the page domain.
  public struct lifecycleEvent: ModelEvent {
    public typealias Model = SwiftCDPDomains.Page
    
    /// - description: Id of the frame.
    public var frameId: FrameId
    
    /// - description: Loader identifier. Empty string if the request is fetched from worker.
    public var loaderId: SwiftCDPDomains.Network.LoaderId
    
    public var name: String
    
    public var timestamp: SwiftCDPDomains.Network.MonotonicTime
    
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Actions and events related to the inspected page belong to the page domain.
  public struct loadEventFired: ModelEvent {
    public typealias Model = SwiftCDPDomains.Page
    
    public var timestamp: SwiftCDPDomains.Network.MonotonicTime
    
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Actions and events related to the inspected page belong to the page domain.
  public struct navigatedWithinDocument: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    
    /// - description: Id of the frame.
    public var frameId: FrameId
    
    /// - description: Frame's new url.
    public var url: String
    
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Actions and events related to the inspected page belong to the page domain.
  public struct screencastFrame: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    
    /// - description: Base64-encoded compressed image.
    public var data: String
    
    /// - description: Screencast frame metadata.
    public var metadata: ScreencastFrameMetadata
    
    /// - description: Frame number.
    public var sessionId: Int
    
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Actions and events related to the inspected page belong to the page domain.
  public struct screencastVisibilityChanged: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    
    /// - description: True if the page is visible.
    public var visible: Bool
    
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Actions and events related to the inspected page belong to the page domain.
  public struct windowOpen: ModelEvent {
    public typealias Model = SwiftCDPDomains.Page
    
    /// - description: The URL for the new window.
    public var url: String
    
    /// - description: Window name.
    public var windowName: String
    
    /// - description: An array of enabled window features.
    public var windowFeatures: [String]
    
    /// - description: Whether or not it was triggered by user gesture.
    public var userGesture: Bool
    
  }
}

extension SwiftCDPDomains.Page {
  /// - description: Actions and events related to the inspected page belong to the page domain.
  public struct compilationCacheProduced: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Page
    
    public var url: String
    
    /// - description: Base64-encoded data
    public var data: String
    
  }
}

