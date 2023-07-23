//
//  AirPlaneApp.swift
//  AirPlane
//
//  Created by Soham Nagawanshi on 7/22/23.
//

import SwiftUI
import FirebaseStorage
import Firebase
import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {
    // Implement any lifecycle methods you want to handle
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        // Custom initialization code if needed
        return true
    }
    
    // Other lifecycle methods (e.g., applicationDidEnterBackground, applicationWillEnterForeground, etc.) can be implemented here.
}
@main
struct AirPlaneApp: App {
    init() {
        FirebaseApp.configure()
    }
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            ContentView()
                
        }
    }
}
