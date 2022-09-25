//
//  StartedView.swift
//  StateAndDataFlow.Lesson3
//
//  Created by Алексей Гайдуков on 24.09.2022.
//

import SwiftUI

struct StartedView: View {
    
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        Group {
            if userManager.user.isRegister {
                TimerView()
            } else {
                RegistarIView()
            }
        }
    }
}

struct StartedView_Previews: PreviewProvider {
    static var previews: some View {
        StartedView()
            .environmentObject(UserManager())
    }
}
