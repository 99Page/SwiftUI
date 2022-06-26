//
//  WebService.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/06/25.
//

import Foundation
import Alamofire

// https://jsonplaceholder.typicode.com/todos/1

class TodoViewModel: ObservableObject {
    
    @Published var todo = [Todo]()
    
    init() {
        fetchTodos()
    }
    
    func fetchTodos() {
        let url = "https://jsonplaceholder.typicode.com/todos"
        AF.request(url, method: .get)
            .responseDecodable(of: [Todo].self) { data in
                guard let data = data.value else { return }
                self.todo = data
            }
    }
    
    func uploadPost() {
        let url = "https://jsonplaceholder.typicode.com/posts"
    
        let param: [String: Any] = [
            "userId" : 1000,
            "id" : 1000,
            "title" : "title",
            "body" : "body"
        ]
        
        AF.request(url, method: .post, parameters: param, encoding: JSONEncoding.default)
            .responseDecodable(of: Post.self) { response in
                print("POST DEBUG : \(response)")
            }
    }
}
