//
//  StateAndDataFlow_Lesson3App.swift
//  StateAndDataFlow.Lesson3
//
//  Created by Алексей Гайдуков on 23.09.2022.
//

import SwiftUI

@main
struct StateAndDataFlow_Lesson3App: App {
    @StateObject private var userManager = UserManager()
    var body: some Scene {
        WindowGroup {
            StartedView()
                .environmentObject(UserManager())
        }
    }
}
