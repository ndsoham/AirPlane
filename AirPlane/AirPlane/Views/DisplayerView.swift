//
//  DisplayerView.swift
//  AirPlane
//
//  Created by Soham Nagawanshi on 7/22/23.
//

import SwiftUI

struct DisplayerView: View {
    var body: some View {
        Image(systemName: "person").frame(width: 300, height: 300).aspectRatio(contentMode: .fill)
    }
}

struct DisplayerView_Previews: PreviewProvider {
    static var previews: some View {
        DisplayerView()
    }
}
