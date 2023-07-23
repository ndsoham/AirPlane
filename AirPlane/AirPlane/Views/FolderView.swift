//
//  FileSystemHome.swift
//  AirPlane
//
//  Created by Kevin Zhang on 7/22/23.
//

import SwiftUI
import FirebaseStorage

struct FolderView: View {
    @State private var activeSheet: ActiveSheet?
    @State private var isPresented: Bool = false
    var folderName: String
    
    enum ActiveSheet: Identifiable {
        case transferView
        case fileInformationView
        
        var id: Int {
            hashValue
        }
    }
    
    
    let columns = [
        GridItem(.adaptive(minimum: 80), spacing: 24) // Set the minimum width for each item
    ]
    var reference = Storage.storage().reference()
    
    var body: some View {
   
        ScrollView {
           
            LazyVGrid(columns: columns) {
                
                NavigationLink {
                    FolderView(folderName: "Documents")
                } label: {
                    VStack {
                        Image(systemName: "folder.fill")
                            .font(.system(size: 64))
                            .foregroundColor(.cyan)
                            .contextMenu {
                                Button(action: {
                                    activeSheet = .fileInformationView
                                }) {
                                    HStack {
                                        Text("Get Info")
                                        Spacer()
                                        Image(systemName: "info.circle")
                                    }
                                }
                            }
                        
                        Text("Documents")
                            .frame(height: 70, alignment: .top)
                            .foregroundColor(.black)
                    }
                }
                
                
                NavigationLink {
                    FolderView(folderName: "Downloads")
                } label: {
                    VStack {
                        Image(systemName: "folder.fill")
                            .font(.system(size: 64))
                            .foregroundColor(.cyan)
                            .contextMenu {
                                Button(action: {
                                    activeSheet = .fileInformationView
                                }) {
                                    HStack {
                                        Text("Get Info")
                                        Spacer()
                                        Image(systemName: "info.circle")
                                    }
                                }
                            }
                        
                        Text("Downloads")
                            .frame(height: 70, alignment: .top)
                            .foregroundColor(.black)
                    }
                }
                
                NavigationLink {
                    FolderView(folderName: "Recents")
                } label: {
                    VStack {
                        Image(systemName: "folder.fill")
                            .font(.system(size: 64))
                            .foregroundColor(.cyan)
                            .contextMenu {
                                Button(action: {
                                    activeSheet = .fileInformationView
                                }) {
                                    HStack {
                                        Text("Get Info")
                                        Spacer()
                                        Image(systemName: "info.circle")
                                    }
                                }
                            }
                        
                        Text("Recents")
                            .frame(height: 70, alignment: .top)
                            .foregroundColor(.black)
                    }
                }
                
                NavigationLink {
                    FolderView(folderName: "Applications")
                } label: {
                    VStack {
                        Image(systemName: "folder.fill")
                            .font(.system(size: 64))
                            .foregroundColor(.cyan)
                            .contextMenu {
                                Button(action: {
                                    activeSheet = .fileInformationView
                                }) {
                                    HStack {
                                        Text("Get Info")
                                        Spacer()
                                        Image(systemName: "info.circle")
                                    }
                                }
                            }
                        
                        Text("Applications")
                            .frame(height: 70, alignment: .top)
                            .foregroundColor(.black)
                    }
                }
                
                NavigationLink {
                    // TODO: add preview screen
                } label: {
                    VStack {
                        Image("file-icon")
                            .resizable()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.cyan)
                            .contextMenu {
                                Button(action: {
                                    activeSheet = .fileInformationView
                                }) {
                                    HStack {
                                        Text("Get Info")
                                        Spacer()
                                        Image(systemName: "info.circle")
                                    }
                                }
                            }
                        
                        Text("test.txt")
                            .frame(height: 70, alignment: .top)
                            .foregroundColor(.black)
                    }
                }
                
                NavigationLink {
                    // TODO: add preview screen
                } label: {
                    VStack {
                        Image("file-icon")
                            .resizable()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.cyan)
                            .contextMenu {
                                Button(action: {
                                    activeSheet = .fileInformationView
                                }) {
                                    HStack {
                                        Text("Get Info")
                                        Spacer()
                                        Image(systemName: "info.circle")
                                    }
                                }
                            }
                        
                        Text("Documents")
                            .frame(height: 70, alignment: .top)
                            .foregroundColor(.black)
                    }
                }
                
            }
            .padding(.horizontal, 30)
            .padding(.vertical, 30)
            Spacer(minLength: 0)
                
        }
        .navigationTitle(folderName)
        .navigationBarTitleDisplayMode(.inline)
        .fileImporter(isPresented: $isPresented, allowedContentTypes: [.image, .pdf, .video]) { result in
             switch result {
             case .success(let result):
                  do {
                       let data = try Data(contentsOf: result)
                       let photoRef = reference.child("\(UIDevice.current.name)/photo")
                       photoRef.putData(data) { metadata, error in
                            if let error {
                                 print("An error occured pushing the photo to the serve: \(error)")
                            } else if let metadata {
                                 print("The photo went to the server \(metadata)")
                            }
                       }
                       try FileManager.default.removeItem(at: result)
                       print("process was completed successfully")
                  } catch {
                       print("An error has occured \(error.localizedDescription)")
                  }
                  break
             case .failure(let error):
                  print("a different error has occured \(error)")
             }
             
        }
        .toolbar {
            Menu {
                Button(action: {
//                    activeSheet = .transferView
                    isPresented = true
                }) {
                    Text("Transfer")
                }
                 
            } label: {
                Image(systemName: "ellipsis.circle")
                    .font(.system(size: 20))
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
        }
        .sheet(item: $activeSheet) { item in
            switch item {
            case .fileInformationView:
                FileInformationView()
            case .transferView:
                TransferView()
            }
        }
    }
}

struct FolderView_Previews: PreviewProvider {
    static var previews: some View {
        FolderView(folderName: "This iPhone")
    }
}
