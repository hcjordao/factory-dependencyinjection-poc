import CoreArchitecture
import Factory
import SwiftUI

public protocol FeatureAAPI: APIViewProtocol {}

public extension Container {
    static var featureA = Factory<FeatureAAPI?> { nil } 
}
