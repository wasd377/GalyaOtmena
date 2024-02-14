//
//  StartScreenView.swift
//  Halya
//
//  Created by Natalia D on 14.02.2024.
//

import SwiftUI

struct StartScreenView: View {
    
    
    
    @State var gameScreen: Int = 1
    
    var body: some View {
        NavigationView{
            
            if gameScreen == 1 {
                ZStack {
                    Image("startscreen")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                    
                    VStack(alignment: .center) {
                        
                        Button("Новая игра") {
                            gameScreen = 2
                        }
                        .buttonStyle(.borderedProminent)
                        
                        Button("Таблица рекордов") {
                            gameScreen = 3
                        }
                        .buttonStyle(.borderedProminent)
                    }
                    .padding(.top, 200)
                    
                }
                
            } else if gameScreen == 2 {
                ContentView()
                
            } else if gameScreen == 3 {
                TestView()
            }
        }
        
    
             
    }
}

struct StartScreenView_Previews: PreviewProvider {
    static var previews: some View {
        StartScreenView()
            .environmentObject(ViewModel())
            .environmentObject(CashierViewViewModel())
    }
}
