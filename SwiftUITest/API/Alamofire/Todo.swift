//
//  Todo.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/06/25.
//

import Foundation
import Alamofire

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

struct JsonData: Codable {
    var date: Date
    var title: String
    var week: String
}

class JsonDataModel: ObservableObject {
    @Published var data = [JsonData]()
    
    init() {
        fetchData()
    }
    
    func fetchData() {
        let url = "???"
        AF.request(url, method: .get)
            .responseDecodable(of: [JsonData].self) { data in
                guard let data = data.value else { return }
                self.data = data
            }
    }
}
