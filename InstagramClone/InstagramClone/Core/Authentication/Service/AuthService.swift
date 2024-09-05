//
//  AuthService.swift
//  InstagramClone
//
//  Created by admin on 05.09.2024.
//

import Foundation
import FirebaseAuth

class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    static let shared = AuthService()
    
    init() {
        userSession = Auth.auth().currentUser
    }
    
    func login(email: String, password: String) async throws {
        
    }
    
    func createUser(email: String, password: String, username: String) async throws {
        
    }
    
    func loadUserData() async throws {
        
    }
    
    func singOut() {
        
    }
}
