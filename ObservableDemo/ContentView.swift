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
                Text("첫번째 View")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("타이머: \(timerData.timerCount)")
                    .padding()
                Button(action: resetCount) {
                    Text("카운터 리셋")
                        .fontWeight(.bold)
                }
                NavigationLink(destination: SecondView(timerData: timerData)) {
                    Text("SecondView로 이동")
                        .fontWeight(.bold)
                }
                .padding()
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
