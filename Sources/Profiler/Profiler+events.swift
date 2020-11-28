import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Profiler"

extension SwiftCDPDomains.Profiler {
  public struct consoleProfileFinished: ModelEvent {
    public typealias Model = SwiftCDPDomains.Profiler
    
    public var id: String
    
    /// - description: Location of console.profileEnd().
    public var location: SwiftCDPDomains.Debugger.Location
    
    public var profile: Profile
    
    /// - description: Profile title passed as an argument to console.profile().
    public var title: String?
    
  }
}

extension SwiftCDPDomains.Profiler {
  /// - description: Sent when new profile recording is started using console.profile() call.
  public struct consoleProfileStarted: ModelEvent {
    public typealias Model = SwiftCDPDomains.Profiler
    
    public var id: String
    
    /// - description: Location of console.profile().
    public var location: SwiftCDPDomains.Debugger.Location
    
    /// - description: Profile title passed as an argument to console.profile().
    public var title: String?
    
  }
}

extension SwiftCDPDomains.Profiler {
  /// - description: Reports coverage delta since the last poll (either from an event like this, or from
  /// `takePreciseCoverage` for the current isolate. May only be sent if precise code
  /// coverage has been started. This event can be trigged by the embedder to, for example,
  /// trigger collection of coverage data immediatelly at a certain point in time.
  /// - intention: This is an experimental property.
  public struct preciseCoverageDeltaUpdate: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Profiler
    
    /// - description: Monotonically increasing time (in seconds) when the coverage update was taken in the backend.
    public var timestamp: JsonNumber
    
    /// - description: Identifier for distinguishing coverage events.
    public var occassion: String
    
    /// - description: Coverage data for the current isolate.
    public var result: [ScriptCoverage]
    
  }
}

