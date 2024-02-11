//
//  Model.swift
//  Halya
//
//  Created by Natalia D on 11.02.2024.
//

import Foundation
import SwiftUI  

class Player: ObservableObject {
    
    var size = CGFloat(50)
    
    var positions = [-300, -150, 0, 150, 300]
   @Published var currentPosition: Int
    
    func moveLeft() {
        if currentPosition > -300 {
            withAnimation {
                currentPosition -= 150
                print(currentPosition)
            }
        }
    }
    
    func moveRight() {
        if currentPosition < 300 {
            withAnimation {
                currentPosition += 150
                print(currentPosition)
            }
        }
    }
    
    func makeCancelation() {
        // some code
    }

    init() {
        self.currentPosition = positions.randomElement() ?? 0
    }
    
}

class Cashier {
    var size = CGFloat(50)
}

class GameController {
    var size = CGFloat(75)
}
