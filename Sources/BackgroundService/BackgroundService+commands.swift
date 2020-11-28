import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "BackgroundService"

extension SwiftCDPDomains.BackgroundService {
  /// - description: Enables event updates for the service.
  public struct startObserving: ModelMethod {
    public typealias Model = SwiftCDPDomains.BackgroundService
    public static let name = "startObserving"
    
    public var service: ServiceName
    
    public init(service: ServiceName) {
      self.service = service
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.BackgroundService {
  /// - description: Disables event updates for the service.
  public struct stopObserving: ModelMethod {
    public typealias Model = SwiftCDPDomains.BackgroundService
    public static let name = "stopObserving"
    
    public var service: ServiceName
    
    public init(service: ServiceName) {
      self.service = service
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.BackgroundService {
  /// - description: Set the recording state for the service.
  public struct setRecording: ModelMethod {
    public typealias Model = SwiftCDPDomains.BackgroundService
    public static let name = "setRecording"
    
    public var shouldRecord: Bool
    
    public var service: ServiceName
    
    public init(shouldRecord: Bool, service: ServiceName) {
      self.shouldRecord = shouldRecord
      self.service = service
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.BackgroundService {
  /// - description: Clears all stored data for the service.
  public struct clearEvents: ModelMethod {
    public typealias Model = SwiftCDPDomains.BackgroundService
    public static let name = "clearEvents"
    
    public var service: ServiceName
    
    public init(service: ServiceName) {
      self.service = service
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

