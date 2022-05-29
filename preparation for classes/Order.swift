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
    var customers: [Customer]? // ? - у заказа может не быть покупателя
    
    init(deviceName: Device,
         idNumber: OrderID,
         price: Int)
    {
        self.deviceName = deviceName
        self.idNumber = idNumber
        self.price = price
    }
    
    /// Поиск по статусу покупателя (дублирование кода)
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
                //print("Покупателей \(deviceName) нет")
            }
        })
    }
    /// Поиск по статусу покупателя (дублирование кода)
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
                //print("Покупателей \(deviceName) нет")
            }
        })
    }
    
    ///распечатать всех покупателей self заказа
    func printAllCustomers() {
        guard let customers = customers else { return }
        for item in 0...customers.count-1 {
            print("ФИО: \(customers[item].fio) ")
            print("Статус заказа \(deviceName) : \(customers[item].status.translate) ")
        }
    }
    
    /// метод добавляет информацию о покупателях
    func addCustomer(customer: Customer) {
        guard self.customers != nil else {
            self.customers = []
            self.customers?.append(customer)
            return
        }
        self.customers?.append(customer)
    }
    
    // метод меняет статус покупателя (по номеру телефона) ( ждет - отказался - получил)
    func ChangeCustomerStatus(phone number: String, status: Status) {
        guard let customers = customers else {
            print("Покупателя нет")
            return
        }
        for item in 0...customers.count-1 {
            guard self.customers?[item].phone == number else { continue }
            
            self.customers?[item].status = status
        }
        
    }
}
