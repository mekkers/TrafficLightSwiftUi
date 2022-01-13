//
//  ContentView.swift
//  TrafficLightSwiftUi
//
//  Created by igor mekkers on 12.01.2022.
//

import SwiftUI

enum ChangeLight {
    case red, yellow, green
}
struct ContentView: View {
    
    @State private var buttonTitle = "START"
    @State private var changeLight = ChangeLight.red
    
    private func nextColor() {
        switch changeLight {
        case .red: changeLight = .yellow
        case .yellow: changeLight = .green
        case .green: changeLight = .red
        }
    }
}

extension ContentView {
    var body: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                ColorLight(color: .red, opacity: changeLight == .red ? 1 : 0.3)
                ColorLight(color: .yellow, opacity: changeLight == .yellow ? 1 : 0.3)
                ColorLight(color: .green, opacity: changeLight == .green ? 1 : 0.3)
                
                Spacer()
                
                TapButton(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    nextColor()
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
