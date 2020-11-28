import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol events in domain "ServiceWorker"

extension SwiftCDPDomains.ServiceWorker {
  public struct workerErrorReported: ModelEvent {
    public typealias Model = SwiftCDPDomains.ServiceWorker
    
    public var errorMessage: ServiceWorkerErrorMessage
    
  }
}

extension SwiftCDPDomains.ServiceWorker {
  public struct workerRegistrationUpdated: ModelEvent {
    public typealias Model = SwiftCDPDomains.ServiceWorker
    
    public var registrations: [ServiceWorkerRegistration]
    
  }
}

extension SwiftCDPDomains.ServiceWorker {
  public struct workerVersionUpdated: ModelEvent {
    public typealias Model = SwiftCDPDomains.ServiceWorker
    
    public var versions: [ServiceWorkerVersion]
    
  }
}

