//
//  Restaurant.swift
//  MVVMRxSwift Restaurant
//
//  Created by Omer Rahmanovic on 1/5/21.
//

import Foundation

struct Restaurant: Decodable {
    let name: String
    let cuisine: Cuisine
}

enum Cuisine: String, Decodable {
    case european
    case indian
    case mexican
    case french
    case english
    case american
    case arabian
    case russian
}
