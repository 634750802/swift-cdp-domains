import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "IO"

extension SwiftCDPDomains.IO {
  /// - description: Input/Output operations for streams produced by DevTools.
  public struct close: ModelMethod {
    public typealias Model = SwiftCDPDomains.IO
    public static let name = "close"
    
    /// - description: Handle of the stream to close.
    public var handle: StreamHandle
    
    public init(handle: StreamHandle) {
      self.handle = handle
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.IO {
  /// - description: Input/Output operations for streams produced by DevTools.
  public struct read: ModelMethod {
    public typealias Model = SwiftCDPDomains.IO
    public static let name = "read"
    
    /// - description: Handle of the stream to read.
    public var handle: StreamHandle
    
    /// - description: Seek to the specified offset before reading (if not specificed, proceed with offset
    /// following the last read). Some types of streams may only support sequential reads.
    public var offset: Int?
    
    /// - description: Maximum number of bytes to read (left upon the agent discretion if not specified).
    public var size: Int?
    
    public init(handle: StreamHandle, offset: Int? = nil, size: Int? = nil) {
      self.handle = handle
      self.offset = offset
      self.size = size
    }
    
    public struct Result: Decodable {
      /// - description: Set if the data is base64-encoded
      public var base64Encoded: Bool?
      /// - description: Data that were read.
      public var data: String
      /// - description: Set if the end-of-file condition occured while reading.
      public var eof: Bool
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.IO {
  /// - description: Input/Output operations for streams produced by DevTools.
  public struct resolveBlob: ModelMethod {
    public typealias Model = SwiftCDPDomains.IO
    public static let name = "resolveBlob"
    
    /// - description: Object id of a Blob object wrapper.
    public var objectId: SwiftCDPDomains.Runtime.RemoteObjectId
    
    public init(objectId: SwiftCDPDomains.Runtime.RemoteObjectId) {
      self.objectId = objectId
    }
    
    public struct Result: Decodable {
      /// - description: UUID of the specified Blob.
      public var uuid: String
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

