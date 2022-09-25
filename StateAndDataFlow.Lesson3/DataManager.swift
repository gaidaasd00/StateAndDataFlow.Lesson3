//
//  DataManager.swift
//  StateAndDataFlow.Lesson3
//
//  Created by Алексей Гайдуков on 25.09.2022.
//

import SwiftUI

final class DataManager {
    static let shared = DataManager()
    
    @AppStorage("user") private var userData: Data
    
    private init() {}
    
    func save(user: User) {
        userData = try? JSONDecoder().encode(user)
    }
    
    func fetshUser() -> User {
        guard let user = try? JSONDecoder().decode(User.self, from: userData ?? Data) else {
            return User()
        }
        return user
    }
    func clear(userManager: UserManager) {
        userManager.user.isRegister = false
        userManager.user.name = ""
        userData = nil
    }
}
