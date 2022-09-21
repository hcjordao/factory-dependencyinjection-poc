import Factory
import FeatureB_Interface
import Foundation

public class FeatureAViewModel {
    lazy var featureFactoryB = Container.featureB()

    init() {}
}
