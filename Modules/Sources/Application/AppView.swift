import Factory
import SwiftUI

public struct AppView: View {
    @Injected(Container.featureA) private var featureA

    public var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    featureA.makeView()
                } label: {
                    Text("Feature A")
                }
            }
            .navigationTitle("App View")
        }
    }
}
