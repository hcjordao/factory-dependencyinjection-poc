import FeatureKeychain_Interface
import Foundation
import KeychainSwift

public final class KeychainService: KeychainServiceAPI {
    let keychain = KeychainSwift()

    public init() {}

    @discardableResult
    public func save<T: Encodable>(object: T, for key: KeychainKey) -> Bool {
        guard let data = try? JSONEncoder().encode(object) else {
            return false
        }

        keychain.set(data, forKey: key.rawValue)
        return true
    }

    public func getObject<T: Decodable>(for key: KeychainKey) -> T? {
        guard let data = keychain.getData(key.rawValue), let object = try? JSONDecoder().decode(T.self, from: data) else {
            return nil
        }

        return object
    }

    @discardableResult
    public func deleteObject(for key: KeychainKey) -> Bool {
        keychain.delete(key.rawValue)
    }

    public func clear() {
        let discardableKeys = KeychainKey.allCases
        discardableKeys.forEach { deleteObject(for: $0) }
    }
}
