//
//  TransferView.swift
//  AirPlane
//
//  Created by Kevin Zhang on 7/23/23.
//

import SwiftUI

struct TransferView: View {
    let columns = [
        GridItem(.adaptive(minimum: 80), spacing: 24) // Set the minimum width for each item
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Select a Device to Transfer Files to")
                        .font(.title)
                        .bold()
                        .padding(.vertical)
                    
                    LazyVGrid(columns: columns, spacing: 32) {
                        
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
                                
                                Text("iPhone 14 Pro")
                                    .frame(height: 50, alignment: .top)
                            }
                            .foregroundColor(.black)
                        }
                        
//                        Button(action: {}) {
//                            VStack {
//                                ZStack {
//                                    Circle()
//                                        .frame(width: 100, height: 100)
//                                        .foregroundColor(.white)
//                                        .shadow(color: .gray.opacity(0.4), radius: 7)
//
//                                    Image(systemName: "iphone.gen3")
//                                        .font(.system(size: 56))
//                                }
//                                .padding(.bottom, 4)
//
//                                Text("Kevin's iPhone")
//                                    .frame(height: 50, alignment: .top)
//                            }
//                            .foregroundColor(.black)
//                        }
//
//                        Button(action: {}) {
//                            VStack {
//                                ZStack {
//                                    Circle()
//                                        .frame(width: 100, height: 100)
//                                        .foregroundColor(.white)
//                                        .shadow(color: .gray.opacity(0.4), radius: 7)
//
//                                    Image(systemName: "macbook")
//                                        .font(.system(size: 56))
//                                }
//                                .padding(.bottom, 4)
//
//                                Text("Kevin's Macbook Pro")
//                                    .frame(height: 50, alignment: .top)
//                            }
//                            .foregroundColor(.black)
//                        }
                        
                        
                    }
                    .padding(.vertical, 20)
                }
                .padding()
            }
            .padding(.horizontal, 10)
        }
    }
}

struct TransferView_Previews: PreviewProvider {
    static var previews: some View {
        TransferView()
    }
}
