//
//  Try_ItApp.swift
//  Try It
//
//  Created by Ruba Abuhatlah on 5/16/23.
//

import SwiftUI
import FirebaseCore

enum Route: Hashable {
    case login
}
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
class Coordinator: ObservableObject {
    @Published var path = [Route]()
}
@main
struct Try_It: App {
    // register app delegate for Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @ObservedObject var coordinator = Coordinator()
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $coordinator.path) {
                sign_in()
                    .navigationDestination(for: Route.self) { route in
                        switch route {
                        case .login:
                            Text("login screen")
                        }
                    }
            }.environmentObject(coordinator)
        }
    }
}
