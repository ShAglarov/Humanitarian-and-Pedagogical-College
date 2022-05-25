//
//  main.swift
//  preparation for classes
//
//  Created by Shamil Aglarov on 12.05.2022.
//

import Foundation

enum Status: Int {
    case wait = 1
    case canseled = 2
    case took = 3
}

struct User {
    var name: String
    var age: Int
    var phone: String
    
    private var statusRawValue: Int?
    
    var status: Status? {
        get {
            return Status(rawValue: statusRawValue ?? 1)
        }
        set {
            statusRawValue = newValue?.rawValue
        }
    }
    
    init() {
        self.name = ""
        self.age = 0
        self.phone = ""
        self.status = .none
    }
    
    init(name: String, age: Int, phone: String) {
        self.name = name
        self.age = age
        self.phone = phone
        self.status = .wait
    }
}


struct Order {
    let id: String
    let price: Int
    let discountPersent: Int
    var users: [User]
    
    mutating func ptintAboutOrder() {
        print("Номер заказа: \(id)")
        print("Цена товара: \(price)")
        print("Скидка в процентах: \(discountPersent)")
    }
    
    mutating func addUser(name: String, age: Int, phone: String) {
        users.append(User(name: name, age: age, phone: phone ))
    }
    
    func printAllUser() {
        for item in users {
            print(item)
        }
    }
}

var user = User()

var order0101 = Order(id: "01", price: 60000, discountPersent: 15, users: [user])

var order0102 = Order(id: "02", price: 80000, discountPersent: 15, users: [user])

order0101.addUser(name: "Magomed", age: 24, phone: "89882039458")
order0101.addUser(name: "Zaur", age: 24, phone: "89882039458")
order0101.addUser(name: "Djamal", age: 24, phone: "89882039458")

order0102.addUser(name: "Bilal", age: 32, phone: "89283732277")

//print(order0101.printAllUser())
print(order0102.printAllUser())

