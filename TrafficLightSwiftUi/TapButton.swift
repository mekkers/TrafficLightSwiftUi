//
//  Button.swift
//  TrafficLightSwiftUi
//
//  Created by igor mekkers on 13.01.2022.
//

import SwiftUI

struct TapButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
        }
        .padding()
        .frame(width: 200, height: 60)
        .background(Color(.blue))
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(Color.white, lineWidth: 4)
        )
    }
}

struct TapButton_Previews: PreviewProvider {
    static var previews: some View {
        TapButton(title: "START", action: {})
    }
}
