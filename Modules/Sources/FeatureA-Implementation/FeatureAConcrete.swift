import Factory
import FeatureA_Interface
import Foundation
import SwiftUI

public class FeatureAConcrete: FeatureAInterface {
    public init() {}

    public func makeView() -> AnyView {
        AnyView(FeatureAConcreteView())
    }
}
