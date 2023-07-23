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
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 32) {
//                    ForEach(items, id: \.self) { item in
//                        Text(item)
//                            .padding()
//                            .background(Color.blue)
//                            .foregroundColor(.white)
//                            .cornerRadius(8)
//                    }
                    
                    Button(action: {}) {
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
                            
                            Text("This iPhone")
                                .frame(height: 50, alignment: .top)
                                
                        }
                        .foregroundColor(.black)
                    }
                    
                    Button(action: {}) {
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
                            
                            Text("Soham's iPhone 11")
                                .frame(height: 50, alignment: .top)
                        }
                        .foregroundColor(.black)
                    }
                    
                    Button(action: {}) {
                        VStack {
                            ZStack {
                                Circle()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(.white)
                                    .shadow(color: .gray.opacity(0.4), radius: 7)
                                
                                Image(systemName: "iphone.gen3")
                                    .font(.system(size: 56))
                            }
                            .padding(.bottom, 4)
                            
                            Text("Kevin's iPhone")
                                .frame(height: 50, alignment: .top)
                        }
                        .foregroundColor(.black)
                    }
                    
                    Button(action: {}) {
                        VStack {
                            ZStack {
                                Circle()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(.white)
                                    .shadow(color: .gray.opacity(0.4), radius: 7)
                                
                                Image(systemName: "macbook")
                                    .font(.system(size: 56))
                            }
                            .padding(.bottom, 4)
                            
                            Text("Kevin's Macbook Pro")
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
}

struct DeviceListView_Previews: PreviewProvider {
    static var previews: some View {
        DeviceListView()
    }
}