//
//  DisplayerView.swift
//  AirPlane
//
//  Created by Soham Nagawanshi on 7/22/23.
//

import SwiftUI
import PhotosUI
struct DisplayerView: View {
    var selectedFile: Data?
    var body: some View {
        if let selectedFile, let image = UIImage(data: selectedFile){
            Image(uiImage: image)
            .frame(width: 300, height: 300)
        } else {
            Text("image could not be created")
            
        }
    
        
        
    }
 
}
