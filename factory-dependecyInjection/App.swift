import Application
import SwiftUI

@main
struct PocApp: App {
    var appInit: AppInit

    public init() {
        self.appInit = AppInit()
    }

    var body: some Scene {
        WindowGroup {
            appInit.initializeView()
        }
    }
}
