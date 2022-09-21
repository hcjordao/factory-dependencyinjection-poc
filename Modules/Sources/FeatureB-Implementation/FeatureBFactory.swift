import CoreUI
import FeatureB_Interface
import SwiftUI

public final class FeatureBFactory: FeatureBInterface {
    public init() {}

    public func makeView() -> AnyView {
        let viewModel = FeatureBViewModel()

        return FeatureBView(viewModel: viewModel)
            .anyView()
    }
}
