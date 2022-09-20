import FeatureC_Interface
import Foundation
import SwiftUI

public class FeatureCConcrete: FeatureCInterface {
    public init() {}

    public func makeView() -> AnyView {
        AnyView(FeatureCConcreteView())
    }
}
