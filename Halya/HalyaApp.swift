//
//  HalyaApp.swift
//  Halya
//
//  Created by Natalia D on 09.02.2024.
//

import SwiftUI

@main
struct HalyaApp: App {
    var body: some Scene {
        
        var timeRemaining = 480
       var timeRemainingHours = timeRemaining / 60
        var timeRemainingMinutes = timeRemaining % 60
        var cancelationProbability = 0
        
        WindowGroup {
            ContentView()
                .environmentObject(ViewModel(timeRemaining: timeRemaining, timeRemainingHours: timeRemainingHours, timeRemainingMinutes: timeRemainingMinutes, cancelationProbability: cancelationProbability))
        }
       
    }
}
