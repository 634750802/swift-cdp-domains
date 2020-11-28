import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "Runtime"

extension SwiftCDPDomains.Runtime {
  /// - description: Notification is issued every time when binding is called.
  /// - intention: This is an experimental property.
  public struct bindingCalled: ModelEvent, ExperimentalFeature {
    public typealias Model = SwiftCDPDomains.Runtime
    
    public var name: String
    
    public var payload: String
    
    /// - description: Identifier of the context where the call was made.
    public var executionContextId: ExecutionContextId
    
  }
}

extension SwiftCDPDomains.Runtime {
  /// - description: Issued when console API was called.
  public struct consoleAPICalled: ModelEvent {
    public typealias Model = SwiftCDPDomains.Runtime
    
    /// - description: Type of the call.
    public var type: String
    
    /// - description: Call arguments.
    public var args: [RemoteObject]
    
    /// - description: Identifier of the context where the call was made.
    public var executionContextId: ExecutionContextId
    
    /// - description: Call timestamp.
    public var timestamp: Timestamp
    
    /// - description: Stack trace captured when the call was made. The async stack chain is automatically reported for
    /// the following call types: `assert`, `error`, `trace`, `warning`. For other types the async call
    /// chain can be retrieved using `Debugger.getStackTrace` and `stackTrace.parentId` field.
    public var stackTrace: StackTrace?
    
    /// - description: Console context descriptor for calls on non-default console context (not console.*):
    /// 'anonymous#unique-logger-id' for call on unnamed context, 'name#unique-logger-id' for call
    /// on named context.
    /// - intention: This is an experimental property.
    public var context: String?
    
  }
}

extension SwiftCDPDomains.Runtime {
  /// - description: Issued when unhandled exception was revoked.
  public struct exceptionRevoked: ModelEvent {
    public typealias Model = SwiftCDPDomains.Runtime
    
    /// - description: Reason describing why exception was revoked.
    public var reason: String
    
    /// - description: The id of revoked exception, as reported in `exceptionThrown`.
    public var exceptionId: Int
    
  }
}

extension SwiftCDPDomains.Runtime {
  /// - description: Issued when exception was thrown and unhandled.
  public struct exceptionThrown: ModelEvent {
    public typealias Model = SwiftCDPDomains.Runtime
    
    /// - description: Timestamp of the exception.
    public var timestamp: Timestamp
    
    public var exceptionDetails: ExceptionDetails
    
  }
}

extension SwiftCDPDomains.Runtime {
  /// - description: Issued when new execution context is created.
  public struct executionContextCreated: ModelEvent {
    public typealias Model = SwiftCDPDomains.Runtime
    
    /// - description: A newly created execution context.
    public var context: ExecutionContextDescription
    
  }
}

extension SwiftCDPDomains.Runtime {
  /// - description: Issued when execution context is destroyed.
  public struct executionContextDestroyed: ModelEvent {
    public typealias Model = SwiftCDPDomains.Runtime
    
    /// - description: Id of the destroyed context
    public var executionContextId: ExecutionContextId
    
  }
}

extension SwiftCDPDomains.Runtime {
  /// - description: Issued when all executionContexts were cleared in browser
  public struct executionContextsCleared: ModelEvent {
    public typealias Model = SwiftCDPDomains.Runtime
    
  }
}

extension SwiftCDPDomains.Runtime {
  /// - description: Issued when object should be inspected (for example, as a result of inspect() command line API
  /// call).
  public struct inspectRequested: ModelEvent {
    public typealias Model = SwiftCDPDomains.Runtime
    
    public var object: RemoteObject
    
    public var hints: [String: JsonValue]
    
  }
}

