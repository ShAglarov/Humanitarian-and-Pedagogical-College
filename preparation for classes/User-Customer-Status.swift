//
//  User-Customer-Status.swift
//  preparation for classes
//
//  Created by Shamil Aglarov on 01.06.2022.
//

import Foundation

enum Status {
    case wait
    case canseled
    case took
    var translate: String {
        switch self {
        case .wait:
            return "Ожидает доставки"
        case .canseled:
            return "Отменил заказ"
        case .took:
            return "Забрал заказ"
        }
    }
}

// покупатель (статус waite является default)
struct Customer {

    var fio: String
    var age: String
    var phone: String
    var status: Status
    // var idCustomer: String
    
    
    init(fio: String, age: String, phone: String) {
        self.fio = fio
        self.age = age
        self.phone = phone
        self.status = .wait
        // self.idCustomer = fio.components(separatedBy: " ").
    }
}
