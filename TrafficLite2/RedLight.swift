//
//  RedLight.swift
//  TrafficLite2
//
//  Created by DiuminPM on 30.01.2021.
//

import SwiftUI

struct RedLight: View {
    var alphaRed = 0.3
    
    var body: some View {
        Color(.init(displayP3Red: 1, green: 0, blue: 0, alpha: CGFloat(alphaRed)))
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
            .padding()
    }
    
}

struct RedLight_Previews: PreviewProvider {
    static var previews: some View {
        RedLight()
    }
}
