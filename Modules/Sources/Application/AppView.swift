import SwiftUI

public struct AppView: View {
    private let viewModel: AppViewModel

    public init(viewModel: AppViewModel) {
        self.viewModel = viewModel
    }

    public var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    viewModel.featureFactory?.makeView()
                } label: {
                    Text("Feature A")
                }
            }
            .navigationTitle("App View")
        }
    }
}
