//
//  GameInformationView.swift
//  Halya
//
//  Created by Natalia D on 14.02.2024.
//

import SwiftUI

struct GameInformationView: View {
    
    var galya: Player
    var timeRemaining: Int
    var cancelationProbability: Int
    
    var body: some View {
        
        var timeRemainingHours = timeRemaining / 60
        var timeRemainingMinutes = timeRemaining % 60
        HStack {
             Text("До конца смены:")
                timeRemaining == 480 ? Text("8:00") : Text("\(timeRemainingHours):\(timeRemainingMinutes)")
            
            Text("Cancelation: \(cancelationProbability)")
               // .offset(x: 100, y:CGFloat(-150))
                .frame(maxWidth: .infinity)
            Text("Отмены вовремя:")
            Text("Отменя с задержкой:")
        }
        
        .padding()
        .background(RoundedRectangle(cornerRadius: 10)
            .fill(.white)
            )
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(.black, lineWidth: 2)
        )
        //.position(x: 0, y:25)
        .padding(.top, -150)
     //   .padding(.leading, 100)
    }
}

struct GameInformationView_Previews: PreviewProvider {
    static var previews: some View {
        GameInformationView(galya: Player(), timeRemaining: 480, cancelationProbability: 5)
    }
}
