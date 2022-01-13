//
//  GreenColorCircle.swift
//  TrafficLightSwiftUi
//
//  Created by igor mekkers on 12.01.2022.
//

import SwiftUI

struct GreenColorCircle: View {
    let color: Color
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct GreenColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        YellowColorCircle(color: .green)
    }
}
