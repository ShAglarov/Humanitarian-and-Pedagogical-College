//
//  main.swift
//  preparation for classes
//
//  Created by Shamil Aglarov on 12.05.2022.
//

import Foundation

/// функция для добавления нового заказа
func addNewProduct(device: Device, id: OrderID,  price: Int) -> Order {
    let order = Order(deviceName: device, idNumber: id, price: price)
    return order
}

/// печатаем всех покупателей из всех заказов
func printAllCustomers(orders: [PrintCustomersProtocol]) {
    for order in orders {
        order.printAllCustomersThisOrder()
    }
}

/// функция которая добавляет покупателя в конкретный заказ который равен номеру заказа: OrderID
func addCustomerByOrderID(customer: Customer, orders: [Order]?, id: OrderID) {
    guard let orders = orders else { return }
    for item in 0..<orders.count {
        if equals(orders[item].idNumber, id) {
            orders[item].addCustomer(customer: customer)
        } else {
            
        }
    }
}

var orders: [Order] = []

orders.append(addNewProduct(device: .iPhoneX,
                            id: .fourCharactersID("0", "0", "0", "1"),
                            price: 40000))

orders.append(addNewProduct(device: .iPhone11,
                            id: .fourCharactersID("0", "0", "0", "2"),
                            price: 40000))

orders.append(addNewProduct(device: .iPhone12,
                            id: .fourCharactersID("0", "0", "0", "3"),
                            price: 40000))

orders.append(addNewProduct(device: .iPhone13,
                            id: .fourCharactersID("0", "0", "0", "4"),
                            price: 40000))


addCustomerByOrderID(customer: Customer(fio: "Магомедов Р.К", age: "25", phone: "89288654312"),
                     orders: orders, id: .fourCharactersID("0", "0", "0", "4"))

addCustomerByOrderID(customer: Customer(fio: "Мурадов Т.М", age: "41", phone: "89287365524"),
                     orders: orders, id: .fourCharactersID("0", "0", "0", "2"))

printAllCustomers(orders: orders)
