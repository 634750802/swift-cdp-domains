import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Runtime"

extension SwiftCDPDomains.Runtime {
  /// - description: Add handler to promise with given promise object id.
  public struct awaitPromise: ModelMethod {
    public typealias Model = SwiftCDPDomains.Runtime
    public static let name = "awaitPromise"
    
    /// - description: Identifier of the promise.
    public var promiseObjectId: RemoteObjectId
    
    /// - description: Whether the result is expected to be a JSON object that should be sent by value.
    public var returnByValue: Bool?
    
    /// - description: Whether preview should be generated for the result.
    public var generatePreview: Bool?
    
    public init(promiseObjectId: RemoteObjectId, returnByValue: Bool? = nil, generatePreview: Bool? = nil) {
      self.promiseObjectId = promiseObjectId
      self.returnByValue = returnByValue
      self.generatePreview = generatePreview
    }
    
    public struct Result: Decodable {
      /// - description: Promise result. Will contain rejected value if promise was rejected.
      public var result: RemoteObject
      /// - description: Exception details if stack strace is available.
      public var exceptionDetails: ExceptionDetails?
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Runtime {
  /// - description: Calls function with given declaration on the given object. Object group of the result is
  /// inherited from the target object.
  public struct callFunctionOn: ModelMethod {
    public typealias Model = SwiftCDPDomains.Runtime
    public static let name = "callFunctionOn"
    
    /// - description: Declaration of the function to call.
    public var functionDeclaration: String
    
    /// - description: Identifier of the object to call function on. Either objectId or executionContextId should
    /// be specified.
    public var objectId: RemoteObjectId?
    
    /// - description: Call arguments. All call arguments must belong to the same JavaScript world as the target
    /// object.
    public var arguments: [CallArgument]?
    
    /// - description: In silent mode exceptions thrown during evaluation are not reported and do not pause
    /// execution. Overrides `setPauseOnException` state.
    public var silent: Bool?
    
    /// - description: Whether the result is expected to be a JSON object which should be sent by value.
    public var returnByValue: Bool?
    
    /// - description: Whether preview should be generated for the result.
    /// - intention: This is an experimental property.
    public var generatePreview: Bool?
    
    /// - description: Whether execution should be treated as initiated by user in the UI.
    public var userGesture: Bool?
    
    /// - description: Whether execution should `await` for resulting value and return once awaited promise is
    /// resolved.
    public var awaitPromise: Bool?
    
    /// - description: Specifies execution context which global object will be used to call function on. Either
    /// executionContextId or objectId should be specified.
    public var executionContextId: ExecutionContextId?
    
    /// - description: Symbolic group name that can be used to release multiple objects. If objectGroup is not
    /// specified and objectId is, objectGroup will be inherited from object.
    public var objectGroup: String?
    
    public init(functionDeclaration: String, objectId: RemoteObjectId? = nil, arguments: [CallArgument]? = nil, silent: Bool? = nil, returnByValue: Bool? = nil, generatePreview: Bool? = nil, userGesture: Bool? = nil, awaitPromise: Bool? = nil, executionContextId: ExecutionContextId? = nil, objectGroup: String? = nil) {
      self.functionDeclaration = functionDeclaration
      self.objectId = objectId
      self.arguments = arguments
      self.silent = silent
      self.returnByValue = returnByValue
      self.generatePreview = generatePreview
      self.userGesture = userGesture
      self.awaitPromise = awaitPromise
      self.executionContextId = executionContextId
      self.objectGroup = objectGroup
    }
    
    public struct Result: Decodable {
      /// - description: Call result.
      public var result: RemoteObject
      /// - description: Exception details.
      public var exceptionDetails: ExceptionDetails?
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Runtime {
  /// - description: Compiles expression.
  public struct compileScript: ModelMethod {
    public typealias Model = SwiftCDPDomains.Runtime
    public static let name = "compileScript"
    
    /// - description: Expression to compile.
    public var expression: String
    
    /// - description: Source url to be set for the script.
    public var sourceURL: String
    
    /// - description: Specifies whether the compiled script should be persisted.
    public var persistScript: Bool
    
    /// - description: Specifies in which execution context to perform script run. If the parameter is omitted the
    /// evaluation will be performed in the context of the inspected page.
    public var executionContextId: ExecutionContextId?
    
    public init(expression: String, sourceURL: String, persistScript: Bool, executionContextId: ExecutionContextId? = nil) {
      self.expression = expression
      self.sourceURL = sourceURL
      self.persistScript = persistScript
      self.executionContextId = executionContextId
    }
    
    public struct Result: Decodable {
      /// - description: Id of the script.
      public var scriptId: ScriptId?
      /// - description: Exception details.
      public var exceptionDetails: ExceptionDetails?
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Runtime {
  /// - description: Disables reporting of execution contexts creation.
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Runtime
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Runtime {
  /// - description: Discards collected exceptions and console API calls.
  public struct discardConsoleEntries: ModelMethod {
    public typealias Model = SwiftCDPDomains.Runtime
    public static let name = "discardConsoleEntries"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Runtime {
  /// - description: Enables reporting of execution contexts creation by means of `executionContextCreated` event.
  /// When the reporting gets enabled the event will be sent immediately for each existing execution
  /// context.
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Runtime
    public static let name = "enable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Runtime {
  /// - description: Evaluates expression on global object.
  public struct evaluate: ModelMethod {
    public typealias Model = SwiftCDPDomains.Runtime
    public static let name = "evaluate"
    
    /// - description: Expression to evaluate.
    public var expression: String
    
    /// - description: Symbolic group name that can be used to release multiple objects.
    public var objectGroup: String?
    
    /// - description: Determines whether Command Line API should be available during the evaluation.
    public var includeCommandLineAPI: Bool?
    
    /// - description: In silent mode exceptions thrown during evaluation are not reported and do not pause
    /// execution. Overrides `setPauseOnException` state.
    public var silent: Bool?
    
    /// - description: Specifies in which execution context to perform evaluation. If the parameter is omitted the
    /// evaluation will be performed in the context of the inspected page.
    public var contextId: ExecutionContextId?
    
    /// - description: Whether the result is expected to be a JSON object that should be sent by value.
    public var returnByValue: Bool?
    
    /// - description: Whether preview should be generated for the result.
    /// - intention: This is an experimental property.
    public var generatePreview: Bool?
    
    /// - description: Whether execution should be treated as initiated by user in the UI.
    public var userGesture: Bool?
    
    /// - description: Whether execution should `await` for resulting value and return once awaited promise is
    /// resolved.
    public var awaitPromise: Bool?
    
    /// - description: Whether to throw an exception if side effect cannot be ruled out during evaluation.
    /// This implies `disableBreaks` below.
    /// - intention: This is an experimental property.
    public var throwOnSideEffect: Bool?
    
    /// - description: Terminate execution after timing out (number of milliseconds).
    /// - intention: This is an experimental property.
    public var timeout: TimeDelta?
    
    /// - description: Disable breakpoints during execution.
    /// - intention: This is an experimental property.
    public var disableBreaks: Bool?
    
    /// - description: Setting this flag to true enables `let` re-declaration and top-level `await`.
    /// Note that `let` variables can only be re-declared if they originate from
    /// `replMode` themselves.
    /// - intention: This is an experimental property.
    public var replMode: Bool?
    
    /// - description: The Content Security Policy (CSP) for the target might block 'unsafe-eval'
    /// which includes eval(), Function(), setTimeout() and setInterval()
    /// when called with non-callable arguments. This flag bypasses CSP for this
    /// evaluation and allows unsafe-eval. Defaults to true.
    /// - intention: This is an experimental property.
    public var allowUnsafeEvalBlockedByCSP: Bool?
    
    public init(expression: String, objectGroup: String? = nil, includeCommandLineAPI: Bool? = nil, silent: Bool? = nil, contextId: ExecutionContextId? = nil, returnByValue: Bool? = nil, generatePreview: Bool? = nil, userGesture: Bool? = nil, awaitPromise: Bool? = nil, throwOnSideEffect: Bool? = nil, timeout: TimeDelta? = nil, disableBreaks: Bool? = nil, replMode: Bool? = nil, allowUnsafeEvalBlockedByCSP: Bool? = nil) {
      self.expression = expression
      self.objectGroup = objectGroup
      self.includeCommandLineAPI = includeCommandLineAPI
      self.silent = silent
      self.contextId = contextId
      self.returnByValue = returnByValue
      self.generatePreview = generatePreview
      self.userGesture = userGesture
      self.awaitPromise = awaitPromise
      self.throwOnSideEffect = throwOnSideEffect
      self.timeout = timeout
      self.disableBreaks = disableBreaks
      self.replMode = replMode
      self.allowUnsafeEvalBlockedByCSP = allowUnsafeEvalBlockedByCSP
    }
    
    public struct Result: Decodable {
      /// - description: Evaluation result.
      public var result: RemoteObject
      /// - description: Exception details.
      public var exceptionDetails: ExceptionDetails?
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Runtime {
  /// - description: Returns the isolate id.
  /// - intention: This is an experimental property.
  public struct getIsolateId: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Runtime
    public static let name = "getIsolateId"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: The isolate id.
      public var id: String
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Runtime {
  /// - description: Returns the JavaScript heap usage.
  /// It is the total usage of the corresponding isolate not scoped to a particular Runtime.
  /// - intention: This is an experimental property.
  public struct getHeapUsage: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Runtime
    public static let name = "getHeapUsage"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: Used heap size in bytes.
      public var usedSize: JsonNumber
      /// - description: Allocated heap size in bytes.
      public var totalSize: JsonNumber
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Runtime {
  /// - description: Returns properties of a given object. Object group of the result is inherited from the target
  /// object.
  public struct getProperties: ModelMethod {
    public typealias Model = SwiftCDPDomains.Runtime
    public static let name = "getProperties"
    
    /// - description: Identifier of the object to return properties for.
    public var objectId: RemoteObjectId
    
    /// - description: If true, returns properties belonging only to the element itself, not to its prototype
    /// chain.
    public var ownProperties: Bool?
    
    /// - description: If true, returns accessor properties (with getter/setter) only; internal properties are not
    /// returned either.
    /// - intention: This is an experimental property.
    public var accessorPropertiesOnly: Bool?
    
    /// - description: Whether preview should be generated for the results.
    /// - intention: This is an experimental property.
    public var generatePreview: Bool?
    
    public init(objectId: RemoteObjectId, ownProperties: Bool? = nil, accessorPropertiesOnly: Bool? = nil, generatePreview: Bool? = nil) {
      self.objectId = objectId
      self.ownProperties = ownProperties
      self.accessorPropertiesOnly = accessorPropertiesOnly
      self.generatePreview = generatePreview
    }
    
    public struct Result: Decodable {
      /// - description: Object properties.
      public var result: [PropertyDescriptor]
      /// - description: Internal object properties (only of the element itself).
      public var internalProperties: [InternalPropertyDescriptor]?
      /// - description: Object private properties.
      /// - intention: This is an experimental property.
      public var privateProperties: [PrivatePropertyDescriptor]?
      /// - description: Exception details.
      public var exceptionDetails: ExceptionDetails?
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Runtime {
  /// - description: Returns all let, const and class variables from global scope.
  public struct globalLexicalScopeNames: ModelMethod {
    public typealias Model = SwiftCDPDomains.Runtime
    public static let name = "globalLexicalScopeNames"
    
    /// - description: Specifies in which execution context to lookup global scope variables.
    public var executionContextId: ExecutionContextId?
    
    public init(executionContextId: ExecutionContextId? = nil) {
      self.executionContextId = executionContextId
    }
    
    public struct Result: Decodable {
      public var names: [String]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Runtime {
  public struct queryObjects: ModelMethod {
    public typealias Model = SwiftCDPDomains.Runtime
    public static let name = "queryObjects"
    
    /// - description: Identifier of the prototype to return objects for.
    public var prototypeObjectId: RemoteObjectId
    
    /// - description: Symbolic group name that can be used to release the results.
    public var objectGroup: String?
    
    public init(prototypeObjectId: RemoteObjectId, objectGroup: String? = nil) {
      self.prototypeObjectId = prototypeObjectId
      self.objectGroup = objectGroup
    }
    
    public struct Result: Decodable {
      /// - description: Array with objects.
      public var objects: RemoteObject
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Runtime {
  /// - description: Releases remote object with given id.
  public struct releaseObject: ModelMethod {
    public typealias Model = SwiftCDPDomains.Runtime
    public static let name = "releaseObject"
    
    /// - description: Identifier of the object to release.
    public var objectId: RemoteObjectId
    
    public init(objectId: RemoteObjectId) {
      self.objectId = objectId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Runtime {
  /// - description: Releases all remote objects that belong to a given group.
  public struct releaseObjectGroup: ModelMethod {
    public typealias Model = SwiftCDPDomains.Runtime
    public static let name = "releaseObjectGroup"
    
    /// - description: Symbolic object group name.
    public var objectGroup: String
    
    public init(objectGroup: String) {
      self.objectGroup = objectGroup
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Runtime {
  /// - description: Tells inspected instance to run if it was waiting for debugger to attach.
  public struct runIfWaitingForDebugger: ModelMethod {
    public typealias Model = SwiftCDPDomains.Runtime
    public static let name = "runIfWaitingForDebugger"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Runtime {
  /// - description: Runs script with given id in a given context.
  public struct runScript: ModelMethod {
    public typealias Model = SwiftCDPDomains.Runtime
    public static let name = "runScript"
    
    /// - description: Id of the script to run.
    public var scriptId: ScriptId
    
    /// - description: Specifies in which execution context to perform script run. If the parameter is omitted the
    /// evaluation will be performed in the context of the inspected page.
    public var executionContextId: ExecutionContextId?
    
    /// - description: Symbolic group name that can be used to release multiple objects.
    public var objectGroup: String?
    
    /// - description: In silent mode exceptions thrown during evaluation are not reported and do not pause
    /// execution. Overrides `setPauseOnException` state.
    public var silent: Bool?
    
    /// - description: Determines whether Command Line API should be available during the evaluation.
    public var includeCommandLineAPI: Bool?
    
    /// - description: Whether the result is expected to be a JSON object which should be sent by value.
    public var returnByValue: Bool?
    
    /// - description: Whether preview should be generated for the result.
    public var generatePreview: Bool?
    
    /// - description: Whether execution should `await` for resulting value and return once awaited promise is
    /// resolved.
    public var awaitPromise: Bool?
    
    public init(scriptId: ScriptId, executionContextId: ExecutionContextId? = nil, objectGroup: String? = nil, silent: Bool? = nil, includeCommandLineAPI: Bool? = nil, returnByValue: Bool? = nil, generatePreview: Bool? = nil, awaitPromise: Bool? = nil) {
      self.scriptId = scriptId
      self.executionContextId = executionContextId
      self.objectGroup = objectGroup
      self.silent = silent
      self.includeCommandLineAPI = includeCommandLineAPI
      self.returnByValue = returnByValue
      self.generatePreview = generatePreview
      self.awaitPromise = awaitPromise
    }
    
    public struct Result: Decodable {
      /// - description: Run result.
      public var result: RemoteObject
      /// - description: Exception details.
      public var exceptionDetails: ExceptionDetails?
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Runtime {
  /// - description: Enables or disables async call stacks tracking.
  public struct setAsyncCallStackDepth: ModelMethod {
    public typealias Model = SwiftCDPDomains.Runtime
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

extension SwiftCDPDomains.Runtime {
  /// - intention: This is an experimental property.
  public struct setCustomObjectFormatterEnabled: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Runtime
    public static let name = "setCustomObjectFormatterEnabled"
    
    public var enabled: Bool
    
    public init(enabled: Bool) {
      self.enabled = enabled
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Runtime {
  /// - intention: This is an experimental property.
  public struct setMaxCallStackSizeToCapture: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Runtime
    public static let name = "setMaxCallStackSizeToCapture"
    
    public var size: Int
    
    public init(size: Int) {
      self.size = size
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Runtime {
  /// - description: Terminate current or next JavaScript execution.
  /// Will cancel the termination when the outer-most script execution ends.
  /// - intention: This is an experimental property.
  public struct terminateExecution: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Runtime
    public static let name = "terminateExecution"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Runtime {
  /// - description: If executionContextId is empty, adds binding with the given name on the
  /// global objects of all inspected contexts, including those created later,
  /// bindings survive reloads.
  /// If executionContextId is specified, adds binding only on global object of
  /// given execution context.
  /// Binding function takes exactly one argument, this argument should be string,
  /// in case of any other input, function throws an exception.
  /// Each binding function call produces Runtime.bindingCalled notification.
  /// - intention: This is an experimental property.
  public struct addBinding: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Runtime
    public static let name = "addBinding"
    
    public var name: String
    
    public var executionContextId: ExecutionContextId?
    
    public init(name: String, executionContextId: ExecutionContextId? = nil) {
      self.name = name
      self.executionContextId = executionContextId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Runtime {
  /// - description: This method does not remove binding function from global object but
  /// unsubscribes current runtime agent from Runtime.bindingCalled notifications.
  /// - intention: This is an experimental property.
  public struct removeBinding: ModelMethod, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Runtime
    public static let name = "removeBinding"
    
    public var name: String
    
    public init(name: String) {
      self.name = name
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

