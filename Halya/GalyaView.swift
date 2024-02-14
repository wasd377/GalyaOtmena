//
//  GalyaView.swift
//  Halya
//
//  Created by Natalia D on 14.02.2024.
//

import SwiftUI

struct GalyaView: View {
    
    var galya : Player
    
    var body: some View {
        Image("galya")
            .resizable()
            .frame(width: galya.size, height: galya.size)
                .offset(x: CGFloat(galya.currentPosition), y: galya.size/2)
            .padding(.bottom, 50)
            .padding(.top, 100)
    }
}

struct GalyaView_Previews: PreviewProvider {
    static var previews: some View {
        GalyaView(galya: Player())
    }
}
