//
//  main.swift
//  preparation for classes
//
//  Created by Shamil Aglarov on 12.05.2022.
//

import Foundation

protocol elevatorDelegate {
    func cookOrder(_ order: String)
}

//оффициант
class Waiter {
    ///заказ
    var order: String?
    // принять заказ
    func takeOrder() {
        print("Что вы будете Сэр!")
        let clientOrdersFood = readLine()
        guard let clientOrdersFood = clientOrdersFood else { return }
        print("Вы заказали \(clientOrdersFood) - ваш заказ принят.")
        order = clientOrdersFood
    }
}

//повар
class Cook {
    
    func cookFood(_ order: String) {
        print("Повар: - я получил заказ - \(order)")
        print("Повар: - \(order) - готова!")
    }
}

extension Cook: elevatorDelegate {
    func cookOrder(_ order: String) {
        cookFood(order)
    }
}

extension Waiter {
    var elevator: elevatorDelegate? {
        return cook
    }
}

let waiter = Waiter()

let cook = Cook()

waiter.takeOrder()

waiter.elevator?.cookOrder(waiter.order!)
