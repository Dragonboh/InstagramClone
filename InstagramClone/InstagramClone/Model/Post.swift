//
//  Post.swift
//  InstagramClone
//
//  Created by admin on 20.08.2024.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let userId: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: UUID().uuidString,
              userId: UUID().uuidString,
              caption: "This is test caption for now.",
              likes: 123,
              imageUrl: "dragon-1",
              timestamp: Date(),
              user: User.MOCK_USERS[0]
             ),
        .init(id: UUID().uuidString,
              userId: UUID().uuidString,
              caption: "This is test caption for now. This is test caption for now.",
              likes: 104,
              imageUrl: "dragon-4",
              timestamp: Date(),
              user: User.MOCK_USERS[3]
             ),
        .init(id: UUID().uuidString,
              userId: UUID().uuidString,
              caption: "This is test caption for now. This is test caption for now. This is test caption for now. This is test caption for now. This is test caption for now.",
              likes: 54,
              imageUrl: "dragon-3",
              timestamp: Date(),
              user: User.MOCK_USERS[2]
             ),
        .init(id: UUID().uuidString,
              userId: UUID().uuidString,
              caption: "This is test caption for now",
              likes: 5,
              imageUrl: "dragon-1",
              timestamp: Date(),
              user: User.MOCK_USERS[0]
             ),
        .init(id: UUID().uuidString,
              userId: UUID().uuidString,
              caption: "This is test caption for now",
              likes: 24,
              imageUrl: "dragon-5",
              timestamp: Date(),
              user: User.MOCK_USERS[4])
        
    ]
}
