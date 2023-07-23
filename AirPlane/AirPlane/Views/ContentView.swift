//
//  ContentView.swift
//  AirPlane
//
//  Created by Soham Nagawanshi on 7/22/23.
//

import SwiftUI
import CoreData
import PhotosUI

struct ContentView: View {
    @State private var selectedTab: Tab = .home

    enum Tab {
        case home
    }
    

    var body: some View {
        TabView(selection: $selectedTab) {
            NavigationView {
                DeviceListView()
            }
            .tabItem {
                Image(systemName: "iphone")
                Text("Devices")
            }
            .tag(Tab.home)
        }
    }
  
    
    
//
//    struct ContentView_Previews: PreviewProvider {
//        static var previews: some View {
//            ContentView().environmentObject()
//        }
//    }
}
