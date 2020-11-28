import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "Console"

@available(*, deprecated)
extension SwiftCDPDomains.Console {
  /// - see: https://vanilla.aslushnikov.com/?Console.ConsoleMessage
  /// - description: Console message.
  @available(*, deprecated)
  public struct ConsoleMessage: Codable {
    /// - description: Message source.
    public var source: String
    
    /// - description: Message severity.
    public var level: String
    
    /// - description: Message text.
    public var text: String
    
    /// - description: URL of the message origin.
    public var url: String?
    
    /// - description: Line number in the resource that generated this message (1-based).
    public var line: Int?
    
    /// - description: Column number in the resource that generated this message (1-based).
    public var column: Int?
    
  }
}

