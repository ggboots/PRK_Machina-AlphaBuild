//
//  PKMachinaImage.swift
//  MapkitTemplate
//
//  Created by ARES on 28/1/2024.
//

import SwiftUI

struct PKMachinaImage: View {
    var body: some View {
        Image("PKMachina")
            .resizable()
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
            .frame(width:250,height:250)
    }
}

#Preview {
    PKMachinaImage()
}
