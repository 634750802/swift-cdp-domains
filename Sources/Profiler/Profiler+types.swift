import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol types in domain "Profiler"

extension SwiftCDPDomains.Profiler {
  /// - see: https://vanilla.aslushnikov.com/?Profiler.ProfileNode
  /// - description: Profile node. Holds callsite information, execution statistics and child nodes.
  public struct ProfileNode: Codable {
    /// - description: Unique id of the node.
    public var id: Int
    
    /// - description: Function location.
    public var callFrame: SwiftCDPDomains.Runtime.CallFrame
    
    /// - description: Number of samples where this node was on top of the call stack.
    public var hitCount: Int?
    
    /// - description: Child node ids.
    public var children: [Int]?
    
    /// - description: The reason of being not optimized. The function may be deoptimized or marked as don't
    /// optimize.
    public var deoptReason: String?
    
    /// - description: An array of source position ticks.
    public var positionTicks: [PositionTickInfo]?
    
  }
}

extension SwiftCDPDomains.Profiler {
  /// - see: https://vanilla.aslushnikov.com/?Profiler.Profile
  /// - description: Profile.
  public struct Profile: Codable {
    /// - description: The list of profile nodes. First item is the root node.
    public var nodes: [ProfileNode]
    
    /// - description: Profiling start timestamp in microseconds.
    public var startTime: Int
    
    /// - description: Profiling end timestamp in microseconds.
    public var endTime: Int
    
    /// - description: Ids of samples top nodes.
    public var samples: [Int]?
    
    /// - description: Time intervals between adjacent samples in microseconds. The first delta is relative to the
    /// profile startTime.
    public var timeDeltas: [Int]?
    
  }
}

extension SwiftCDPDomains.Profiler {
  /// - see: https://vanilla.aslushnikov.com/?Profiler.PositionTickInfo
  /// - description: Specifies a number of samples attributed to a certain source position.
  public struct PositionTickInfo: Codable {
    /// - description: Source line number (1-based).
    public var line: Int
    
    /// - description: Number of samples attributed to the source line.
    public var ticks: Int
    
  }
}

extension SwiftCDPDomains.Profiler {
  /// - see: https://vanilla.aslushnikov.com/?Profiler.CoverageRange
  /// - description: Coverage data for a source range.
  public struct CoverageRange: Codable {
    /// - description: JavaScript script source offset for the range start.
    public var startOffset: Int
    
    /// - description: JavaScript script source offset for the range end.
    public var endOffset: Int
    
    /// - description: Collected execution count of the source range.
    public var count: Int
    
  }
}

extension SwiftCDPDomains.Profiler {
  /// - see: https://vanilla.aslushnikov.com/?Profiler.FunctionCoverage
  /// - description: Coverage data for a JavaScript function.
  public struct FunctionCoverage: Codable {
    /// - description: JavaScript function name.
    public var functionName: String
    
    /// - description: Source ranges inside the function with coverage data.
    public var ranges: [CoverageRange]
    
    /// - description: Whether coverage data for this function has block granularity.
    public var isBlockCoverage: Bool
    
  }
}

extension SwiftCDPDomains.Profiler {
  /// - see: https://vanilla.aslushnikov.com/?Profiler.ScriptCoverage
  /// - description: Coverage data for a JavaScript script.
  public struct ScriptCoverage: Codable {
    /// - description: JavaScript script id.
    public var scriptId: SwiftCDPDomains.Runtime.ScriptId
    
    /// - description: JavaScript script name or url.
    public var url: String
    
    /// - description: Functions contained in the script that has coverage data.
    public var functions: [FunctionCoverage]
    
  }
}

extension SwiftCDPDomains.Profiler {
  /// - see: https://vanilla.aslushnikov.com/?Profiler.TypeObject
  /// - description: Describes a type collected during runtime.
  public struct TypeObject: Codable {
    /// - description: Name of a type collected with type profiling.
    public var name: String
    
  }
}

extension SwiftCDPDomains.Profiler {
  /// - see: https://vanilla.aslushnikov.com/?Profiler.TypeProfileEntry
  /// - description: Source offset and types for a parameter or return value.
  public struct TypeProfileEntry: Codable {
    /// - description: Source offset of the parameter or end of function for return values.
    public var offset: Int
    
    /// - description: The types for this parameter or return value.
    public var types: [TypeObject]
    
  }
}

extension SwiftCDPDomains.Profiler {
  /// - see: https://vanilla.aslushnikov.com/?Profiler.ScriptTypeProfile
  /// - description: Type profile data collected during runtime for a JavaScript script.
  public struct ScriptTypeProfile: Codable {
    /// - description: JavaScript script id.
    public var scriptId: SwiftCDPDomains.Runtime.ScriptId
    
    /// - description: JavaScript script name or url.
    public var url: String
    
    /// - description: Type profile entries for parameters and return values of the functions in the script.
    public var entries: [TypeProfileEntry]
    
  }
}

extension SwiftCDPDomains.Profiler {
  /// - see: https://vanilla.aslushnikov.com/?Profiler.CounterInfo
  /// - description: Collected counter information.
  public struct CounterInfo: Codable {
    /// - description: Counter name.
    public var name: String
    
    /// - description: Counter value.
    public var value: Int
    
  }
}

extension SwiftCDPDomains.Profiler {
  /// - see: https://vanilla.aslushnikov.com/?Profiler.RuntimeCallCounterInfo
  /// - description: Runtime call counter information.
  public struct RuntimeCallCounterInfo: Codable {
    /// - description: Counter name.
    public var name: String
    
    /// - description: Counter value.
    public var value: JsonNumber
    
    /// - description: Counter time in seconds.
    public var time: JsonNumber
    
  }
}

