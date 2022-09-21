import Combine
import Factory
import FeatureKeychain_Interface
import Foundation

public class FeatureBViewModel: ObservableObject {
    lazy var keychainService = Container.keychainService()
    @Published var currentText: String = ""

    private var cancellables: Set<AnyCancellable> = []

    init() {
        observeText()
    }

    func load() {
        guard let token: String = keychainService?.getObject(for: .token) else {
            return
        }

        currentText = token
    }

    func update(token: String) {
        debugPrint("Did update token to \(token)")
        keychainService?.save(object: currentText, for: .token)
    }

    func observeText() {
        $currentText
            .debounce(
                for: .milliseconds(500),
                scheduler: DispatchQueue.main
            )
            .removeDuplicates()
            .dropFirst()
            .sink { [weak self] receivedValue in self?.update(token: receivedValue) }
            .store(in: &cancellables)
    }
}
