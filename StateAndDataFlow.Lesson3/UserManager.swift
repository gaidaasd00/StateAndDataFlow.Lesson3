//
//  UserManager.swift
//  StateAndDataFlow.Lesson3
//
//  Created by Алексей Гайдуков on 24.09.2022.
//
import Combine
import Foundation

final class UserManager: ObservableObject {
    
    @Published var user = User()
    
    var nameIsValid: Bool {
        user.name.count >= 3
    }
    
    init() {}
    
    init(user: User) {
        self.user = user
    }
}

struct User: Codable {
    var name = ""
    var isRegister = false
}
