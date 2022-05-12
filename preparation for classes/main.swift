//
//  main.swift
//  preparation for classes
//
//  Created by Shamil Aglarov on 12.05.2022.
//

import Foundation

struct User {
    let name: String
    let age: Int
}

///передаем цену и скидку
struct Order {
    let id: String
    let price: Int
    let user: User
    init(
        id: String,
         price: Int,
         discountedPersent: Int,
         user: User
        )
    {
        self.id = id
        self.price = (price * discountedPersent) / 100
        self.user = user
    }
    
    ///передаем цену с учетом скидки
    init(id: String,
         discountedPrice: Int,
         user: User
        )
    {
        self.id = id
        self.price = discountedPrice
        self.user = user
    }
    
    init?(id: String?,
          discountedPrice: Int,
          user: User
        )
    {
        guard let id = id else { return nil }
        
        self.init(id: id,
                  discountedPrice: discountedPrice,
                  user: user
                 )
    }
}

let user = User(name: "Shamil", age: 33)

let anotherOrder = Order(id: nil, discountedPrice: 0, user: user)

print(anotherOrder ?? "it not created")
