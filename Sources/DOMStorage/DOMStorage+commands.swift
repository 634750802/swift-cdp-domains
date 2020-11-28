import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "DOMStorage"

extension SwiftCDPDomains.DOMStorage {
  /// - description: Query and modify DOM storage.
  /// - intention: This is an experimental property.
  public struct clear: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOMStorage
    public static let name = "clear"
    
    public var storageId: StorageId
    
    public init(storageId: StorageId) {
      self.storageId = storageId
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOMStorage {
  /// - description: Query and modify DOM storage.
  /// - intention: This is an experimental property.
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOMStorage
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOMStorage {
  /// - description: Query and modify DOM storage.
  /// - intention: This is an experimental property.
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOMStorage
    public static let name = "enable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOMStorage {
  /// - description: Query and modify DOM storage.
  /// - intention: This is an experimental property.
  public struct getDOMStorageItems: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOMStorage
    public static let name = "getDOMStorageItems"
    
    public var storageId: StorageId
    
    public init(storageId: StorageId) {
      self.storageId = storageId
    }
    
    public struct Result: Decodable {
      public var entries: [Item]
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.DOMStorage {
  /// - description: Query and modify DOM storage.
  /// - intention: This is an experimental property.
  public struct removeDOMStorageItem: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOMStorage
    public static let name = "removeDOMStorageItem"
    
    public var storageId: StorageId
    
    public var key: String
    
    public init(storageId: StorageId, key: String) {
      self.storageId = storageId
      self.key = key
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.DOMStorage {
  /// - description: Query and modify DOM storage.
  /// - intention: This is an experimental property.
  public struct setDOMStorageItem: ModelMethod {
    public typealias Model = SwiftCDPDomains.DOMStorage
    public static let name = "setDOMStorageItem"
    
    public var storageId: StorageId
    
    public var key: String
    
    public var value: String
    
    public init(storageId: StorageId, key: String, value: String) {
      self.storageId = storageId
      self.key = key
      self.value = value
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

