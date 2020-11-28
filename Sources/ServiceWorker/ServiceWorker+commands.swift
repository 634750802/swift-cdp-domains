import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "ServiceWorker"

extension SwiftCDPDomains.ServiceWorker {
  /// - intention: This is an experimental property.
  public struct deliverPushMessage: ModelMethod {
    public typealias Model = SwiftCDPDomains.ServiceWorker
    public static let name = "deliverPushMessage"
    
    public var origin: String
    
    public var registrationId: RegistrationID
    
    public var data: String
    
    public init(origin: String, registrationId: RegistrationID, data: String) {
      self.origin = origin
      self.registrationId = registrationId
      self.data = data
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.ServiceWorker {
  /// - intention: This is an experimental property.
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.ServiceWorker
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.ServiceWorker {
  /// - intention: This is an experimental property.
  public struct dispatchSyncEvent: ModelMethod {
    public typealias Model = SwiftCDPDomains.ServiceWorker
    public static let name = "dispatchSyncEvent"
    
    public var origin: String
    
    public var registrationId: RegistrationID
    
    public var tag: String
    
    public var lastChance: Bool
    
    public init(origin: String, registrationId: RegistrationID, tag: String, lastChance: Bool) {
      self.origin = origin
      self.registrationId = registrationId
      self.tag = tag
      self.lastChance = lastChance
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.ServiceWorker {
  /// - intention: This is an experimental property.
  public struct dispatchPeriodicSyncEvent: ModelMethod {
    public typealias Model = SwiftCDPDomains.ServiceWorker
    public static let name = "dispatchPeriodicSyncEvent"
    
    public var origin: String
    
    public var registrationId: RegistrationID
    
    public var tag: String
    
    public init(origin: String, registrationId: RegistrationID, tag: String) {
      self.origin = origin
      self.registrationId = registrationId
      self.tag = tag
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.ServiceWorker {
  /// - intention: This is an experimental property.
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.ServiceWorker
    public static let name = "enable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.ServiceWorker {
  /// - intention: This is an experimental property.
  public struct inspectWorker: ModelMethod {
    public typealias Model = SwiftCDPDomains.ServiceWorker
    public static let name = "inspectWorker"
    
    public var versionId: String
    
    public init(versionId: String) {
      self.versionId = versionId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.ServiceWorker {
  /// - intention: This is an experimental property.
  public struct setForceUpdateOnPageLoad: ModelMethod {
    public typealias Model = SwiftCDPDomains.ServiceWorker
    public static let name = "setForceUpdateOnPageLoad"
    
    public var forceUpdateOnPageLoad: Bool
    
    public init(forceUpdateOnPageLoad: Bool) {
      self.forceUpdateOnPageLoad = forceUpdateOnPageLoad
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.ServiceWorker {
  /// - intention: This is an experimental property.
  public struct skipWaiting: ModelMethod {
    public typealias Model = SwiftCDPDomains.ServiceWorker
    public static let name = "skipWaiting"
    
    public var scopeURL: String
    
    public init(scopeURL: String) {
      self.scopeURL = scopeURL
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.ServiceWorker {
  /// - intention: This is an experimental property.
  public struct startWorker: ModelMethod {
    public typealias Model = SwiftCDPDomains.ServiceWorker
    public static let name = "startWorker"
    
    public var scopeURL: String
    
    public init(scopeURL: String) {
      self.scopeURL = scopeURL
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.ServiceWorker {
  /// - intention: This is an experimental property.
  public struct stopAllWorkers: ModelMethod {
    public typealias Model = SwiftCDPDomains.ServiceWorker
    public static let name = "stopAllWorkers"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.ServiceWorker {
  /// - intention: This is an experimental property.
  public struct stopWorker: ModelMethod {
    public typealias Model = SwiftCDPDomains.ServiceWorker
    public static let name = "stopWorker"
    
    public var versionId: String
    
    public init(versionId: String) {
      self.versionId = versionId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.ServiceWorker {
  /// - intention: This is an experimental property.
  public struct unregister: ModelMethod {
    public typealias Model = SwiftCDPDomains.ServiceWorker
    public static let name = "unregister"
    
    public var scopeURL: String
    
    public init(scopeURL: String) {
      self.scopeURL = scopeURL
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.ServiceWorker {
  /// - intention: This is an experimental property.
  public struct updateRegistration: ModelMethod {
    public typealias Model = SwiftCDPDomains.ServiceWorker
    public static let name = "updateRegistration"
    
    public var scopeURL: String
    
    public init(scopeURL: String) {
      self.scopeURL = scopeURL
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

