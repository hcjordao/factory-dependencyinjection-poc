import SwiftUI

public struct FeatureAView: View {
    let viewModel: FeatureAViewModel

    public init(viewModel: FeatureAViewModel) {
        self.viewModel = viewModel
    }

    public var body: some View {
        List {
            NavigationLink {
                viewModel.featureFactoryB?.makeView()
            } label: {
                Text("Feature B")
            }
        }
        .navigationTitle("Feature A")
    }
}
