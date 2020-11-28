import Foundation
import ChromeDevtoolProtocol

// Generated code, ChromeDevtoolsProtocol domain "DOMSnapshot"

/// - see: https://vanilla.aslushnikov.com/?DOMSnapshot
/// - description: This domain facilitates obtaining document snapshots with DOM, layout, and style information.
/// - intention: This is an experimental property.
/// - dependencies: CSS, DOM, DOMDebugger, Page
public enum DOMSnapshot: Model, ExperimentalFeature {
  public static let name = "DOMSnapshot"
}
