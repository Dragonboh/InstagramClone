//
//  User.swift
//  InstagramClone
//
//  Created by admin on 19.08.2024.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
}


extension User {
    static var MOCK_USERS = [
        User(id: UUID().uuidString, username: "dragon-1", profileImageUrl: "dragon-1", fullname: "Bogdan Pankevych 1", bio: "Sowtware Developer 1", email: "bp@gmail.com"),
        User(id: UUID().uuidString, username: "dragon-2", profileImageUrl: "dragon-2", fullname: "Bogdan Pankevych 2", bio: "Sowtware Developer 2", email: "bp@gmail.com"),
        User(id: UUID().uuidString, username: "dragon-3", profileImageUrl: "dragon-3", fullname: "Bogdan Pankevych 3", bio: "Sowtware Developer 3", email: "bp@gmail.com"),
        User(id: UUID().uuidString, username: "dragon-4", profileImageUrl: "dragon-4", fullname: "Bogdan Pankevych 4", bio: "Sowtware Developer 4", email: "bp@gmail.com"),
        User(id: UUID().uuidString, username: "dragon-5", profileImageUrl: "dragon-5", fullname: "Bogdan Pankevych 5", bio: "Sowtware Developer 5", email: "bp@gmail.com")
    ]
    
    static var MOCK_ONE_USER =  User(id: UUID().uuidString, username: "dragon-1", profileImageUrl: "dragon-1", fullname: "Bogdan Pankevych", bio: "Sowtware Developer", email: "bp@gmail.com")
}
