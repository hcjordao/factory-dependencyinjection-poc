import SwiftUI

public struct FeatureBView: View {
    @ObservedObject var viewModel: FeatureBViewModel

    public init(viewModel: FeatureBViewModel) {
        self.viewModel = viewModel
    }

    public var body: some View {
        List {
            Text("Update some value on keychain")
            TextField("Keychain", text: $viewModel.currentText)
        }
        .onAppear { viewModel.load() }
        .navigationTitle("Feature B")
    }
}
