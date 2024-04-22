//
//  ProTalkApp.swift
//  ProTalk
//
//  Created by Apprenant75 on 22/01/2024.
//

import SwiftUI
import FirebaseCore
import Firebase

//Code pour insertion Firebase NE PAS TOUCHER !!!!
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
//Code pour insertion Firebase NE PAS TOUCHER !!!!


@main
struct ProTalkApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
