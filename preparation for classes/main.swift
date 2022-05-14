//
//  main.swift
//  preparation for classes
//
//  Created by Shamil Aglarov on 12.05.2022.
//

import Foundation

enum Gender {
    case male
    case female
    
    var description: String {
        switch self {
        case .male: return "male"
        case .female: return "female"
        }
    }
    var shortDesctiption: String {
        switch self {
        case .male:
                return "m"
        case .female:
                return "f"
        }
    }
}

class User {
    var name: String
    let age: Int
    let phone: String
    let gender: Gender
    
    init(name: String,
         age: Int,
         phone: String,
         gender: Gender)
    {
        self.name = name
        self.age = age
        self.phone = phone
        self.gender = gender
    }
}

let user = User(name: "Shamil", age: 33, phone: "89882322233", gender: .male)

let userTwo = user




