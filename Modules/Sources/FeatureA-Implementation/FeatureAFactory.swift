import CoreUI
import FeatureA_Interface
import SwiftUI

public final class FeatureAFactory: FeatureAAPI {
    public init() {}

    public func makeView() -> AnyView {
        let viewModel = FeatureAViewModel()

        return FeatureAView(viewModel: viewModel)
            .anyView()
    }
}
