//
//  Model.swift
//  Halya
//
//  Created by Natalia D on 11.02.2024.
//

import Foundation
import SwiftUI

class InitialSettings {
    var positions = [-150, 0, 150]
}

class Player: ObservableObject {
        
    var initialSettings = InitialSettings()
    var size = CGFloat(50)
    
   @Published var currentPosition: Int
    
    func moveLeft() {
        if currentPosition > initialSettings.positions.first! {
            withAnimation {
                currentPosition -= 150
                print(currentPosition)
            }
        }
    }
    
    func moveRight() {
        if currentPosition < initialSettings.positions.last! {
            withAnimation {
                currentPosition += 150
                print(currentPosition)
            }
        }
    }
    

    init() {
        self.currentPosition = InitialSettings().positions.randomElement()!
    }
    
}

class Cashier: ObservableObject, Identifiable {

    var position: Int
    var size = CGFloat(50)
    var hasCustomer : Bool
    var cancelationRequired : Bool
    
    init(position: Int, hasCustomer: Bool, cancelationRequired: Bool) {
        self.position = position
        self.hasCustomer = false
        self.cancelationRequired = false
    }

}

class Customer: ObservableObject, Identifiable {
    
    var id: Int
    var position: Int
    var distance: Int
    var size = CGFloat(50)
    
    init(id: Int, position: Int, distance: Int) {
        self.id = id
        self.position = InitialSettings().positions.randomElement()!+Int(self.size)
        self.distance = -distance
    }
}

class GameController: ObservableObject {
    var size = CGFloat(75)
}
