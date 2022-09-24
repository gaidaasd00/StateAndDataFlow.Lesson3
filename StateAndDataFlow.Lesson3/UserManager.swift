//
//  UserManager.swift
//  StateAndDataFlow.Lesson3
//
//  Created by Алексей Гайдуков on 24.09.2022.
//

import Foundation

class UserManager: ObservableObject {
    @Published var isRegister = false
    var name = "" 
}
