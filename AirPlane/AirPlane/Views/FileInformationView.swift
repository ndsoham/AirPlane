//
//  FileInformationView.swift
//  AirPlane
//
//  Created by Kevin Zhang on 7/23/23.
//

import SwiftUI

struct FileInformationView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("File Name.ext")
                .font(.title)
            Text("218 KB")
                .foregroundColor(.gray)
                .padding(.bottom)
            
            Divider()
            
            Text("Information")
                .font(.title)
                .padding(.vertical, 10)
            
            VStack {
                HStack {
                    Text("Kind")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("Python Script")
                }
                Divider()
                HStack {
                    Text("Size")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("218 KB")
                }
                Divider()
                HStack {
                    Text("Created")
                        .foregroundColor(.gray)
                    Spacer()
                    Text(Date.now, style: .date)
                }
                Divider()
                HStack {
                    Text("Modified")
                        .foregroundColor(.gray)
                    Spacer()
                    Text(Date.now, style: .date)
                }
                Divider()
                HStack {
                    Text("Last opened")
                        .foregroundColor(.gray)
                    Spacer()
                    Text(Date.now, style: .date)
                }
            }
            
            Spacer()
        }
        .padding(.vertical, 30)
        .padding(.horizontal, 20)
        .foregroundColor(.black)
    }
}

struct FileInformationView_Previews: PreviewProvider {
    static var previews: some View {
        FileInformationView()
    }
}
