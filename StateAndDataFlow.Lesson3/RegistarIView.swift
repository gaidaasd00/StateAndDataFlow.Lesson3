//
//  RegistarIView.swift
//  StateAndDataFlow.Lesson3
//
//  Created by Алексей Гайдуков on 24.09.2022.
//

import SwiftUI

struct RegistarIView: View {
    @EnvironmentObject private var user: UserManager

    var body: some View {
        VStack {
            UserNameTF(name: $userManager.user.name, nameIsValid: userManage.nameIsValid)
            Button(action: registarUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }
            .disabled(!userManager.nameIsValid)
        }
        .padding()
    }
    private func registarUser() {
            userManager.user.isRegister.toggle()
            DataManager.shared.save(user: userManager.user)
    }
}

struct RegistarIView_Previews: PreviewProvider {
    static var previews: some View {
        RegistarIView()
    }
}

struct UserNameTF: View {
    @Binding var name: String
    var nameIsValid = false
    
    var body: some View {
        ZStack {
            TextField("Type your name...", text: $name)
                .multilineTextAlignment(.center)
            HStack {
                Spacer()
                Text(name.count.formatted())
                    .font(.callout)
                    .foregroundColor(nameIsValid ? .green : .red)
                    .padding([.top, .trailing])
            }
            .padding(.bottom)
        }
    }
    
}
