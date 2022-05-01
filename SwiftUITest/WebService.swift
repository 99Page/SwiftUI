//
//  WebService.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/04/18.
//


//    "userId": 1,
//    "id": 1,
//    "title": "delectus aut autem",
//    "completed": false
import Foundation

struct Todo: Codable, Identifiable{
    var userId: Int?
    var id: Int?
    var title: String?
    var completed: Bool?
}

class WebService {
    // https://jsonplaceholder.typicode.com/todos/
    
    func getTodos(completion: @escaping ([Todo]) -> Void) {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos/") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            
            guard let hasData = data else {
                return
            }
            
            let todos = try! JSONDecoder().decode([Todo].self, from: hasData)
            
            completion(todos)
        }.resume()
    }
    
}
