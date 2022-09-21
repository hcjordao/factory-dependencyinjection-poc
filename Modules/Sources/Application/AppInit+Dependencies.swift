import FeatureA_Interface
import FeatureA_Implementation
import FeatureB_Interface
import FeatureB_Implementation
import FeatureKeychain_Interface
import FeatureKeychain_Implementation
import Factory

public extension AppInit {
    func initializeDependencies() {
        Container.featureA.register { FeatureAFactory() }
        Container.featureB.register { FeatureBFactory() }
        Container.keychainService.register { KeychainService() }
    }
}
