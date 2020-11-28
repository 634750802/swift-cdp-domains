import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "Runtime"

extension SwiftCDPDomains.Runtime {
  /// - see: https://vanilla.aslushnikov.com/?Runtime.ScriptId
  /// - description: Unique script identifier.
  public struct ScriptId: Codable {
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

extension SwiftCDPDomains.Runtime {
  /// - see: https://vanilla.aslushnikov.com/?Runtime.RemoteObjectId
  /// - description: Unique object identifier.
  public struct RemoteObjectId: Codable {
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

extension SwiftCDPDomains.Runtime {
  /// - see: https://vanilla.aslushnikov.com/?Runtime.UnserializableValue
  /// - description: Primitive value which cannot be JSON-stringified. Includes values `-0`, `NaN`, `Infinity`,
  /// `-Infinity`, and bigint literals.
  public typealias UnserializableValue = String
}

extension SwiftCDPDomains.Runtime {
  /// - see: https://vanilla.aslushnikov.com/?Runtime.RemoteObject
  /// - description: Mirror object referencing original JavaScript object.
  public struct RemoteObject: Codable {
    /// - description: Object type.
    public var type: String
    
    /// - description: Object subtype hint. Specified for `object` or `wasm` type values only.
    public var subtype: String?
    
    /// - description: Object class (constructor) name. Specified for `object` type values only.
    public var className: String?
    
    /// - description: Remote object value in case of primitive values or JSON values (if it was requested).
    public var value: [String: JsonPrimitive]?
    
    /// - description: Primitive value which can not be JSON-stringified does not have `value`, but gets this
    /// property.
    public var unserializableValue: UnserializableValue?
    
    /// - description: String representation of the object.
    public var description: String?
    
    /// - description: Unique object identifier (for non-primitive values).
    public var objectId: RemoteObjectId?
    
    /// - description: Preview containing abbreviated property values. Specified for `object` type values only.
    /// - intention: This is an experimental property.
    public var preview: ObjectPreview?
    
    /// - intention: This is an experimental property.
    public var customPreview: CustomPreview?
    
  }
}

extension SwiftCDPDomains.Runtime {
  /// - see: https://vanilla.aslushnikov.com/?Runtime.CustomPreview
  public struct CustomPreview: Codable {
    /// - description: The JSON-stringified result of formatter.header(object, config) call.
    /// It contains json ML array that represents RemoteObject.
    public var header: String
    
    /// - description: If formatter returns true as a result of formatter.hasBody call then bodyGetterId will
    /// contain RemoteObjectId for the function that returns result of formatter.body(object, config) call.
    /// The result value is json ML array.
    public var bodyGetterId: RemoteObjectId?
    
  }
}

extension SwiftCDPDomains.Runtime {
  /// - see: https://vanilla.aslushnikov.com/?Runtime.ObjectPreview
  /// - description: Object containing abbreviated remote object value.
  public struct ObjectPreview: Codable {
    /// - description: Object type.
    public var type: String
    
    /// - description: Object subtype hint. Specified for `object` type values only.
    public var subtype: String?
    
    /// - description: String representation of the object.
    public var description: String?
    
    /// - description: True iff some of the properties or entries of the original object did not fit.
    public var overflow: Bool
    
    /// - description: List of the properties.
    public var properties: [PropertyPreview]
    
    /// - description: List of the entries. Specified for `map` and `set` subtype values only.
    public var entries: [EntryPreview]?
    
  }
}

extension SwiftCDPDomains.Runtime {
  /// - see: https://vanilla.aslushnikov.com/?Runtime.PropertyPreview
  public struct PropertyPreview: Codable {
    /// - description: Property name.
    public var name: String
    
    /// - description: Object type. Accessor means that the property itself is an accessor property.
    public var type: String
    
    /// - description: User-friendly property value string.
    public var value: String?
    
    /// - description: Nested value preview.
    public var valuePreview: ObjectPreview?
    
    /// - description: Object subtype hint. Specified for `object` type values only.
    public var subtype: String?
    
  }
}

extension SwiftCDPDomains.Runtime {
  /// - see: https://vanilla.aslushnikov.com/?Runtime.EntryPreview
  public struct EntryPreview: Codable {
    /// - description: Preview of the key. Specified for map-like collection entries.
    public var key: ObjectPreview?
    
    /// - description: Preview of the value.
    public var value: ObjectPreview
    
  }
}

extension SwiftCDPDomains.Runtime {
  /// - see: https://vanilla.aslushnikov.com/?Runtime.PropertyDescriptor
  /// - description: Object property descriptor.
  public struct PropertyDescriptor: Codable {
    /// - description: Property name or symbol description.
    public var name: String
    
    /// - description: The value associated with the property.
    public var value: RemoteObject?
    
    /// - description: True if the value associated with the property may be changed (data descriptors only).
    public var writable: Bool?
    
    /// - description: A function which serves as a getter for the property, or `undefined` if there is no getter
    /// (accessor descriptors only).
    public var get: RemoteObject?
    
    /// - description: A function which serves as a setter for the property, or `undefined` if there is no setter
    /// (accessor descriptors only).
    public var set: RemoteObject?
    
    /// - description: True if the type of this property descriptor may be changed and if the property may be
    /// deleted from the corresponding object.
    public var configurable: Bool
    
    /// - description: True if this property shows up during enumeration of the properties on the corresponding
    /// object.
    public var enumerable: Bool
    
    /// - description: True if the result was thrown during the evaluation.
    public var wasThrown: Bool?
    
    /// - description: True if the property is owned for the object.
    public var isOwn: Bool?
    
    /// - description: Property symbol object, if the property is of the `symbol` type.
    public var symbol: RemoteObject?
    
  }
}

extension SwiftCDPDomains.Runtime {
  /// - see: https://vanilla.aslushnikov.com/?Runtime.InternalPropertyDescriptor
  /// - description: Object internal property descriptor. This property isn't normally visible in JavaScript code.
  public struct InternalPropertyDescriptor: Codable {
    /// - description: Conventional property name.
    public var name: String
    
    /// - description: The value associated with the property.
    public var value: RemoteObject?
    
  }
}

extension SwiftCDPDomains.Runtime {
  /// - see: https://vanilla.aslushnikov.com/?Runtime.PrivatePropertyDescriptor
  /// - description: Object private field descriptor.
  public struct PrivatePropertyDescriptor: Codable {
    /// - description: Private property name.
    public var name: String
    
    /// - description: The value associated with the private property.
    public var value: RemoteObject?
    
    /// - description: A function which serves as a getter for the private property,
    /// or `undefined` if there is no getter (accessor descriptors only).
    public var get: RemoteObject?
    
    /// - description: A function which serves as a setter for the private property,
    /// or `undefined` if there is no setter (accessor descriptors only).
    public var set: RemoteObject?
    
  }
}

extension SwiftCDPDomains.Runtime {
  /// - see: https://vanilla.aslushnikov.com/?Runtime.CallArgument
  /// - description: Represents function call argument. Either remote object id `objectId`, primitive `value`,
  /// unserializable primitive value or neither of (for undefined) them should be specified.
  public struct CallArgument: Codable {
    /// - description: Primitive value or serializable javascript object.
    public var value: [String: JsonPrimitive]?
    
    /// - description: Primitive value which can not be JSON-stringified.
    public var unserializableValue: UnserializableValue?
    
    /// - description: Remote object handle.
    public var objectId: RemoteObjectId?
    
  }
}

extension SwiftCDPDomains.Runtime {
  /// - see: https://vanilla.aslushnikov.com/?Runtime.ExecutionContextId
  /// - description: Id of an execution context.
  public struct ExecutionContextId: Codable {
    private var rawValue: Int
    
    public init(from decoder: Decoder) throws {
      self.rawValue = try decoder.singleValueContainer().decode(Int.self)
    }
    
    public func encode(to encoder: Encoder) throws {
      var container = encoder.singleValueContainer()
      try container.encode(rawValue)
    }
  }
}

extension SwiftCDPDomains.Runtime {
  /// - see: https://vanilla.aslushnikov.com/?Runtime.ExecutionContextDescription
  /// - description: Description of an isolated world.
  public struct ExecutionContextDescription: Codable {
    /// - description: Unique id of the execution context. It can be used to specify in which execution context
    /// script evaluation should be performed.
    public var id: ExecutionContextId
    
    /// - description: Execution context origin.
    public var origin: String
    
    /// - description: Human readable name describing given context.
    public var name: String
    
    /// - description: Embedder-specific auxiliary data.
    public var auxData: [String: JsonPrimitive]?
    
  }
}

extension SwiftCDPDomains.Runtime {
  /// - see: https://vanilla.aslushnikov.com/?Runtime.ExceptionDetails
  /// - description: Detailed information about exception (or error) that was thrown during script compilation or
  /// execution.
  public struct ExceptionDetails: Codable {
    /// - description: Exception id.
    public var exceptionId: Int
    
    /// - description: Exception text, which should be used together with exception object when available.
    public var text: String
    
    /// - description: Line number of the exception location (0-based).
    public var lineNumber: Int
    
    /// - description: Column number of the exception location (0-based).
    public var columnNumber: Int
    
    /// - description: Script ID of the exception location.
    public var scriptId: ScriptId?
    
    /// - description: URL of the exception location, to be used when the script was not reported.
    public var url: String?
    
    /// - description: JavaScript stack trace if available.
    public var stackTrace: StackTrace?
    
    /// - description: Exception object if available.
    public var exception: RemoteObject?
    
    /// - description: Identifier of the context where exception happened.
    public var executionContextId: ExecutionContextId?
    
  }
}

extension SwiftCDPDomains.Runtime {
  /// - see: https://vanilla.aslushnikov.com/?Runtime.Timestamp
  /// - description: Number of milliseconds since epoch.
  public typealias Timestamp = JsonNumber
}

extension SwiftCDPDomains.Runtime {
  /// - see: https://vanilla.aslushnikov.com/?Runtime.TimeDelta
  /// - description: Number of milliseconds.
  public typealias TimeDelta = JsonNumber
}

extension SwiftCDPDomains.Runtime {
  /// - see: https://vanilla.aslushnikov.com/?Runtime.CallFrame
  /// - description: Stack entry for runtime errors and assertions.
  public struct CallFrame: Codable {
    /// - description: JavaScript function name.
    public var functionName: String
    
    /// - description: JavaScript script id.
    public var scriptId: ScriptId
    
    /// - description: JavaScript script name or url.
    public var url: String
    
    /// - description: JavaScript script line number (0-based).
    public var lineNumber: Int
    
    /// - description: JavaScript script column number (0-based).
    public var columnNumber: Int
    
  }
}

extension SwiftCDPDomains.Runtime {
  /// - see: https://vanilla.aslushnikov.com/?Runtime.StackTrace
  /// - description: Call frames for assertions or error messages.
  public struct StackTrace: Codable {
    /// - description: String label of this stack trace. For async traces this may be a name of the function that
    /// initiated the async call.
    public var description: String?
    
    /// - description: JavaScript function name.
    public var callFrames: [CallFrame]
    
    /// - description: Asynchronous JavaScript stack trace that preceded this stack, if available.
    public var parent: StructReference<StackTrace>?
    
    /// - description: Asynchronous JavaScript stack trace that preceded this stack, if available.
    /// - intention: This is an experimental property.
    public var parentId: StackTraceId?
    
  }
}

extension SwiftCDPDomains.Runtime {
  /// - see: https://vanilla.aslushnikov.com/?Runtime.UniqueDebuggerId
  /// - description: Unique identifier of current debugger.
  public struct UniqueDebuggerId: Codable {
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

extension SwiftCDPDomains.Runtime {
  /// - see: https://vanilla.aslushnikov.com/?Runtime.StackTraceId
  /// - description: If `debuggerId` is set stack trace comes from another debugger and can be resolved there. This
  /// allows to track cross-debugger calls. See `Runtime.StackTrace` and `Debugger.paused` for usages.
  public struct StackTraceId: Codable {
    public var id: String
    
    public var debuggerId: UniqueDebuggerId?
    
  }
}

