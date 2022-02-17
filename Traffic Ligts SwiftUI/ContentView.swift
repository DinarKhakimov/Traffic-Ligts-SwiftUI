//
//  ContentView.swift
//  Traffic Ligts SwiftUI
//
//  Created by Dinar Khakimov on 15.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    private let lightIsOn: Double = 1.0
    private let lightIsOff: Double = 0.3
    
    
    @State private var buttomTitle = "Start"
    @State private var redLightState = 0.3
    @State private var yellowLightState = 0.3
    @State private var greenLightState = 0.3
    @State private var currentColorLihgt = CurrentLight.red

    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack(spacing: 20) {
            ColorCircle(color: .red, opacity: redLightState)
            ColorCircle(color: .yellow, opacity: yellowLightState)
            ColorCircle(color: .green, opacity: greenLightState)
                
                Spacer()
                
                ChangeTrafficLightColorButton(title: buttomTitle) {
                    changeColorLight()
                }
            }
        }
    }
    
    private func changeColorLight() {
        if buttomTitle == "Start" {
            buttomTitle = "Next"
        }

        switch currentColorLihgt {
        case .red:
            redLightState = lightIsOn
            greenLightState = lightIsOff
            currentColorLihgt = .yellow
        case .yellow:
            redLightState = lightIsOff
            yellowLightState = lightIsOn
            currentColorLihgt = .green
        case .green:
            greenLightState = lightIsOn
            yellowLightState = lightIsOff
            currentColorLihgt = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    enum CurrentLight {
        case red, yellow, green
    }
}
