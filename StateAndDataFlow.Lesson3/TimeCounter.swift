//
//  TimeCounter.swift
//  StateAndDataFlow.Lesson3
//
//  Created by Алексей Гайдуков on 23.09.2022.
//
import Foundation
import Combine

class TimeCounter: ObservableObject {
    let objectWillChange = PassthroughSubject<TimeCounter, Never>()
    var counter = 3
    var buttomTitle = "Start"
    var timer: Timer?
    
    func startTimer() {
        if counter > 0 {
            
            timer = Timer.scheduledTimer(
                timeInterval: 1,
                target: self,
                selector: #selector(updateCounter),
                userInfo: nil,
                repeats: true
            )
        }
        didTapped()
    }
    @objc private func updateCounter() {
        if counter > 0 {
            counter -= 1
        } else {
            killTimer()
            buttomTitle = "Reset"
        }
        objectWillChange.send(self)
    }
    
    private func didTapped() {
        if buttomTitle == "Reset" {
            counter = 3
            buttomTitle = "Start"
        } else {
            buttomTitle = "Wait..."
        }
        objectWillChange.send(self)
    }
    
    private func killTimer() {
        timer?.invalidate()
        timer = nil
    }
}
