//
//  Customers.swift
//  Halya
//
//  Created by Natalia D on 13.02.2024.
//

import SwiftUI

struct Customers: View {
    
    @EnvironmentObject var vm: CustomersViewViewModel
    
    func newCustomer()
    {
        vm.customers.append(Customer(id:vm.customers.count+1, position: 300, distance: 100))
        
    }
    
    var body: some View {
        
        ZStack{
            Text("\(vm.customers.count)")
            ForEach(vm.customers) { customer in
                Image(systemName: "basket")
                    .resizable()
                    .frame(width: CGFloat(customer.size), height: CGFloat(customer.size))
                    .offset(x: CGFloat(customer.position), y: CGFloat(customer.distance))
            }
            Button("Add new") {
                newCustomer()
            }
        }
        .onAppear {
            
        }
        
    }
}

struct Customers_Previews: PreviewProvider {
    static var previews: some View {
        Customers()
            .environmentObject(CustomersViewViewModel())
    }
}
