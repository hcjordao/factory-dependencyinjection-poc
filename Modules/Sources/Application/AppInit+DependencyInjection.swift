import Factory
import FeatureA_Interface
import FeatureA_Implementation
import FeatureB_Interface
import FeatureB_Implementation
import FeatureC_Interface
import FeatureC_Implementation

public extension Container {
    static let featureA = Factory { FeatureAConcrete() as FeatureAInterface }
    static let featureB = Factory { FeatureBConcrete() as FeatureBInterface }
    static let featureC = Factory { FeatureCConcrete() as FeatureCInterface }
}
