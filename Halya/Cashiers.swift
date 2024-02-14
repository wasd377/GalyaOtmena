//
//  Cashiers.swift
//  Halya
//
//  Created by Natalia D on 13.02.2024.
//

import SwiftUI

struct Cashiers: View {
    
    @EnvironmentObject var vm: CashierViewViewModel
    
    var body: some View {
  

            ZStack{
                ForEach(vm.cashiers) { cashier in
                    
                    Image("cashier")
                    .resizable()
                    .frame(width: CGFloat(cashier.size), height: CGFloat(cashier.size))
                    .offset(x: CGFloat(cashier.position), y: 10)
                    Image("galya")
                        .resizable()
                        .frame(width: CGFloat(cashier.size), height: CGFloat(cashier.size))
                        .offset(x: CGFloat(cashier.position+15), y: 10)
                }
            }
            .padding(.top, 50)
        
    }
}

struct Cashiers_Previews: PreviewProvider {
    static var previews: some View {
        Cashiers()
            .environmentObject(CashierViewViewModel())
    }
}
