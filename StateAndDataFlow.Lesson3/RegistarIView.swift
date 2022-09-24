//
//  RegistarIView.swift
//  StateAndDataFlow.Lesson3
//
//  Created by Алексей Гайдуков on 24.09.2022.
//

import SwiftUI

struct RegistarIView: View {
    @State private var name = ""
    @EnvironmentObject private var user: UserManager
    var body: some View {
        VStack {
            TextField("Enter you name", text: $name)
                .multilineTextAlignment(.center)
            Button(action: registarUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }
        }
    }
    private func registarUser() {
        if !name.isEmpty {
            user.name = name
            user.isRegister.toggle()
        }
    }
}

struct RegistarIView_Previews: PreviewProvider {
    static var previews: some View {
        RegistarIView()
    }
}
