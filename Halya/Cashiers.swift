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
        VStack {
            Text("\(vm.cashiers.count)")
            Button("add") {
                vm.cashiers.append(Cashier(position: 5, hasCustomer: false, cancelationRequired: false))
            }
            ZStack{
                ForEach(vm.cashiers) { cashier in
                    Image(systemName: "faxmachine")
                    .resizable()
                    .frame(width: CGFloat(cashier.size), height: CGFloat(cashier.size))
                    .offset(x: CGFloat(cashier.position))
                }
            }
        }
    }
}

struct Cashiers_Previews: PreviewProvider {
    static var previews: some View {
        Cashiers()
            .environmentObject(CashierViewViewModel())
    }
}
