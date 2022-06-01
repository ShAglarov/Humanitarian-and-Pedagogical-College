//
//  Order.swift
//  preparation for classes
//
//  Created by Shamil Aglarov on 01.06.2022.
//

import Foundation

enum OrderID: Comparable {
    case fourCharactersID(Character, Character, Character, Character)
}
func equals(_ a: OrderID, _ b: OrderID) -> Bool {
    return a == b
}
enum Device {
    case iPhoneX
    case iPhone11
    case iPhone12
    case iPhone13
    case macBookMini
    case macBookPro
}

protocol FindCustomerProtocol {
    func findCustomerBy(status: Status)
    func findCustomerBy(phone: String)
}

protocol PrintCustomersProtocol {
    func printAllCustomersThisOrder()
}

protocol AddCustomerProtocol {
    func addCustomer(customer: Customer)
    func addCustomerByHand()
}

protocol ChangeCustomerStatusProcotol {
    func changeStatusCustomer(byPhoneNumber number: String, toStatus status: Status)
}

protocol inputByHandProtocol {
    func byHand() -> Customer
}

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
}

extension Order: inputByHandProtocol {
        func byHand() -> Customer {
        var customer = Customer(fio: "", age: "", phone: "")
        print("Введите ФИО")
        customer.fio = readLine() ?? ""
        print("Введите ваш возраст")
        customer.age = readLine() ?? ""
        print("Введите номер телефона")
        customer.phone = readLine() ?? ""
        return customer
    }
}

extension Order: FindCustomerProtocol {
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
}

extension Order: PrintCustomersProtocol {
    ///распечатать всех покупателей self заказа
    func printAllCustomersThisOrder() {
        guard let customers = customers else { return }
        for item in 0...customers.count-1 {
            print("ФИО: \(customers[item].fio) ")
            print("Статус заказа \(deviceName) : \(customers[item].status.translate) ")
        }
    }
}

extension Order: AddCustomerProtocol {
    /// метод добавляет информацию о покупателях
    func addCustomer(customer: Customer) {
        guard self.customers != nil else {
            self.customers = []
            self.customers?.append(customer)
            return
        }
        self.customers?.append(customer)
    }
    
    ///Добавить покупателя через консоль
    func addCustomerByHand() {
        let customer = byHand()
        guard self.customers != nil else {
            self.customers = []
            self.customers?.append(customer)
            return
        }
        self.customers?.append(customer)
    }
}

extension Order: ChangeCustomerStatusProcotol {
    // метод меняет статус покупателя (по номеру телефона) ( ждет - отказался - получил)
    func changeStatusCustomer(byPhoneNumber number: String, toStatus status: Status) {
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
