//
//  ViewModel.swift
//  Halya
//
//  Created by Natalia D on 11.02.2024.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var galya = Player()
    @Published var cashier = Cashier()
    @Published var controller = GameController()
    
    
}
