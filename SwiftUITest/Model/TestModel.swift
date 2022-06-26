//
//  TestModel.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/06/09.
//

import SwiftUI

struct TestModel: Identifiable {
    var id = UUID().uuidString
    var data: String
}

struct TestModelEvent: Identifiable, Equatable {
    var id = UUID().uuidString
    var data: String

    var models: [TestModel]
    
    static func == (lhs: TestModelEvent, rhs: TestModelEvent) -> Bool {
        return lhs.id == rhs.id
    }
}
