import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "ServiceWorker"

extension SwiftCDPDomains.ServiceWorker {
  /// - see: https://vanilla.aslushnikov.com/?ServiceWorker.RegistrationID
  public struct RegistrationID: Codable {
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

extension SwiftCDPDomains.ServiceWorker {
  /// - see: https://vanilla.aslushnikov.com/?ServiceWorker.ServiceWorkerRegistration
  /// - description: ServiceWorker registration.
  public struct ServiceWorkerRegistration: Codable {
    public var registrationId: RegistrationID
    
    public var scopeURL: String
    
    public var isDeleted: Bool
    
  }
}

extension SwiftCDPDomains.ServiceWorker {
  /// - see: https://vanilla.aslushnikov.com/?ServiceWorker.ServiceWorkerVersionRunningStatus
  /// - choices: ["stopped", "starting", "running", "stopping"]
  public typealias ServiceWorkerVersionRunningStatus = String
}

extension SwiftCDPDomains.ServiceWorker {
  /// - see: https://vanilla.aslushnikov.com/?ServiceWorker.ServiceWorkerVersionStatus
  /// - choices: ["new", "installing", "installed", "activating", "activated", "redundant"]
  public typealias ServiceWorkerVersionStatus = String
}

extension SwiftCDPDomains.ServiceWorker {
  /// - see: https://vanilla.aslushnikov.com/?ServiceWorker.ServiceWorkerVersion
  /// - description: ServiceWorker version.
  public struct ServiceWorkerVersion: Codable {
    public var versionId: String
    
    public var registrationId: RegistrationID
    
    public var scriptURL: String
    
    public var runningStatus: ServiceWorkerVersionRunningStatus
    
    public var status: ServiceWorkerVersionStatus
    
    /// - description: The Last-Modified header value of the main script.
    public var scriptLastModified: JsonNumber?
    
    /// - description: The time at which the response headers of the main script were received from the server.
    /// For cached script it is the last time the cache entry was validated.
    public var scriptResponseTime: JsonNumber?
    
    public var controlledClients: [SwiftCDPDomains.Target.TargetID]?
    
    public var targetId: SwiftCDPDomains.Target.TargetID?
    
  }
}

extension SwiftCDPDomains.ServiceWorker {
  /// - see: https://vanilla.aslushnikov.com/?ServiceWorker.ServiceWorkerErrorMessage
  /// - description: ServiceWorker error message.
  public struct ServiceWorkerErrorMessage: Codable {
    public var errorMessage: String
    
    public var registrationId: RegistrationID
    
    public var versionId: String
    
    public var sourceURL: String
    
    public var lineNumber: Int
    
    public var columnNumber: Int
    
  }
}

