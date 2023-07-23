//
//  FileSystemHome.swift
//  AirPlane
//
//  Created by Kevin Zhang on 7/22/23.
//

import SwiftUI

struct FolderView: View {
    let columns = [
        GridItem(.adaptive(minimum: 80), spacing: 24) // Set the minimum width for each item
    ]
    
    var menuItems: some View {
            Group {
                Button("Action 1", action: {})
                Button("Action 2", action: {})
                Button("Action 3", action: {})
            }
        }
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    
                    Button(action: {}) {
                        VStack {
                            Image(systemName: "folder.fill")
                                .font(.system(size: 64))
                                .foregroundColor(.cyan)
                                .contextMenu {
                                    menuItems
                                }
                            Text("Documents")
                                .frame(height: 70, alignment: .top)
                                .foregroundColor(.black)
                        }
                    }
                    
                    Button(action: {}) {
                        VStack {
                            Image(systemName: "folder.fill")
                                .font(.system(size: 64))
                                .foregroundColor(.cyan)
                                .contextMenu {
                                    menuItems
                                }
                            Text("Downloads")
                                .frame(height: 70, alignment: .top)
                                .foregroundColor(.black)
                        }
                    }
                    
                    Button(action: {}) {
                        VStack {
                            Image(systemName: "folder.fill")
                                .font(.system(size: 64))
                                .foregroundColor(.cyan)
                                .contextMenu {
                                    menuItems
                                }
                            Text("Applications")
                                .frame(height: 70, alignment: .top)
                                .foregroundColor(.black)
                        }
                    }
                    
                    Button(action: {}) {
                        VStack {
                            Image(systemName: "folder.fill")
                                .font(.system(size: 64))
                                .foregroundColor(.cyan)
                                .contextMenu {
                                    menuItems
                                }
                            Text("Shared")
                                .frame(height: 70, alignment: .top)
                                .foregroundColor(.black)
                        }
                    }
                    
                    Button(action: {}) {
                        VStack {
                            Image("file-icon")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 70)
                                .contextMenu {
                                    menuItems
                                }
                            Text("Hello.txt")
                                .frame(height: 70, alignment: .top)
                                .foregroundColor(.black)
                        }
                    }
                    
                    Button(action: {}) {
                        VStack {
                            Image("file-icon")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 70)
                                .contextMenu {
                                    menuItems
                                }
                            Text("doc.pdf")
                                .frame(height: 70, alignment: .top)
                                .foregroundColor(.black)
                        }
                    }
                    
                }
                .padding(.horizontal, 30)
                .padding(.vertical, 30)
            }
            .navigationTitle("This iPhone")
            .background(Color(.systemGray6))
        }
    }
}

struct FolderView_Previews: PreviewProvider {
    static var previews: some View {
        FolderView()
    }
}
