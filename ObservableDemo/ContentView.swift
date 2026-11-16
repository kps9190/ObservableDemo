//
//  ContentView.swift
//  ObservableDemo
//
//  Created by ming on 11/16/26.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var timerData: TimerData = TimerData()
    
    var body: some View {
        
            NavigationView {
            VStack {
                Text("타이머 = \(timerData.timerCount)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                Button(action: resetCount) {
                    Text("카운터 리셋")
                }
            }
        }
    }
    func resetCount() {
        timerData.resetCount()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
