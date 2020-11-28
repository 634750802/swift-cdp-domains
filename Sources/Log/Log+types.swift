import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "Log"

extension SwiftCDPDomains.Log {
  /// - see: https://vanilla.aslushnikov.com/?Log.LogEntry
  /// - description: Log entry.
  public struct LogEntry: Codable {
    /// - description: Log entry source.
    public var source: String
    
    /// - description: Log entry severity.
    public var level: String
    
    /// - description: Logged text.
    public var text: String
    
    /// - description: Timestamp when this entry was added.
    public var timestamp: SwiftCDPDomains.Runtime.Timestamp
    
    /// - description: URL of the resource if known.
    public var url: String?
    
    /// - description: Line number in the resource.
    public var lineNumber: Int?
    
    /// - description: JavaScript stack trace.
    public var stackTrace: SwiftCDPDomains.Runtime.StackTrace?
    
    /// - description: Identifier of the network request associated with this entry.
    public var networkRequestId: SwiftCDPDomains.Network.RequestId?
    
    /// - description: Identifier of the worker associated with this entry.
    public var workerId: String?
    
    /// - description: Call arguments.
    public var args: [SwiftCDPDomains.Runtime.RemoteObject]?
    
  }
}

extension SwiftCDPDomains.Log {
  /// - see: https://vanilla.aslushnikov.com/?Log.ViolationSetting
  /// - description: Violation configuration setting.
  public struct ViolationSetting: Codable {
    /// - description: Violation type.
    public var name: String
    
    /// - description: Time threshold to trigger upon.
    public var threshold: JsonNumber
    
  }
}

