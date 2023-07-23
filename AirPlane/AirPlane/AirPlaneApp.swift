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
import FirebaseStorage
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
    var reference: StorageReference
   
    init() {
        FirebaseApp.configure()
        reference = Storage.storage().reference()
        gatherFileData()
    }
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            ContentView()
                
        }
    }
    func gatherFileData() {
        guard let fileURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first?.appendingPathComponent("photo.jpg") else {
            print("Error creating file URL.")
            return
        }
        reference.child("\(UIDevice.current.name)/photo").getData(maxSize: 1 * 1024 * 1024) { data, error in
            if let error {
                print("an error has occured: \(error)")
            } else if let data {
                // Data for "images/island.jpg" is returned
                do {
                    try data.write(to: fileURL)
                    print("File saved to document directory: \(fileURL)")
                } catch {
                    print("Error saving file: \(error)")
                }
            }
        }
    }
}
