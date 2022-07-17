//
//  Auth.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/07/15.
//

import Combine
import Foundation
import Alamofire

struct Account: Codable {
    var userName: String
    var password: String
    static let `default` = Account(userName: "", password: "")
}

class JWTViewModel: ObservableObject {
    
    @Published var account = Account.default
    
    func uploadPost() {
        let url = "https://jsonplaceholder.typicode.com/posts"
        let param: [String: Any] = [
            "userId" : account.userName,
            "id" : account.password,
        ]
        
        AF.request(url, method: .post, parameters: param, encoding: JSONEncoding.default)
            .responseDecodable(of: Account.self) { response in
                print("POST DEBUG : \(response)")
            }
    }
}
