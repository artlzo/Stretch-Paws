//
//  YogaTimer.swift
//  Stretch+Paws
//
//  Created by Arturo Liranzo on 6/24/22.
//

import Foundation
import AVFoundation

// What kind of data type should this? Should it be a class or a struct?
// WHere does the timer need to be shared?


// Single source of truths


class YogaTimer: ObservableObject {
    
    // Timmer States
    @Published var timerActive = false
    @Published var timerPaused = false
    @Published var timerEnded = false
    @Published var timerDuration = 30
    var audioPlayer: AVAudioPlayer?
    
    var yogaTimer = Timer()
    
    


    // Timer functionalityw
    // Start the timer
    
    func startTimer() {
        // Timer becomes active
        // Remove a second from the timer duration & loop over
        // if the time gest to 0, stop the timer
        
        timerActive = true
        timerPaused = false
        timerEnded = false
        
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
        playSound(sound: "chime", type: "wav")
        
        timerEnded = true
        timerActive = false
        timerDuration = 10
        yogaTimer.invalidate()
    }

    
    // Play a sound
    // timer has ended
    // timer stops being active
    // timer stops running
    // timer duration resets ready for the next time we run it
    
    func playSound(sound: String, type: String) {
        if let path = Bundle.main.path(forResource: sound, ofType: type) {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                audioPlayer?.play()
            } catch {
                print("ERROR")
            }
        }
    }
    

    
    func setTitleText() -> String {
        if timerEnded {
            return "You did it"
        } else {
            return "Hold That Pose"
        }
    }
    
    func setDescriptionText() -> String {
        if timerEnded {
            return "Puurrfect"
        } else {
            return "Try sttaying in this pose for 30 seconds. If youneed to come out sooner, that's ok."
    }
}

}
