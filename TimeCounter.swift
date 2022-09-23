//
//  TimeCounter.swift
//  StateAndDataFlow.Lesson3
//
//  Created by Алексей Гайдуков on 23.09.2022.
//

import Foundation

class TimeCounter {
    var counter = 3
    var timer: Timer?
    
     func startTimer() {
        timer = Timer.scheduledTimer(
            timeInterval: 1,
            target: self,
            selector: #selector(updateCounter),
            userInfo: nil,
            repeats: true
        )
    }
    @objc private func updateCounter() {
        if counter > 0 {
            counter -= 1
        } else {
            killTimer()
        }
    }
    private func killTimer() {
        timer?.invalidate()
        timer = nil
    }
}
