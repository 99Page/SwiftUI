//
//  ScenePhase.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/07/20.
//

import SwiftUI

struct BackgroundTimer: View {
    
    @Environment(\.scenePhase) var scenePhase
    @State private var timeRemaining: Double = 4*60
    @State private var startTime = Date.now
    
    var body: some View {
        Text(getTimeString(time:timeRemaining))
            .onChange(of: scenePhase) { newValue in
                switch newValue {
                case .active:
                    bgTimer()
                case .inactive:
                    print(".inactive")
                case .background:
                    print("Background")
                default:
                    print("scenePhase err")
                }
            }
            .onAppear {
                Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { Timer in
                    if self.timeRemaining > 0 {
                        self.timeRemaining -= 1
                    } else {
                        Timer.invalidate()
                    }
                })
               
            }
        
    }
    
    func getTimeString(time: Double) -> String {
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format: "%02i:%02i", minutes, seconds)
    }
    
    func bgTimer() {
        let curTime = Date.now
        let diffTime = curTime.distance(to: startTime)
        let result = Double(diffTime.formatted())!
        timeRemaining = 4*60 + result
        
        if timeRemaining < 0 {
            timeRemaining = 0
        }
    }
}

//struct ScenePhase_Previews: PreviewProvider {
//    static var previews: some View {
//        BackgroundTimer()
//    }
//}
