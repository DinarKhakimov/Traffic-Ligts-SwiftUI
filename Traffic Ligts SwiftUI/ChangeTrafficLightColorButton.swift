//
//  ChangeTrafficLightColor.swift
//  Traffic Ligts SwiftUI
//
//  Created by Dinar Khakimov on 16.02.2022.
//

import SwiftUI

struct ChangeTrafficLightColorButton: View {
    let title: String
    let action: () -> Void
    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.white)
                .font(.title)
                .fontWeight(.bold)
        }
        .padding()
        .frame(width: 150, height: 70)
        .background(.blue)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 4))
    }
    
}

struct ChangeTrafficLightColor_Previews: PreviewProvider {
    static var previews: some View {
        ChangeTrafficLightColorButton(title: "Hello", action: {})
    }
}
