//
//  CustomersViewViewModel.swift
//  Halya
//
//  Created by Natalia D on 13.02.2024.
//

import Foundation

class CustomersViewViewModel: ObservableObject {
    var customers : [Customer]
    
    init() {
        customers = [Customer(id: 1, position: 300, distance: 200)]
    }
}
