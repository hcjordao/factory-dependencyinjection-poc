import CoreArchitecture
import Factory
import SwiftUI

public protocol KeychainServiceAPI {
    func getObject<T: Decodable>(for key: KeychainKey) -> T?

    @discardableResult
    func save<T: Encodable>(object: T, for key: KeychainKey) -> Bool

    @discardableResult
    func deleteObject(for key: KeychainKey) -> Bool
    
    func clear()
}

public extension Container {
    static var keychainService = Factory<KeychainServiceAPI?> { nil }
}
