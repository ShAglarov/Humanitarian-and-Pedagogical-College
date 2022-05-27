//
//  User-Customer-Status.swift
//  preparation for classes
//
//  Created by Shamil Aglarov on 26.05.2022.
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


struct Customer {
    
    var fio: String
    var age: String
    let phone: String
    var status: Status
    
    init(fio: String, age: String, phone: String) {
        self.fio = fio
        self.age = age
        self.phone = phone
        self.status = .wait
    }
}


