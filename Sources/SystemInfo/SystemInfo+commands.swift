import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "SystemInfo"

extension SwiftCDPDomains.SystemInfo {
  /// - description: Returns information about the system.
  public struct getInfo: ModelMethod {
    public typealias Model = SwiftCDPDomains.SystemInfo
    public static let name = "getInfo"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: Information about the GPUs on the system.
      public var gpu: GPUInfo
      /// - description: A platform-dependent description of the model of the machine. On Mac OS, this is, for
      /// example, 'MacBookPro'. Will be the empty string if not supported.
      public var modelName: String
      /// - description: A platform-dependent description of the version of the machine. On Mac OS, this is, for
      /// example, '10.1'. Will be the empty string if not supported.
      public var modelVersion: String
      /// - description: The command line string used to launch the browser. Will be the empty string if not
      /// supported.
      public var commandLine: String
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.SystemInfo {
  /// - description: Returns information about all running processes.
  public struct getProcessInfo: ModelMethod {
    public typealias Model = SwiftCDPDomains.SystemInfo
    public static let name = "getProcessInfo"
    
    public init() {
    }
    
    public struct Result: Decodable {
      /// - description: An array of process info blocks.
      public var processInfo: [ProcessInfo]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

