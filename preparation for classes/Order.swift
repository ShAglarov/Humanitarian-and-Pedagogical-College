//
//  Order.swift
//  preparation for classes
//
//  Created by Shamil Aglarov on 26.05.2022.
//

import Foundation

enum OrderID {
    case fourCharactersID(Character, Character, Character, Character)
}

enum Device {
    case iPhoneX
    case iPhone11
    case iPhone12
    case iPhone13
    case macBookMini
    case macBookPro
}


///Заказ
final class Order {
    
    let deviceName: Device
    let idNumber: OrderID
    let price: Int
    let discountPersent: Int
    var customers: [Customer] = []
    
    init(deviceName: Device,
         idNumber: OrderID,
         price: Int,
         discountPersent: Int,
         customers: [Customer] )
    {
        self.deviceName = deviceName
        self.idNumber = idNumber
        self.price = price
        self.discountPersent = discountPersent
        self.customers = customers
    }
    /// метод доабвляет информацию о покупателях
    func addCustomer(customers: Customer) {
        self.customers.append(customers)
    }
    
    func findCustomerBy(status: Status) {
        print("Поиск по статусу заказа: \(status) ")
        customers.forEach( {
            if $0.status == status {
                print("ФИО: \($0.fio) ")
                print("Статус заказа \(deviceName): \($0.status.translate) ")
                print("-----------------------------------------------------")
            }
        })
    }
}

