import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "BackgroundService"

extension SwiftCDPDomains.BackgroundService {
  /// - description: Defines events for background web platform features.
  /// - intention: This is an experimental property.
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
  /// - description: Defines events for background web platform features.
  /// - intention: This is an experimental property.
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
  /// - description: Defines events for background web platform features.
  /// - intention: This is an experimental property.
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
  /// - description: Defines events for background web platform features.
  /// - intention: This is an experimental property.
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

