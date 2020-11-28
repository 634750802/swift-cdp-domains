import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "Debugger"

extension SwiftCDPDomains.Debugger {
  /// - see: https://vanilla.aslushnikov.com/?Debugger.BreakpointId
  /// - description: Breakpoint identifier.
  public struct BreakpointId: Codable {
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

extension SwiftCDPDomains.Debugger {
  /// - see: https://vanilla.aslushnikov.com/?Debugger.CallFrameId
  /// - description: Call frame identifier.
  public struct CallFrameId: Codable {
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

extension SwiftCDPDomains.Debugger {
  /// - see: https://vanilla.aslushnikov.com/?Debugger.Location
  /// - description: Location in the source code.
  public struct Location: Codable {
    /// - description: Script identifier as reported in the `Debugger.scriptParsed`.
    public var scriptId: SwiftCDPDomains.Runtime.ScriptId
    
    /// - description: Line number in the script (0-based).
    public var lineNumber: Int
    
    /// - description: Column number in the script (0-based).
    public var columnNumber: Int?
    
  }
}

extension SwiftCDPDomains.Debugger {
  /// - see: https://vanilla.aslushnikov.com/?Debugger.ScriptPosition
  /// - description: Location in the source code.
  public struct ScriptPosition: Codable {
    public var lineNumber: Int
    
    public var columnNumber: Int
    
  }
}

extension SwiftCDPDomains.Debugger {
  /// - see: https://vanilla.aslushnikov.com/?Debugger.LocationRange
  /// - description: Location range within one script.
  public struct LocationRange: Codable {
    public var scriptId: SwiftCDPDomains.Runtime.ScriptId
    
    public var start: ScriptPosition
    
    public var end: ScriptPosition
    
  }
}

extension SwiftCDPDomains.Debugger {
  /// - see: https://vanilla.aslushnikov.com/?Debugger.CallFrame
  /// - description: JavaScript call frame. Array of call frames form the call stack.
  public struct CallFrame: Codable {
    /// - description: Call frame identifier. This identifier is only valid while the virtual machine is paused.
    public var callFrameId: CallFrameId
    
    /// - description: Name of the JavaScript function called on this call frame.
    public var functionName: String
    
    /// - description: Location in the source code.
    public var functionLocation: Location?
    
    /// - description: Location in the source code.
    public var location: Location
    
    /// - description: JavaScript script name or url.
    public var url: String
    
    /// - description: Scope chain for this call frame.
    public var scopeChain: [Scope]
    
    /// - description: `this` object for this call frame.
    public var this: SwiftCDPDomains.Runtime.RemoteObject
    
    /// - description: The value being returned, if the function is at return point.
    public var returnValue: SwiftCDPDomains.Runtime.RemoteObject?
    
  }
}

extension SwiftCDPDomains.Debugger {
  /// - see: https://vanilla.aslushnikov.com/?Debugger.Scope
  /// - description: Scope description.
  public struct Scope: Codable {
    /// - description: Scope type.
    public var type: String
    
    /// - description: Object representing the scope. For `global` and `with` scopes it represents the actual
    /// object; for the rest of the scopes, it is artificial transient object enumerating scope
    /// variables as its properties.
    public var object: SwiftCDPDomains.Runtime.RemoteObject
    
    public var name: String?
    
    /// - description: Location in the source code where scope starts
    public var startLocation: Location?
    
    /// - description: Location in the source code where scope ends
    public var endLocation: Location?
    
  }
}

extension SwiftCDPDomains.Debugger {
  /// - see: https://vanilla.aslushnikov.com/?Debugger.SearchMatch
  /// - description: Search match for resource.
  public struct SearchMatch: Codable {
    /// - description: Line number in resource content.
    public var lineNumber: JsonNumber
    
    /// - description: Line with match content.
    public var lineContent: String
    
  }
}

extension SwiftCDPDomains.Debugger {
  /// - see: https://vanilla.aslushnikov.com/?Debugger.BreakLocation
  public struct BreakLocation: Codable {
    /// - description: Script identifier as reported in the `Debugger.scriptParsed`.
    public var scriptId: SwiftCDPDomains.Runtime.ScriptId
    
    /// - description: Line number in the script (0-based).
    public var lineNumber: Int
    
    /// - description: Column number in the script (0-based).
    public var columnNumber: Int?
    
    public var type: String?
    
  }
}

extension SwiftCDPDomains.Debugger {
  /// - see: https://vanilla.aslushnikov.com/?Debugger.ScriptLanguage
  /// - description: Enum of possible script languages.
  /// - choices: ["JavaScript", "WebAssembly"]
  public typealias ScriptLanguage = String
}

extension SwiftCDPDomains.Debugger {
  /// - see: https://vanilla.aslushnikov.com/?Debugger.DebugSymbols
  /// - description: Debug symbols available for a wasm script.
  public struct DebugSymbols: Codable {
    /// - description: Type of the debug symbols.
    public var type: String
    
    /// - description: URL of the external symbol source.
    public var externalURL: String?
    
  }
}

