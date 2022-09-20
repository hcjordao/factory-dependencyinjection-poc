import FeatureB_Interface
import Foundation
import SwiftUI

public class FeatureBConcrete: FeatureBInterface {
    public init() {}

    public func makeView() -> AnyView {
        AnyView(FeatureBConcreteView())
    }
}
