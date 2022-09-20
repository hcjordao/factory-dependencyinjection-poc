import Factory
import FeatureA_Interface
import SwiftUI

public struct FeatureAConcreteView: View {
    public init() {}

    public var body: some View {
        List {
            NavigationLink {
                // featureB?.makeView()
            } label: {
                Text("Feature B")
            }
        }
        .navigationTitle("Feature A")
    }
}
