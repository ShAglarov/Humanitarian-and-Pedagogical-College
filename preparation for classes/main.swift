//
//  main.swift
//  GPC_ISIP-2
//
//  Created by Shamil Aglarov on 15.05.2022.
//

import Foundation

enum Devices {
    case iPhone_X
    case iPhone_12
    case macBookPro_16
}

enum Status: Int {
    case wait = 1
    case canseled = 2
    case took = 3
    
    var translate: String {
        switch self {
        case .wait:
            return "Ожидает заказа"
        case .canseled:
            return "Отменил заказ"
        case .took:
            return "Забрал заказ"
        }
    }
}

//MARK: - Create Class User

class Customer {
    var fio: String
    var age: Int
    var phone: String
    
    var statusRowValue: Int?
    
    var status: Status? {
        get {
            return Status(rawValue: statusRowValue ?? 1)
        }
        set {
            statusRowValue = newValue?.rawValue
        }
    }
    
    init(fio: String,
         age: Int,
         phone: String,
         status: Status)
    {
        self.fio = fio
        self.age = age
        self.phone = phone
        self.status = status
    }
}

//MARK: - create class SellerUser

class SellerUser: Customer {
    let rating: Double
    let reviewsCount: Int
    
    init(fio: String,
         age: Int,
         phone: String,
         status: Status,
         rating: Double,
         reviewsCount: Int)
    {
        self.rating = rating
        self.reviewsCount = reviewsCount
        super.init(fio: fio, age: age, phone: phone, status: status)
    }
}

//MARK: - create struct Order

class Order {
    let id: String
    let price: Int
    let discountPersent: Int
    var users: [Customer] = []
    var device: Devices
    
    init(id: String,
         price: Int,
         discountPercent: Int,
         device: Devices)
    {
        self.id = id
        self.price = price
        self.discountPersent = discountPercent
        self.device = device
    }
    
    ///метод который добавляет информацию о девайсах
    
    ///метод который добавляет информацию о покупателях _ Способ - 1
    func addCustomer(fioUser user: Customer) {
        self.users.append(user)
    }
    ///метод который добавляет информацию о покупателях _ Способ - 2
    func addCustomerTwo(fioUser fio: String,
                              age: Int,
                              phone: String,
                              status: Status)
    {
        users.append(Customer(fio: fio,
                          age: age,
                          phone: phone,
                          status: status))
    }
    
    func printAboutCustomer() {
        guard users.count != 0 else {
            print("\(device) - покупателей нет")
            print("----------------------------------------------------")
            return
        }
        for item in 0...users.count-1 {
            print("ФИО: \(users[item].fio)\nВозраст: \(users[item].age) лет.\nНомер телефона: \(users[item].phone)\nСтатус заказа \(device): \(users[item].status?.translate ?? "Нет информации о статусе заказа")")
            print("----------------------------------------------------")
        }
    }
    
    func findCustomerBy(status: Status) {
        print("Поиск по статусу заказа: (\(status))")
            users.forEach( {
            if $0.status == .wait {
                                     print("ФИО: \($0.fio)\nСтатус заказа \(device): \($0.status?.translate ?? "Нет информации о статусе заказа")")
                                     print("----------------------------------------------------")
                                 } } )
    }
}

//девайсы
let iPhone12 = Order(id: "001", price: 70000, discountPercent: 15, device: .iPhone_12)
let macBookPro = Order(id: "002", price: 150000, discountPercent: 10, device: .macBookPro_16)
let iPhoneX = Order(id: "002", price: 150000, discountPercent: 10, device: .iPhone_X)

//покупатели
let danilovRK = Customer(fio: "Danilov R K", age: 18, phone: "892323", status: .wait)
let morozovVA = Customer(fio: "Morozov V A", age: 35, phone: "2342342", status: .took)
let zaurovGR = Customer(fio: "Zaurov G R", age: 25, phone: "89883882211", status: .wait)
let magomedovMG = Customer(fio: "Magomedov M G", age: 36, phone: "8988332444", status: .canseled)

// добавляем покупателей
iPhone12.addCustomer(fioUser: danilovRK)
iPhone12.addCustomer(fioUser: magomedovMG)
iPhone12.addCustomerTwo(fioUser: "Nuraliev A M", age: 18, phone: "3242342", status: .took)
iPhone12.addCustomerTwo(fioUser: "Aliev K M", age: 17, phone: "234234", status: .canseled)
iPhone12.addCustomerTwo(fioUser: "Muradov M R", age: 18, phone: "3242342", status: .took)
macBookPro.addCustomer(fioUser: zaurovGR)


///массив девайсов
var devices = [iPhone12, macBookPro, iPhoneX]

for item in devices {
    print(item.findCustomerBy(status: .wait))
}
