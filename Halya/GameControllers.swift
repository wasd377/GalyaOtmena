//
//  GameControllers.swift
//  Halya
//
//  Created by Natalia D on 13.02.2024.
//

import SwiftUI

struct GameControllers: View {
    
    @ObservedObject var galya : Player
    @ObservedObject var controller = GameController()
    
    var body: some View {
         
                HStack {
                    Button {
                        galya.moveLeft()
                        
                    }  label: { Image(systemName: "arrowshape.left.fill")
                            
                            .resizable()
                            .frame(width: controller.size, height: controller.size)
                            .foregroundColor(.blue)
                          
                    }
                    Spacer()
                    Button("Выполнить Отмену") {
                        //  cancelationRequired = false
                    }
                    .buttonStyle(.borderedProminent)
                    Spacer()
                    Button {
                        galya.moveRight()
                        
                    } label:  { Image(systemName: "arrowshape.right.fill")
                            .resizable()
                            .frame(width: controller.size, height: controller.size)
                    }
                }
                .padding(.top, 250)
                
                
            
        
   
    }
}

struct GameControllers_Previews: PreviewProvider {
    
    static var previews: some View {
        GameControllers(galya: Player())
    }
}
