//
//  ContentView.swift
//  Halya
//
//  Created by Natalia D on 09.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var vm: ViewModel
    @ObservedObject var galya = Player()
    
    var body: some View {
        
        ZStack {
            Text("\(galya.currentPosition)")
                .offset(y: CGFloat(-150))
            ZStack {
                ForEach(galya.positions, id: \.self) { cashier in
                    Image(systemName: "faxmachine")
                        .resizable()
                        .frame(width: vm.cashier.size, height: vm.cashier.size)
                        .offset(x: CGFloat(cashier))
                }
       
            }
            VStack {
                Image(systemName: "person.badge.key")
                    .resizable()
                    .frame(width: galya.size, height: galya.size)
                    .offset(x: CGFloat(galya.currentPosition), y: galya.size/2)
            }
            VStack {
                
                
                HStack {
                    Button {
                        galya.moveLeft()
   
                    }  label: { Image(systemName: "arrowshape.left.fill")
                            .resizable()
                            .frame(width: vm.controller.size, height: vm.controller.size)
                    }
                    Spacer()
                    Button("Выполнить Отмену") {
                        vm.galya.makeCancelation()
                    }
                    .buttonStyle(.borderedProminent)
                    Spacer()
                    Button {
                        galya.moveRight()

                    } label:  { Image(systemName: "arrowshape.right.fill")
                            .resizable()
                            .frame(width: vm.controller.size, height: vm.controller.size)
                    }
                }
                .padding([.trailing, .leading], 40)
                .padding(.top, 250)
            }
        }
        .onAppear {
         //   generateStartingPosition()
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ViewModel())
    }
}
