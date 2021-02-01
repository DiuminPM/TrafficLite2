//
//  ButtonModify.swift
//  TrafficLite2
//
//  Created by DiuminPM on 01.02.2021.
//

import SwiftUI

struct ButtonModify: View {
    let title: String
    let action:() -> Void
    var body: some View {
        Button(title, action: action)
        .font(.title)
        .frame(width: 300, height: 50)
        .background(Color.blue)
        .cornerRadius(20)
        
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.white, lineWidth: 4)
                )
        .foregroundColor(.white)
                    .padding()
                }
    }


struct ButtonModify_Previews: PreviewProvider {
    static var previews: some View {
        ButtonModify(title: "START", action: {})
        
        }
}
