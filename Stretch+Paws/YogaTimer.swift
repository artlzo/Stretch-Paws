//
//  YogaTimer.swift
//  Stretch+Paws
//
//  Created by Arturo Liranzo on 6/24/22.
//

import Foundation

// What kind of data type should this? Should it be a class or a struct?
// WHere does the timer need to be shared?


// Single source of truths


class YogaTimer {
    
    // Timmer States
    
    var timerActive = false
    var timerPaused = false
    var timerEnded = false
    var timerDuration = 30
    var yogaTimer = Timer()
    
    
    

    // Timer functionalityw
    // Start the timer
    
    func startTimer() {
        // Timer becomes active
        // Remove a second from the timer duration & loop over
        // if the time gest to 0, stop the timer
        
        timerActive = true
        
        yogaTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { Timer in
            
            self.timerDuration -= 1
            // Remove a second from the timer duration & loop over
            
            if self.timerDuration == 0 {
                self.stopTimer()
            }
        })
        
    }

    // Pause the timer
    
    func pauseTimer() {
    // timer stops being active
    // timer becomes pause
    
        
        
        
        timerActive = false
        timerPaused = true
        
        // timer stops running
        yogaTimer.invalidate()
        
    }
    
    
    // End the timer
    
    func stopTimer() {
        
        timerEnded = true
        timerActive = false
        timerDuration = 30
        yogaTimer.invalidate()
    }

    
    // Play a sound
    // timer has ended
    // timer stops being active
    // timer stops running
    // timer duration resets ready for the next time we run it
    
    
    func playSound() {
        //play audio file
    }
    
    
    // Countdown ?
    
}

