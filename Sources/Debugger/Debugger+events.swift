import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Debugger"

extension SwiftCDPDomains.Debugger {
  /// - description: Debugger domain exposes JavaScript debugging capabilities. It allows setting and removing
  /// breakpoints, stepping through execution, exploring stack traces, etc.
  public struct breakpointResolved: ModelEvent {
    public typealias Model = SwiftCDPDomains.Debugger
    
    /// - description: Breakpoint unique identifier.
    public var breakpointId: BreakpointId
    
    /// - description: Actual breakpoint location.
    public var location: Location
    
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Debugger domain exposes JavaScript debugging capabilities. It allows setting and removing
  /// breakpoints, stepping through execution, exploring stack traces, etc.
  public struct paused: ModelEvent {
    public typealias Model = SwiftCDPDomains.Debugger
    
    /// - description: Call stack the virtual machine stopped on.
    public var callFrames: [CallFrame]
    
    /// - description: Pause reason.
    public var reason: String
    
    /// - description: Object containing break-specific auxiliary properties.
    public var data: [String: JsonValue]?
    
    /// - description: Hit breakpoints IDs
    public var hitBreakpoints: [String]?
    
    /// - description: Async stack trace, if any.
    public var asyncStackTrace: SwiftCDPDomains.Runtime.StackTrace?
    
    /// - description: Async stack trace, if any.
    /// - intention: This is an experimental property.
    public var asyncStackTraceId: SwiftCDPDomains.Runtime.StackTraceId?
    
    /// - description: Never present, will be removed.
    /// - intention: This is an experimental property.
    public var asyncCallStackTraceId: SwiftCDPDomains.Runtime.StackTraceId?
    
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Debugger domain exposes JavaScript debugging capabilities. It allows setting and removing
  /// breakpoints, stepping through execution, exploring stack traces, etc.
  public struct resumed: ModelEvent {
    public typealias Model = SwiftCDPDomains.Debugger
    
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Debugger domain exposes JavaScript debugging capabilities. It allows setting and removing
  /// breakpoints, stepping through execution, exploring stack traces, etc.
  public struct scriptFailedToParse: ModelEvent {
    public typealias Model = SwiftCDPDomains.Debugger
    
    /// - description: Identifier of the script parsed.
    public var scriptId: SwiftCDPDomains.Runtime.ScriptId
    
    /// - description: URL or name of the script parsed (if any).
    public var url: String
    
    /// - description: Line offset of the script within the resource with given URL (for script tags).
    public var startLine: Int
    
    /// - description: Column offset of the script within the resource with given URL.
    public var startColumn: Int
    
    /// - description: Last line of the script.
    public var endLine: Int
    
    /// - description: Length of the last line of the script.
    public var endColumn: Int
    
    /// - description: Specifies script creation context.
    public var executionContextId: SwiftCDPDomains.Runtime.ExecutionContextId
    
    /// - description: Content hash of the script.
    public var hash: String
    
    /// - description: Embedder-specific auxiliary data.
    public var executionContextAuxData: [String: JsonValue]?
    
    /// - description: URL of source map associated with script (if any).
    public var sourceMapURL: String?
    
    /// - description: True, if this script has sourceURL.
    public var hasSourceURL: Bool?
    
    /// - description: True, if this script is ES6 module.
    public var isModule: Bool?
    
    /// - description: This script length.
    public var length: Int?
    
    /// - description: JavaScript top stack frame of where the script parsed event was triggered if available.
    /// - intention: This is an experimental property.
    public var stackTrace: SwiftCDPDomains.Runtime.StackTrace?
    
    /// - description: If the scriptLanguage is WebAssembly, the code section offset in the module.
    /// - intention: This is an experimental property.
    public var codeOffset: Int?
    
    /// - description: The language of the script.
    /// - intention: This is an experimental property.
    public var scriptLanguage: SwiftCDPDomains.Debugger.ScriptLanguage?
    
    /// - description: The name the embedder supplied for this script.
    /// - intention: This is an experimental property.
    public var embedderName: String?
    
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Debugger domain exposes JavaScript debugging capabilities. It allows setting and removing
  /// breakpoints, stepping through execution, exploring stack traces, etc.
  public struct scriptParsed: ModelEvent {
    public typealias Model = SwiftCDPDomains.Debugger
    
    /// - description: Identifier of the script parsed.
    public var scriptId: SwiftCDPDomains.Runtime.ScriptId
    
    /// - description: URL or name of the script parsed (if any).
    public var url: String
    
    /// - description: Line offset of the script within the resource with given URL (for script tags).
    public var startLine: Int
    
    /// - description: Column offset of the script within the resource with given URL.
    public var startColumn: Int
    
    /// - description: Last line of the script.
    public var endLine: Int
    
    /// - description: Length of the last line of the script.
    public var endColumn: Int
    
    /// - description: Specifies script creation context.
    public var executionContextId: SwiftCDPDomains.Runtime.ExecutionContextId
    
    /// - description: Content hash of the script.
    public var hash: String
    
    /// - description: Embedder-specific auxiliary data.
    public var executionContextAuxData: [String: JsonValue]?
    
    /// - description: True, if this script is generated as a result of the live edit operation.
    /// - intention: This is an experimental property.
    public var isLiveEdit: Bool?
    
    /// - description: URL of source map associated with script (if any).
    public var sourceMapURL: String?
    
    /// - description: True, if this script has sourceURL.
    public var hasSourceURL: Bool?
    
    /// - description: True, if this script is ES6 module.
    public var isModule: Bool?
    
    /// - description: This script length.
    public var length: Int?
    
    /// - description: JavaScript top stack frame of where the script parsed event was triggered if available.
    /// - intention: This is an experimental property.
    public var stackTrace: SwiftCDPDomains.Runtime.StackTrace?
    
    /// - description: If the scriptLanguage is WebAssembly, the code section offset in the module.
    /// - intention: This is an experimental property.
    public var codeOffset: Int?
    
    /// - description: The language of the script.
    /// - intention: This is an experimental property.
    public var scriptLanguage: SwiftCDPDomains.Debugger.ScriptLanguage?
    
    /// - description: If the scriptLanguage is WebASsembly, the source of debug symbols for the module.
    /// - intention: This is an experimental property.
    public var debugSymbols: SwiftCDPDomains.Debugger.DebugSymbols?
    
    /// - description: The name the embedder supplied for this script.
    /// - intention: This is an experimental property.
    public var embedderName: String?
    
  }
}

