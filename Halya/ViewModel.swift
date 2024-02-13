//
//  ViewModel.swift
//  Halya
//
//  Created by Natalia D on 11.02.2024.
//

import Foundation

class ViewModel: ObservableObject {
    
    
    @Published var timeRemaining : Int
    @Published var timeRemainingHours : Int
    @Published var timeRemainingMinutes : Int

    @Published var cancelationProbability : Int

    func rollCancelation() {
        cancelationProbability = Int.random(in: 1..<10)
    }
    
    
    func countDown() {
        if timeRemaining > 0 {
            timeRemaining -= 1
        }
        print(timeRemaining)
    }
    
    init(timeRemaining: Int, timeRemainingHours: Int, timeRemainingMinutes: Int, cancelationProbability: Int) {
        self.timeRemaining = 480
        self.timeRemainingHours = timeRemaining / 60
        self.timeRemainingMinutes = timeRemaining % 60
     
        self.cancelationProbability = 0
    }
    
}
