import Factory
import Foundation
import SwiftUI
import FeatureB_Implementation

public class AppInit {
    public init() {
        initializeDependencies()
    }

    public func initializeView() -> some View {
        AppView()
    }

    func initializeDependencies() {
        Container.featureB.register {
            FeatureBConcrete()
        }
    }
}
