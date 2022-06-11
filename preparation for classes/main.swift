//
//  main.swift
//  preparation for classes
//
//  Created by Shamil Aglarov on 12.05.2022.
//

import Foundation

enum NameComand {
    case anji
    case liverpool
    case lakomativ
}

class User: Comparable, Equatable, CustomStringConvertible {
    
    let name: String
    let nameComand: NameComand
    let numberOfGoalsScored: Int
    
    var description: String {
        return "Футболист  \(name):"
    }
    
    static func < (lhs: User, rhs: User) -> Bool {
        return (lhs.numberOfGoalsScored < rhs.numberOfGoalsScored)
    }
    
    static func == (lhs: User, rhs: User) -> Bool {
       return (lhs.nameComand == rhs.nameComand)
    }
    
    init(name: String, nameComand: NameComand, _ numberOfGoalsScored: Int) {
        self.name = name
        self.nameComand = nameComand
        self.numberOfGoalsScored = numberOfGoalsScored
    }
}

let userOne = User(name: "Бажаев Мухаммад", nameComand: .anji, 4)
let userTwo = User(name: "Даудов Мухаммадхаджи", nameComand: .anji, 3)

let userThree = User(name: "Уткин Вячеслав", nameComand: .lakomativ, 1)
let userFour = User(name: "Галкин Максим", nameComand: .lakomativ, 0)

let userFive = User(name: "Robert Paul", nameComand: .liverpool, 6)
let userSix = User(name: "Don Sanchez", nameComand: .liverpool, 4)


if userOne == userTwo {
    print("\(userOne) и \(userTwo) из одной команды")
} else {
    print("\(userOne) и \(userTwo) не из одной команды")
}

if userOne < userTwo{
    print("\(userOne) забил меньше чем \(userTwo)")
} else {
    print("\(userOne) забил больше чем \(userTwo)")
}
