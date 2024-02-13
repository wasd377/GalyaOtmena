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
  //  @ObservedObject var cashier = Cashier(position: 0)
    
    var body: some View {
        
        var timeRemainingHours = timeRemaining / 60
        var timeRemainingMinutes = timeRemaining % 60
        
        ZStack {
            Group {
                timeRemaining == 480 ? Text("Время до конца смены: 8:00") : Text("Время до конца смены: \(timeRemainingHours):\(timeRemainingMinutes)")
            }
                .position(x: 0, y: 0)
                .padding(.top, 50)
                .padding(.leading, 100)
            Text("\(galya.currentPosition)")
                .offset(y: CGFloat(-150))
            Text("\(vm.cancelationProbability)")
                .offset(x: 100, y:CGFloat(-150))
            
           Cashiers()
           Customers()
           GameControllers(galya: galya)
        }
        .border(.green)
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
            .environmentObject(ViewModel(timeRemaining: timeRemaining, timeRemainingHours: timeRemainingHours, timeRemainingMinutes: timeRemainingMinutes, cancelationProbability: cancelationProbability))
            .environmentObject(CashierViewViewModel())
    }
}
