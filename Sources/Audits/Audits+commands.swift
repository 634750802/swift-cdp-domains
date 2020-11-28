import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol commands in domain "Audits"

extension SwiftCDPDomains.Audits {
  /// - description: Returns the response body and size if it were re-encoded with the specified settings. Only
  /// applies to images.
  public struct getEncodedResponse: ModelMethod {
    public typealias Model = SwiftCDPDomains.Audits
    public static let name = "getEncodedResponse"
    
    /// - description: Identifier of the network request to get content for.
    public var requestId: SwiftCDPDomains.Network.RequestId
    
    /// - description: The encoding to use.
    public var encoding: String
    
    /// - description: The quality of the encoding (0-1). (defaults to 1)
    public var quality: Double?
    
    /// - description: Whether to only return the size information (defaults to false).
    public var sizeOnly: Bool?
    
    public init(requestId: SwiftCDPDomains.Network.RequestId, encoding: String, quality: Double? = nil, sizeOnly: Bool? = nil) {
      self.requestId = requestId
      self.encoding = encoding
      self.quality = quality
      self.sizeOnly = sizeOnly
    }
    
    public struct Result: Decodable {
      /// - description: The encoded body as a base64 string. Omitted if sizeOnly is true.
      public var body: String?
      /// - description: Size before re-encoding.
      public var originalSize: Int
      /// - description: Size after re-encoding.
      public var encodedSize: Int
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Result {
      result
    }
  }
}

extension SwiftCDPDomains.Audits {
  /// - description: Disables issues domain, prevents further issues from being reported to the client.
  public struct disable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Audits
    public static let name = "disable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

extension SwiftCDPDomains.Audits {
  /// - description: Enables issues domain, sends the issues collected so far to the client by means of the
  /// `issueAdded` event.
  public struct enable: ModelMethod {
    public typealias Model = SwiftCDPDomains.Audits
    public static let name = "enable"
    
    public init() {
    }
    
    public struct Result: Decodable {
      
    }
    public static func transform(client: ChromeClient, result: Result) -> Void {
    }
  }
}

