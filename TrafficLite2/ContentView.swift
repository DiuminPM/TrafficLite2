//
//  ContentView.swift
//  TrafficLite2
//
//  Created by DiuminPM on 30.01.2021.
//

import SwiftUI

struct TrafficLite: View {
    
    enum EnumTrufficLight {
        case red, yellow, green
    }
    @State private var titleButton = "START"
    @State private var alfaRed = 0.3
    @State private var alfaYellow = 0.3
    @State private var alfaGreen = 0.3
    @State private var enumLight: EnumTrufficLight = .red
    
        var body: some View {
            VStack {
                RedLight(alphaRed: alfaRed)
                YellowLight(alphaYellow: alfaYellow)
                GreenLight(alphaGreen: alfaGreen)
                Spacer()
                ButtonModify(title: titleButton, action: switched )
            }
                .padding(.top, 80 )
                .padding(.bottom, 40)
                
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .background(Color.black)
                .ignoresSafeArea()
    
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLite()
    }
}



extension TrafficLite {
    func switched() {
        titleButton = "NEXT"
        switch (enumLight) {
        case .red:
            alfaGreen = 0.3
            alfaRed = 1
            enumLight = .yellow
        case .yellow:
            alfaRed = 0.3
            alfaYellow = 1
            enumLight = .green
        case .green:
            alfaYellow = 0.3
            alfaGreen = 1
            enumLight = .red
        }
    }
}
