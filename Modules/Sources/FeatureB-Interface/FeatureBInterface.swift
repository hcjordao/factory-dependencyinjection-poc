import CoreArchitecture
import Factory
import Foundation
import SwiftUI

public protocol FeatureBInterface: APIViewProtocol {}

public extension Container {
    static var featureB = Factory<FeatureBInterface?> { nil }
}
