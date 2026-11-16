//
//  TimerData.swift
//  ObservableDemo
//
//  Created by ming on 11/16/26.
//

import Foundation
import Combine

class TimerData : ObservableObject {
    
    @Published var timerCount = 0
    var timer : Timer?
    
//    실행코드
    init() {
        timer = Timer.scheduledTimer(timeInterval: 1.0,
                                     target: self,
                                     selector: #selector(timerDidFire),
                                     userInfo: nil,
                                     repeats: true)
    }
    
    @objc func timerDidFire() {
        timerCount += 1
    }
    
//    타이머 초기화
    func resetCount() {
        timerCount = 0
    }
}
