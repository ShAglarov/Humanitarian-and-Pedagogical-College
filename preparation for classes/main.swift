//
//  main.swift
//  preparation for classes
//
//  Created by Shamil Aglarov on 12.05.2022.
//

import Foundation

 enum Status {
     case sold
     case booked
     case notSold
     var toString: String {
         switch self {
         case .sold:
             return "продан"
         case .booked:
             return "забронирован"
         case .notSold:
             return "не продан"
         }
     }
 }

 class testGetSet {

     private var _storeValue: Int

     var storeValue: Int {
         get {
             return _storeValue
         }
     }

     init(storeValue: Int) {
         self._storeValue = storeValue
     }
 }

 struct testDidSet {
     var status: Status {
         didSet {
             sendNotification(oldStatus: oldValue, newStatus: status)
         }
     }

     func sendNotification(oldStatus: Status, newStatus: Status) {
         print("Статус заказа ранее был \(oldStatus.toString)")
         print("Сейчас статус заказа \(newStatus.toString)")
     }
 }

 struct testDidSetTwo {
     var status: Status {
         willSet {
             oldValueSet(prevStatus: newValue)
         }
         didSet {
             newValueSet(prevStatus: oldValue)
         }
     }

         func oldValueSet(prevStatus: Status) {
             print("Статус заказа ранее был \(status.toString)")
         }
     func newValueSet(prevStatus: Status) {
         print("Статус заказа сейчас \(status.toString)")
     }
 }

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


let testGet: testGetSet = testGetSet(storeValue: 5)
var testDid: testDidSet = testDidSet(status: .notSold)

testDid.status = .sold
testDid.status = .booked
