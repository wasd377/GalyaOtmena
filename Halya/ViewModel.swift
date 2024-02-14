//
//  ViewModel.swift
//  Halya
//
//  Created by Natalia D on 11.02.2024.
//

import Foundation

class ViewModel: ObservableObject {
    
    


    @Published var cancelationProbability : Int = 0

    func rollCancelation() {
        cancelationProbability = Int.random(in: 1..<10)
    }
    
    
//    func countDown() {
//        if timeRemaining > 0 {
//            timeRemaining -= 1
//        }
//        print(timeRemaining)
//    }

}
