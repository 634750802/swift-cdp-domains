import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "DOMStorage"

extension SwiftCDPDomains.DOMStorage {
  public struct domStorageItemAdded: ModelEvent {
    public typealias Model = SwiftCDPDomains.DOMStorage
    
    public var storageId: StorageId
    
    public var key: String
    
    public var newValue: String
    
  }
}

extension SwiftCDPDomains.DOMStorage {
  public struct domStorageItemRemoved: ModelEvent {
    public typealias Model = SwiftCDPDomains.DOMStorage
    
    public var storageId: StorageId
    
    public var key: String
    
  }
}

extension SwiftCDPDomains.DOMStorage {
  public struct domStorageItemUpdated: ModelEvent {
    public typealias Model = SwiftCDPDomains.DOMStorage
    
    public var storageId: StorageId
    
    public var key: String
    
    public var oldValue: String
    
    public var newValue: String
    
  }
}

extension SwiftCDPDomains.DOMStorage {
  public struct domStorageItemsCleared: ModelEvent {
    public typealias Model = SwiftCDPDomains.DOMStorage
    
    public var storageId: StorageId
    
  }
}

