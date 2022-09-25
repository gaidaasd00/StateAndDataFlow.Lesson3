//
//  ButtonView.swift
//  StateAndDataFlow.Lesson3
//
//  Created by Алексей Гайдуков on 25.09.2022.
//

import SwiftUI

struct ButtonsViews: View {
    
    let title: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Some Action", color: .red, action: {})
    }
}
