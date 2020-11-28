import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Debugger"

extension SwiftCDPDomains.Debugger {
  /// - description: Continues execution until specific location is reached.
  public struct continueToLocation: ModelMethod {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "continueToLocation"
    
    /// - description: Location to continue to.
    public var location: Location
    
    public var targetCallFrames: String?
    
    public init(location: Location, targetCallFrames: String? = nil) {
      self.location = location
      self.targetCallFrames = targetCallFrames
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Disables debugger for given page.
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Enables debugger for the given page. Clients should not assume that the debugging has been
  /// enabled until the result for this command is received.
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "enable"
    
    /// - description: The maximum size in bytes of collected scripts (not referenced by other heap objects)
    /// the debugger can hold. Puts no limit if paramter is omitted.
    /// - intention: This is an experimental property.
    public var maxScriptsCacheSize: Int?
    
    public init(maxScriptsCacheSize: Int? = nil) {
      self.maxScriptsCacheSize = maxScriptsCacheSize
    }
    
    public struct Result: Decodable {
      /// - description: Unique identifier of the debugger.
      /// - intention: This is an experimental property.
      public var debuggerId: SwiftCDPDomains.Runtime.UniqueDebuggerId
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Evaluates expression on a given call frame.
  public struct evaluateOnCallFrame: ModelMethod {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "evaluateOnCallFrame"
    
    /// - description: Call frame identifier to evaluate on.
    public var callFrameId: CallFrameId
    
    /// - description: Expression to evaluate.
    public var expression: String
    
    /// - description: String object group name to put result into (allows rapid releasing resulting object handles
    /// using `releaseObjectGroup`).
    public var objectGroup: String?
    
    /// - description: Specifies whether command line API should be available to the evaluated expression, defaults
    /// to false.
    public var includeCommandLineAPI: Bool?
    
    /// - description: In silent mode exceptions thrown during evaluation are not reported and do not pause
    /// execution. Overrides `setPauseOnException` state.
    public var silent: Bool?
    
    /// - description: Whether the result is expected to be a JSON object that should be sent by value.
    public var returnByValue: Bool?
    
    /// - description: Whether preview should be generated for the result.
    /// - intention: This is an experimental property.
    public var generatePreview: Bool?
    
    /// - description: Whether to throw an exception if side effect cannot be ruled out during evaluation.
    public var throwOnSideEffect: Bool?
    
    /// - description: Terminate execution after timing out (number of milliseconds).
    /// - intention: This is an experimental property.
    public var timeout: SwiftCDPDomains.Runtime.TimeDelta?
    
    public init(callFrameId: CallFrameId, expression: String, objectGroup: String? = nil, includeCommandLineAPI: Bool? = nil, silent: Bool? = nil, returnByValue: Bool? = nil, generatePreview: Bool? = nil, throwOnSideEffect: Bool? = nil, timeout: SwiftCDPDomains.Runtime.TimeDelta? = nil) {
      self.callFrameId = callFrameId
      self.expression = expression
      self.objectGroup = objectGroup
      self.includeCommandLineAPI = includeCommandLineAPI
      self.silent = silent
      self.returnByValue = returnByValue
      self.generatePreview = generatePreview
      self.throwOnSideEffect = throwOnSideEffect
      self.timeout = timeout
    }
    
    public struct Result: Decodable {
      /// - description: Object wrapper for the evaluation result.
      public var result: SwiftCDPDomains.Runtime.RemoteObject
      /// - description: Exception details.
      public var exceptionDetails: SwiftCDPDomains.Runtime.ExceptionDetails?
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Execute a Wasm Evaluator module on a given call frame.
  /// - intention: This is an experimental property.
  public struct executeWasmEvaluator: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "executeWasmEvaluator"
    
    /// - description: WebAssembly call frame identifier to evaluate on.
    public var callFrameId: CallFrameId
    
    /// - description: Code of the evaluator module.
    public var evaluator: String
    
    /// - description: Terminate execution after timing out (number of milliseconds).
    /// - intention: This is an experimental property.
    public var timeout: SwiftCDPDomains.Runtime.TimeDelta?
    
    public init(callFrameId: CallFrameId, evaluator: String, timeout: SwiftCDPDomains.Runtime.TimeDelta? = nil) {
      self.callFrameId = callFrameId
      self.evaluator = evaluator
      self.timeout = timeout
    }
    
    public struct Result: Decodable {
      /// - description: Object wrapper for the evaluation result.
      public var result: SwiftCDPDomains.Runtime.RemoteObject
      /// - description: Exception details.
      public var exceptionDetails: SwiftCDPDomains.Runtime.ExceptionDetails?
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Returns possible locations for breakpoint. scriptId in start and end range locations should be
  /// the same.
  public struct getPossibleBreakpoints: ModelMethod {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "getPossibleBreakpoints"
    
    /// - description: Start of range to search possible breakpoint locations in.
    public var start: Location
    
    /// - description: End of range to search possible breakpoint locations in (excluding). When not specified, end
    /// of scripts is used as end of range.
    public var end: Location?
    
    /// - description: Only consider locations which are in the same (non-nested) function as start.
    public var restrictToFunction: Bool?
    
    public init(start: Location, end: Location? = nil, restrictToFunction: Bool? = nil) {
      self.start = start
      self.end = end
      self.restrictToFunction = restrictToFunction
    }
    
    public struct Result: Decodable {
      /// - description: List of the possible breakpoint locations.
      public var locations: [BreakLocation]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Returns source for the script with given id.
  public struct getScriptSource: ModelMethod {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "getScriptSource"
    
    /// - description: Id of the script to get source for.
    public var scriptId: SwiftCDPDomains.Runtime.ScriptId
    
    public init(scriptId: SwiftCDPDomains.Runtime.ScriptId) {
      self.scriptId = scriptId
    }
    
    public struct Result: Decodable {
      /// - description: Script source (empty in case of Wasm bytecode).
      public var scriptSource: String
      /// - description: Wasm bytecode.
      public var bytecode: String?
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: This command is deprecated. Use getScriptSource instead.
  @available(*, deprecated)
  public struct getWasmBytecode: ModelMethod {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "getWasmBytecode"
    
    /// - description: Id of the Wasm script to get source for.
    public var scriptId: SwiftCDPDomains.Runtime.ScriptId
    
    public init(scriptId: SwiftCDPDomains.Runtime.ScriptId) {
      self.scriptId = scriptId
    }
    
    public struct Result: Decodable {
      /// - description: Script source.
      public var bytecode: String
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Returns stack trace with given `stackTraceId`.
  /// - intention: This is an experimental property.
  public struct getStackTrace: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "getStackTrace"
    
    public var stackTraceId: SwiftCDPDomains.Runtime.StackTraceId
    
    public init(stackTraceId: SwiftCDPDomains.Runtime.StackTraceId) {
      self.stackTraceId = stackTraceId
    }
    
    public struct Result: Decodable {
      public var stackTrace: SwiftCDPDomains.Runtime.StackTrace
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Stops on the next JavaScript statement.
  public struct pause: ModelMethod {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "pause"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - intention: This is an experimental property.
  @available(*, deprecated)
  public struct pauseOnAsyncCall: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "pauseOnAsyncCall"
    
    /// - description: Debugger will pause when async call with given stack trace is started.
    public var parentStackTraceId: SwiftCDPDomains.Runtime.StackTraceId
    
    public init(parentStackTraceId: SwiftCDPDomains.Runtime.StackTraceId) {
      self.parentStackTraceId = parentStackTraceId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Removes JavaScript breakpoint.
  public struct removeBreakpoint: ModelMethod {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "removeBreakpoint"
    
    public var breakpointId: BreakpointId
    
    public init(breakpointId: BreakpointId) {
      self.breakpointId = breakpointId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Restarts particular call frame from the beginning.
  public struct restartFrame: ModelMethod {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "restartFrame"
    
    /// - description: Call frame identifier to evaluate on.
    public var callFrameId: CallFrameId
    
    public init(callFrameId: CallFrameId) {
      self.callFrameId = callFrameId
    }
    
    public struct Result: Decodable {
      /// - description: New stack trace.
      public var callFrames: [CallFrame]
      /// - description: Async stack trace, if any.
      public var asyncStackTrace: SwiftCDPDomains.Runtime.StackTrace?
      /// - description: Async stack trace, if any.
      /// - intention: This is an experimental property.
      public var asyncStackTraceId: SwiftCDPDomains.Runtime.StackTraceId?
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Resumes JavaScript execution.
  public struct resume: ModelMethod {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "resume"
    
    /// - description: Set to true to terminate execution upon resuming execution. In contrast
    /// to Runtime.terminateExecution, this will allows to execute further
    /// JavaScript (i.e. via evaluation) until execution of the paused code
    /// is actually resumed, at which point termination is triggered.
    /// If execution is currently not paused, this parameter has no effect.
    public var terminateOnResume: Bool?
    
    public init(terminateOnResume: Bool? = nil) {
      self.terminateOnResume = terminateOnResume
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Searches for given string in script content.
  public struct searchInContent: ModelMethod {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "searchInContent"
    
    /// - description: Id of the script to search in.
    public var scriptId: SwiftCDPDomains.Runtime.ScriptId
    
    /// - description: String to search for.
    public var query: String
    
    /// - description: If true, search is case sensitive.
    public var caseSensitive: Bool?
    
    /// - description: If true, treats string parameter as regex.
    public var isRegex: Bool?
    
    public init(scriptId: SwiftCDPDomains.Runtime.ScriptId, query: String, caseSensitive: Bool? = nil, isRegex: Bool? = nil) {
      self.scriptId = scriptId
      self.query = query
      self.caseSensitive = caseSensitive
      self.isRegex = isRegex
    }
    
    public struct Result: Decodable {
      /// - description: List of search matches.
      public var result: [SearchMatch]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Enables or disables async call stacks tracking.
  public struct setAsyncCallStackDepth: ModelMethod {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "setAsyncCallStackDepth"
    
    /// - description: Maximum depth of async call stacks. Setting to `0` will effectively disable collecting async
    /// call stacks (default).
    public var maxDepth: Int
    
    public init(maxDepth: Int) {
      self.maxDepth = maxDepth
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Replace previous blackbox patterns with passed ones. Forces backend to skip stepping/pausing in
  /// scripts with url matching one of the patterns. VM will try to leave blackboxed script by
  /// performing 'step in' several times, finally resorting to 'step out' if unsuccessful.
  /// - intention: This is an experimental property.
  public struct setBlackboxPatterns: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "setBlackboxPatterns"
    
    /// - description: Array of regexps that will be used to check script url for blackbox state.
    public var patterns: [String]
    
    public init(patterns: [String]) {
      self.patterns = patterns
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Makes backend skip steps in the script in blackboxed ranges. VM will try leave blacklisted
  /// scripts by performing 'step in' several times, finally resorting to 'step out' if unsuccessful.
  /// Positions array contains positions where blackbox state is changed. First interval isn't
  /// blackboxed. Array should be sorted.
  /// - intention: This is an experimental property.
  public struct setBlackboxedRanges: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "setBlackboxedRanges"
    
    /// - description: Id of the script.
    public var scriptId: SwiftCDPDomains.Runtime.ScriptId
    
    public var positions: [ScriptPosition]
    
    public init(scriptId: SwiftCDPDomains.Runtime.ScriptId, positions: [ScriptPosition]) {
      self.scriptId = scriptId
      self.positions = positions
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Sets JavaScript breakpoint at a given location.
  public struct setBreakpoint: ModelMethod {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "setBreakpoint"
    
    /// - description: Location to set breakpoint in.
    public var location: Location
    
    /// - description: Expression to use as a breakpoint condition. When specified, debugger will only stop on the
    /// breakpoint if this expression evaluates to true.
    public var condition: String?
    
    public init(location: Location, condition: String? = nil) {
      self.location = location
      self.condition = condition
    }
    
    public struct Result: Decodable {
      /// - description: Id of the created breakpoint for further reference.
      public var breakpointId: BreakpointId
      /// - description: Location this breakpoint resolved into.
      public var actualLocation: Location
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Sets instrumentation breakpoint.
  public struct setInstrumentationBreakpoint: ModelMethod {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "setInstrumentationBreakpoint"
    
    /// - description: Instrumentation name.
    public var instrumentation: String
    
    public init(instrumentation: String) {
      self.instrumentation = instrumentation
    }
    
    public struct Result: Decodable {
      /// - description: Id of the created breakpoint for further reference.
      public var breakpointId: BreakpointId
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Sets JavaScript breakpoint at given location specified either by URL or URL regex. Once this
  /// command is issued, all existing parsed scripts will have breakpoints resolved and returned in
  /// `locations` property. Further matching script parsing will result in subsequent
  /// `breakpointResolved` events issued. This logical breakpoint will survive page reloads.
  public struct setBreakpointByUrl: ModelMethod {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "setBreakpointByUrl"
    
    /// - description: Line number to set breakpoint at.
    public var lineNumber: Int
    
    /// - description: URL of the resources to set breakpoint on.
    public var url: String?
    
    /// - description: Regex pattern for the URLs of the resources to set breakpoints on. Either `url` or
    /// `urlRegex` must be specified.
    public var urlRegex: String?
    
    /// - description: Script hash of the resources to set breakpoint on.
    public var scriptHash: String?
    
    /// - description: Offset in the line to set breakpoint at.
    public var columnNumber: Int?
    
    /// - description: Expression to use as a breakpoint condition. When specified, debugger will only stop on the
    /// breakpoint if this expression evaluates to true.
    public var condition: String?
    
    public init(lineNumber: Int, url: String? = nil, urlRegex: String? = nil, scriptHash: String? = nil, columnNumber: Int? = nil, condition: String? = nil) {
      self.lineNumber = lineNumber
      self.url = url
      self.urlRegex = urlRegex
      self.scriptHash = scriptHash
      self.columnNumber = columnNumber
      self.condition = condition
    }
    
    public struct Result: Decodable {
      /// - description: Id of the created breakpoint for further reference.
      public var breakpointId: BreakpointId
      /// - description: List of the locations this breakpoint resolved into upon addition.
      public var locations: [Location]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Sets JavaScript breakpoint before each call to the given function.
  /// If another function was created from the same source as a given one,
  /// calling it will also trigger the breakpoint.
  /// - intention: This is an experimental property.
  public struct setBreakpointOnFunctionCall: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "setBreakpointOnFunctionCall"
    
    /// - description: Function object id.
    public var objectId: SwiftCDPDomains.Runtime.RemoteObjectId
    
    /// - description: Expression to use as a breakpoint condition. When specified, debugger will
    /// stop on the breakpoint if this expression evaluates to true.
    public var condition: String?
    
    public init(objectId: SwiftCDPDomains.Runtime.RemoteObjectId, condition: String? = nil) {
      self.objectId = objectId
      self.condition = condition
    }
    
    public struct Result: Decodable {
      /// - description: Id of the created breakpoint for further reference.
      public var breakpointId: BreakpointId
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Activates / deactivates all breakpoints on the page.
  public struct setBreakpointsActive: ModelMethod {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "setBreakpointsActive"
    
    /// - description: New value for breakpoints active state.
    public var active: Bool
    
    public init(active: Bool) {
      self.active = active
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Defines pause on exceptions state. Can be set to stop on all exceptions, uncaught exceptions or
  /// no exceptions. Initial pause on exceptions state is `none`.
  public struct setPauseOnExceptions: ModelMethod {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "setPauseOnExceptions"
    
    /// - description: Pause on exceptions mode.
    public var state: String
    
    public init(state: String) {
      self.state = state
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Changes return value in top frame. Available only at return break position.
  /// - intention: This is an experimental property.
  public struct setReturnValue: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "setReturnValue"
    
    /// - description: New return value.
    public var newValue: SwiftCDPDomains.Runtime.CallArgument
    
    public init(newValue: SwiftCDPDomains.Runtime.CallArgument) {
      self.newValue = newValue
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Edits JavaScript source live.
  public struct setScriptSource: ModelMethod {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "setScriptSource"
    
    /// - description: Id of the script to edit.
    public var scriptId: SwiftCDPDomains.Runtime.ScriptId
    
    /// - description: New content of the script.
    public var scriptSource: String
    
    /// - description: If true the change will not actually be applied. Dry run may be used to get result
    /// description without actually modifying the code.
    public var dryRun: Bool?
    
    public init(scriptId: SwiftCDPDomains.Runtime.ScriptId, scriptSource: String, dryRun: Bool? = nil) {
      self.scriptId = scriptId
      self.scriptSource = scriptSource
      self.dryRun = dryRun
    }
    
    public struct Result: Decodable {
      /// - description: New stack trace in case editing has happened while VM was stopped.
      public var callFrames: [CallFrame]?
      /// - description: Whether current call stack  was modified after applying the changes.
      public var stackChanged: Bool?
      /// - description: Async stack trace, if any.
      public var asyncStackTrace: SwiftCDPDomains.Runtime.StackTrace?
      /// - description: Async stack trace, if any.
      /// - intention: This is an experimental property.
      public var asyncStackTraceId: SwiftCDPDomains.Runtime.StackTraceId?
      /// - description: Exception details if any.
      public var exceptionDetails: SwiftCDPDomains.Runtime.ExceptionDetails?
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Makes page not interrupt on any pauses (breakpoint, exception, dom exception etc).
  public struct setSkipAllPauses: ModelMethod {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "setSkipAllPauses"
    
    /// - description: New value for skip pauses state.
    public var skip: Bool
    
    public init(skip: Bool) {
      self.skip = skip
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Changes value of variable in a callframe. Object-based scopes are not supported and must be
  /// mutated manually.
  public struct setVariableValue: ModelMethod {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "setVariableValue"
    
    /// - description: 0-based number of scope as was listed in scope chain. Only 'local', 'closure' and 'catch'
    /// scope types are allowed. Other scopes could be manipulated manually.
    public var scopeNumber: Int
    
    /// - description: Variable name.
    public var variableName: String
    
    /// - description: New variable value.
    public var newValue: SwiftCDPDomains.Runtime.CallArgument
    
    /// - description: Id of callframe that holds variable.
    public var callFrameId: CallFrameId
    
    public init(scopeNumber: Int, variableName: String, newValue: SwiftCDPDomains.Runtime.CallArgument, callFrameId: CallFrameId) {
      self.scopeNumber = scopeNumber
      self.variableName = variableName
      self.newValue = newValue
      self.callFrameId = callFrameId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Steps into the function call.
  public struct stepInto: ModelMethod {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "stepInto"
    
    /// - description: Debugger will pause on the execution of the first async task which was scheduled
    /// before next pause.
    /// - intention: This is an experimental property.
    public var breakOnAsyncCall: Bool?
    
    /// - description: The skipList specifies location ranges that should be skipped on step into.
    /// - intention: This is an experimental property.
    public var skipList: [LocationRange]?
    
    public init(breakOnAsyncCall: Bool? = nil, skipList: [LocationRange]? = nil) {
      self.breakOnAsyncCall = breakOnAsyncCall
      self.skipList = skipList
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Steps out of the function call.
  public struct stepOut: ModelMethod {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "stepOut"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Debugger {
  /// - description: Steps over the statement.
  public struct stepOver: ModelMethod {
    public typealias Model = SwiftCDPDomains.Debugger
    public static let name = "stepOver"
    
    /// - description: The skipList specifies location ranges that should be skipped on step over.
    /// - intention: This is an experimental property.
    public var skipList: [LocationRange]?
    
    public init(skipList: [LocationRange]? = nil) {
      self.skipList = skipList
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

