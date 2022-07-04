//
//  Todo.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/06/25.
//

import Foundation

struct Todo: Identifiable, Codable {
    var userId: Int
    var id: Int
    var header: String
    var completed: Bool
    
    private enum CodingKeys: String, CodingKey {
        case userId = "userId"
        case id = "id"
        case header = "title"
        case completed = "completed"
    }
    
    static let `default` = Todo(userId: 0, id: 0, header: "", completed: false)
}

struct Todos: Codable {
    var results: [Todo]
}
