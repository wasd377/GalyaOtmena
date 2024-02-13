//
//  CashierView-ViewModel.swift
//  Halya
//
//  Created by Natalia D on 13.02.2024.
//

import Foundation

class CashierViewViewModel: ObservableObject {
    
    var initialSettings = InitialSettings()
    
    var cashiers : [Cashier] = []
    
    init() {
        for position in initialSettings.positions {
            cashiers.append(Cashier(position: position, hasCustomer: false, cancelationRequired: false))
        }
    }
}
