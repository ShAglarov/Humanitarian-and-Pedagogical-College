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
    var customers: [Customer]?
    
    init(deviceName: Device,
         idNumber: OrderID,
         price: Int,
         discountPersent: Int)
    {
        self.deviceName = deviceName
        self.idNumber = idNumber
        self.price = price
        self.discountPersent = discountPersent
    }
    /// метод доабвляет информацию о покупателях
    func addCustomer(customers: Customer) {
        self.customers = []
        self.customers?.append(customers)
    }
    /// Поиск по статусу покупателя
    func findCustomerBy(status: Status) {
        print("Поиск по статусу заказа: \(status.translate) ")
        guard let customers = customers else {
            print("Покупателей \(deviceName) нет")
            return
        }
        customers.forEach( {
            if $0.status == status {
                print("ФИО: \($0.fio) ")
                print("Статус заказа \(deviceName): \($0.status.translate) ")
                print("-----------------------------------------------------")
            } else {
                print("Покупателей \(deviceName) нет")
            }
        })
    }
    /// Поиск по статусу покупателя
    func findCustomerBy(phone: String) {
        print("Поиск по номеру телефона покупателя:")
        guard let customers = customers else {
            print("Покупателей \(deviceName) нет")
            return
        }
        customers.forEach( {
            if $0.phone == phone {
                print("ФИО: \($0.fio) ")
                print("Статус заказа \(deviceName): \($0.phone) ")
                print("-----------------------------------------------------")
            } else {
                print("Покупателей \(deviceName) нет")
            }
        })
    }
}

