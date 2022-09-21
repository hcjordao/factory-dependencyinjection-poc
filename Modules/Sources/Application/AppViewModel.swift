import Factory
import FeatureA_Interface
import Foundation

public final class AppViewModel {
    lazy var featureFactory = Container.featureA()

    public init() {}
}
