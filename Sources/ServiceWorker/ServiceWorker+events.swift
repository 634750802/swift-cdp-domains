import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "ServiceWorker"

extension SwiftCDPDomains.ServiceWorker {
  /// - intention: This is an experimental property.
  public struct workerErrorReported: ModelEvent {
    public typealias Model = SwiftCDPDomains.ServiceWorker
    
    public var errorMessage: ServiceWorkerErrorMessage
    
  }
}

extension SwiftCDPDomains.ServiceWorker {
  /// - intention: This is an experimental property.
  public struct workerRegistrationUpdated: ModelEvent {
    public typealias Model = SwiftCDPDomains.ServiceWorker
    
    public var registrations: [ServiceWorkerRegistration]
    
  }
}

extension SwiftCDPDomains.ServiceWorker {
  /// - intention: This is an experimental property.
  public struct workerVersionUpdated: ModelEvent {
    public typealias Model = SwiftCDPDomains.ServiceWorker
    
    public var versions: [ServiceWorkerVersion]
    
  }
}

