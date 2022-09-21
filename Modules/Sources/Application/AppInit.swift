import Foundation
import SwiftUI

public class AppInit {
    private let viewModel = AppViewModel()

    public init() {
        initializeDependencies()
    }

    public func initializeView() -> some View {
        AppView(viewModel: viewModel)
    }
}
