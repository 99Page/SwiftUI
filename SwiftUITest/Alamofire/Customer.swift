//
//  Customer.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/06/26.
//

import Foundation

struct CustomerResponse: Codable {
    var customer: Customer
}

struct Customer: Codable, Identifiable {
    var id: String
    var name: String
    var phone: String
    var address: Address
}

struct Address: Codable {
    var street: String
    var city: String
    var state: String 
}
