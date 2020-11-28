import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "Audits"

extension SwiftCDPDomains.Audits {
  /// - see: https://vanilla.aslushnikov.com/?Audits.AffectedCookie
  /// - description: Information about a cookie that is affected by an inspector issue.
  public struct AffectedCookie: Codable {
    /// - description: The following three properties uniquely identify a cookie
    public var name: String
    
    public var path: String
    
    public var domain: String
    
  }
}

extension SwiftCDPDomains.Audits {
  /// - see: https://vanilla.aslushnikov.com/?Audits.AffectedRequest
  /// - description: Information about a request that is affected by an inspector issue.
  public struct AffectedRequest: Codable {
    /// - description: The unique request id.
    public var requestId: SwiftCDPDomains.Network.RequestId
    
    public var url: String?
    
  }
}

extension SwiftCDPDomains.Audits {
  /// - see: https://vanilla.aslushnikov.com/?Audits.AffectedFrame
  /// - description: Information about the frame affected by an inspector issue.
  public struct AffectedFrame: Codable {
    public var frameId: SwiftCDPDomains.Page.FrameId
    
  }
}

extension SwiftCDPDomains.Audits {
  /// - see: https://vanilla.aslushnikov.com/?Audits.SameSiteCookieExclusionReason
  /// - choices: ["ExcludeSameSiteUnspecifiedTreatedAsLax", "ExcludeSameSiteNoneInsecure", "ExcludeSameSiteLax", "ExcludeSameSiteStrict"]
  public typealias SameSiteCookieExclusionReason = String
}

extension SwiftCDPDomains.Audits {
  /// - see: https://vanilla.aslushnikov.com/?Audits.SameSiteCookieWarningReason
  /// - choices: ["WarnSameSiteUnspecifiedCrossSiteContext", "WarnSameSiteNoneInsecure", "WarnSameSiteUnspecifiedLaxAllowUnsafe", "WarnSameSiteStrictLaxDowngradeStrict", "WarnSameSiteStrictCrossDowngradeStrict", "WarnSameSiteStrictCrossDowngradeLax", "WarnSameSiteLaxCrossDowngradeStrict", "WarnSameSiteLaxCrossDowngradeLax"]
  public typealias SameSiteCookieWarningReason = String
}

extension SwiftCDPDomains.Audits {
  /// - see: https://vanilla.aslushnikov.com/?Audits.SameSiteCookieOperation
  /// - choices: ["SetCookie", "ReadCookie"]
  public typealias SameSiteCookieOperation = String
}

extension SwiftCDPDomains.Audits {
  /// - see: https://vanilla.aslushnikov.com/?Audits.SameSiteCookieIssueDetails
  /// - description: This information is currently necessary, as the front-end has a difficult
  /// time finding a specific cookie. With this, we can convey specific error
  /// information without the cookie.
  public struct SameSiteCookieIssueDetails: Codable {
    public var cookie: AffectedCookie
    
    public var cookieWarningReasons: [SameSiteCookieWarningReason]
    
    public var cookieExclusionReasons: [SameSiteCookieExclusionReason]
    
    /// - description: Optionally identifies the site-for-cookies and the cookie url, which
    /// may be used by the front-end as additional context.
    public var operation: SameSiteCookieOperation
    
    public var siteForCookies: String?
    
    public var cookieUrl: String?
    
    public var request: AffectedRequest?
    
  }
}

extension SwiftCDPDomains.Audits {
  /// - see: https://vanilla.aslushnikov.com/?Audits.MixedContentResolutionStatus
  /// - choices: ["MixedContentBlocked", "MixedContentAutomaticallyUpgraded", "MixedContentWarning"]
  public typealias MixedContentResolutionStatus = String
}

extension SwiftCDPDomains.Audits {
  /// - see: https://vanilla.aslushnikov.com/?Audits.MixedContentResourceType
  /// - choices: ["Audio", "Beacon", "CSPReport", "Download", "EventSource", "Favicon", "Font", "Form", "Frame", "Image", "Import", "Manifest", "Ping", "PluginData", "PluginResource", "Prefetch", "Resource", "Script", "ServiceWorker", "SharedWorker", "Stylesheet", "Track", "Video", "Worker", "XMLHttpRequest", "XSLT"]
  public typealias MixedContentResourceType = String
}

extension SwiftCDPDomains.Audits {
  /// - see: https://vanilla.aslushnikov.com/?Audits.MixedContentIssueDetails
  public struct MixedContentIssueDetails: Codable {
    /// - description: The type of resource causing the mixed content issue (css, js, iframe,
    /// form,...). Marked as optional because it is mapped to from
    /// blink::mojom::RequestContextType, which will be replaced
    /// by network::mojom::RequestDestination
    public var resourceType: MixedContentResourceType?
    
    /// - description: The way the mixed content issue is being resolved.
    public var resolutionStatus: MixedContentResolutionStatus
    
    /// - description: The unsafe http url causing the mixed content issue.
    public var insecureURL: String
    
    /// - description: The url responsible for the call to an unsafe url.
    public var mainResourceURL: String
    
    /// - description: The mixed content request.
    /// Does not always exist (e.g. for unsafe form submission urls).
    public var request: AffectedRequest?
    
    /// - description: Optional because not every mixed content issue is necessarily linked to a frame.
    public var frame: AffectedFrame?
    
  }
}

extension SwiftCDPDomains.Audits {
  /// - see: https://vanilla.aslushnikov.com/?Audits.BlockedByResponseReason
  /// - description: Enum indicating the reason a response has been blocked. These reasons are
  /// refinements of the net error BLOCKED_BY_RESPONSE.
  /// - choices: ["CoepFrameResourceNeedsCoepHeader", "CoopSandboxedIFrameCannotNavigateToCoopPage", "CorpNotSameOrigin", "CorpNotSameOriginAfterDefaultedToSameOriginByCoep", "CorpNotSameSite"]
  public typealias BlockedByResponseReason = String
}

extension SwiftCDPDomains.Audits {
  /// - see: https://vanilla.aslushnikov.com/?Audits.BlockedByResponseIssueDetails
  /// - description: Details for a request that has been blocked with the BLOCKED_BY_RESPONSE
  /// code. Currently only used for COEP/COOP, but may be extended to include
  /// some CSP errors in the future.
  public struct BlockedByResponseIssueDetails: Codable {
    public var request: AffectedRequest
    
    public var parentFrame: AffectedFrame?
    
    public var blockedFrame: AffectedFrame?
    
    public var reason: BlockedByResponseReason
    
  }
}

extension SwiftCDPDomains.Audits {
  /// - see: https://vanilla.aslushnikov.com/?Audits.HeavyAdResolutionStatus
  /// - choices: ["HeavyAdBlocked", "HeavyAdWarning"]
  public typealias HeavyAdResolutionStatus = String
}

extension SwiftCDPDomains.Audits {
  /// - see: https://vanilla.aslushnikov.com/?Audits.HeavyAdReason
  /// - choices: ["NetworkTotalLimit", "CpuTotalLimit", "CpuPeakLimit"]
  public typealias HeavyAdReason = String
}

extension SwiftCDPDomains.Audits {
  /// - see: https://vanilla.aslushnikov.com/?Audits.HeavyAdIssueDetails
  public struct HeavyAdIssueDetails: Codable {
    /// - description: The resolution status, either blocking the content or warning.
    public var resolution: HeavyAdResolutionStatus
    
    /// - description: The reason the ad was blocked, total network or cpu or peak cpu.
    public var reason: HeavyAdReason
    
    /// - description: The frame that was blocked.
    public var frame: AffectedFrame
    
  }
}

extension SwiftCDPDomains.Audits {
  /// - see: https://vanilla.aslushnikov.com/?Audits.ContentSecurityPolicyViolationType
  /// - choices: ["kInlineViolation", "kEvalViolation", "kURLViolation", "kTrustedTypesSinkViolation", "kTrustedTypesPolicyViolation"]
  public typealias ContentSecurityPolicyViolationType = String
}

extension SwiftCDPDomains.Audits {
  /// - see: https://vanilla.aslushnikov.com/?Audits.SourceCodeLocation
  public struct SourceCodeLocation: Codable {
    public var url: String
    
    public var lineNumber: Int
    
    public var columnNumber: Int
    
  }
}

extension SwiftCDPDomains.Audits {
  /// - see: https://vanilla.aslushnikov.com/?Audits.ContentSecurityPolicyIssueDetails
  public struct ContentSecurityPolicyIssueDetails: Codable {
    /// - description: The url not included in allowed sources.
    public var blockedURL: String?
    
    /// - description: Specific directive that is violated, causing the CSP issue.
    public var violatedDirective: String
    
    public var isReportOnly: Bool
    
    public var contentSecurityPolicyViolationType: ContentSecurityPolicyViolationType
    
    public var frameAncestor: AffectedFrame?
    
    public var sourceCodeLocation: SourceCodeLocation?
    
    public var violatingNodeId: SwiftCDPDomains.DOM.BackendNodeId?
    
  }
}

extension SwiftCDPDomains.Audits {
  /// - see: https://vanilla.aslushnikov.com/?Audits.InspectorIssueCode
  /// - description: A unique identifier for the type of issue. Each type may use one of the
  /// optional fields in InspectorIssueDetails to convey more specific
  /// information about the kind of issue.
  /// - choices: ["SameSiteCookieIssue", "MixedContentIssue", "BlockedByResponseIssue", "HeavyAdIssue", "ContentSecurityPolicyIssue"]
  public typealias InspectorIssueCode = String
}

extension SwiftCDPDomains.Audits {
  /// - see: https://vanilla.aslushnikov.com/?Audits.InspectorIssueDetails
  /// - description: This struct holds a list of optional fields with additional information
  /// specific to the kind of issue. When adding a new issue code, please also
  /// add a new optional field to this type.
  public struct InspectorIssueDetails: Codable {
    public var sameSiteCookieIssueDetails: SameSiteCookieIssueDetails?
    
    public var mixedContentIssueDetails: MixedContentIssueDetails?
    
    public var blockedByResponseIssueDetails: BlockedByResponseIssueDetails?
    
    public var heavyAdIssueDetails: HeavyAdIssueDetails?
    
    public var contentSecurityPolicyIssueDetails: ContentSecurityPolicyIssueDetails?
    
  }
}

extension SwiftCDPDomains.Audits {
  /// - see: https://vanilla.aslushnikov.com/?Audits.InspectorIssue
  /// - description: An inspector issue reported from the back-end.
  public struct InspectorIssue: Codable {
    public var code: InspectorIssueCode
    
    public var details: InspectorIssueDetails
    
  }
}

