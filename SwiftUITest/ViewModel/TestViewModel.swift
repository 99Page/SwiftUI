//
//  TestViewModel.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/06/07.
//

import SwiftUI

class TestViewModel: ObservableObject {
    @Published var value = [1, 3, 5]
    
    func increment(_ number: inout Int) {
        number += 1
    }
}
