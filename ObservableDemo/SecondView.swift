//
//  SecondView.swift
//  ObservableDemo
//
//  Created by ming on 11/16/26.
//

import SwiftUI

struct SecondView : View {
    
    @StateObject var timerData : TimerData
    var body : some View {
        VStack {
            Text("두번째 View")
                .font(.largeTitle)
                .padding()
            Text("타이머 카운트 = \(timerData.timerCount)")
                .font(.headline)
                .padding()
            Button(action:resetCount) {
                Text("카운트 초기화")
            }
        }
        .padding()
    }
    func resetCount() {
        timerData.resetCount()
    }
}

struct SecondView_Preview: PreviewProvider {
    static var previews: some View {
        SecondView(timerData: TimerData())
    }
}
