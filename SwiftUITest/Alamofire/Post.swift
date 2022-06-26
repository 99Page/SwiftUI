//
//  Post.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/06/26.
//

import Foundation

struct Post: Codable, Identifiable {
    var userId: Int
    var id: Int
    var title: String
    var body: String
}

