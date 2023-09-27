//
//  User.swift
//  SwiftInstagram
//
//  Created by James Sweeney on 9/26/23.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "Rachael", profileImageUrl: "RachProfilePic", fullname: "Rachael Clark", bio: "Mom", email: "test@email.com"),
        .init(id: NSUUID().uuidString, username: "Jim", profileImageUrl: "logo", fullname: "Jim Sweeney", bio: "Dad", email: "test1@email.com"),
        .init(id: NSUUID().uuidString, username: "Emma", profileImageUrl: "RachProfilePic", fullname: "Emma Sweeney", bio: "Oldest Daughter", email: "test2@email.com"),
        .init(id: NSUUID().uuidString, username: "Kate", profileImageUrl: "RachProfilePic", fullname: "Kate Sweeney", bio: "Youngest Daughter", email: "test3@email.com"),
        .init(id: NSUUID().uuidString, username: "Oliver", profileImageUrl: "RachProfilePic", fullname: "Oliver Sweeney", bio: "Fur Baby", email: "test4@email.com")
    ]
}
