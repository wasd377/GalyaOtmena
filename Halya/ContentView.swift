//
//  ContentView.swift
//  Halya
//
//  Created by Natalia D on 09.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var vm : ViewModel
 
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    @State var timeRemaining = 480
    @State var cancelationRequired = false
    
    @ObservedObject var galya = Player()
    @ObservedObject var controller = GameController()
    
    var body: some View {
        
        var timeRemainingHours = timeRemaining / 60
        var timeRemainingMinutes = timeRemaining % 60
        
        ZStack {
            Image("floor")
                .resizable()
                .ignoresSafeArea()
            Group {
                GameInformationView(galya: galya, timeRemaining: timeRemaining, cancelationProbability: 0)
                  
            }
         
        //   Customers()          
            Cashiers()
            GameControllers(galya: galya)
            GalyaView(galya: galya)
                
            
        }
        .onReceive(timer) {_ in 
            vm.rollCancelation()
            countDown()
         //   cancelationCheck()
            }
            
        }
    
    func countDown() {
        if timeRemaining > 0 {
            timeRemaining -= 1
        }
    }
    
//    func cancelationCheck() {
//        if vm.cancelationProbability == 5 {
//            ZStack {
//                Text("Галя, у нас отмена!!!")
//                    .padding()
//                    .overlay(
//                        RoundedRectangle(cornerRadius: 16)
//                            .stroke(.blue, lineWidth: 4)
//                    )
//                    .offset(x: CGFloat(1.75 * cashier.size), y: CGFloat(-cashier.size))
//            }
//        }
//    }
    }


struct ContentView_Previews: PreviewProvider {
    
    static var timeRemaining = 480
    static var timeRemainingHours = timeRemaining / 60
    static var timeRemainingMinutes = timeRemaining % 60
    static var cancelationProbability = 0
    
    static var previews: some View {
        ContentView()
            .environmentObject(ViewModel())
            .environmentObject(CashierViewViewModel())
    }
}
