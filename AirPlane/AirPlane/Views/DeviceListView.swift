//
//  DeviceListView.swift
//  AirPlane
//
//  Created by Kevin Zhang on 7/22/23.
//

import SwiftUI

struct DeviceListView: View {
    //    let items = (1...20).map { "Item \($0)" }
    let columns = [
        GridItem(.adaptive(minimum: 80), spacing: 24) // Set the minimum width for each item
    ]
    let transferDevice: String = {
        switch UIDevice.current.name{
        case "iPhone 14 Pro":
            return "iPhone 8"
        case "iPhone 8":
            return "iPhone 14 Pro"
        default:
            return "Some iPhone"
        }
    }()
    var body: some View {
      
        ScrollView {
            LazyVGrid(columns: columns, spacing: 32) {
//                NavigationLink {
//                    FolderView(folderName: "This iPhone")
//                } label: {
//                    VStack {
//                        ZStack {
//                            Circle()
//                                .frame(width: 100, height: 100)
//                                .foregroundColor(.white)
//                                .shadow(color: .gray.opacity(0.4), radius: 7)
//                            
//                            Image(systemName: "iphone")
//                                .font(.system(size: 56))
//                        }
//                        .padding(.bottom, 4)
//                        
//                        Text("This iPhone")
//                            .frame(height: 50, alignment: .top)
//                        
//                    }
//                    .foregroundColor(.black)
//                }
                
                NavigationLink {
                    
                    FolderView(folderName: transferDevice)
                } label: {
                    VStack {
                        ZStack {
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(.white)
                                .shadow(color: .gray.opacity(0.4), radius: 7)
                            
                            Image(systemName: "iphone")
                                .font(.system(size: 56))
                        }
                        .padding(.bottom, 4)
                        
                        Text(transferDevice)
                            .frame(height: 50, alignment: .top)
                        
                    }
                    .foregroundColor(.black)
                }
                
                
            }
            .padding(.horizontal, 30)
            .padding(.vertical, 20)
        }
        .navigationTitle("Devices")
        .background(Color(.systemGray6))
    }
}

struct DeviceListView_Previews: PreviewProvider {
    static var previews: some View {
        DeviceListView()
    }
}
