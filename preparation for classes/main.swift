//
//  main.swift
//  preparation for classes
//
//  Created by Shamil Aglarov on 12.05.2022.
//

import Foundation

protocol IsDeadDelegate {
    func bunnyIsDead() -> Bool
}

//кролик
class Bunny {
    
    var _age: Int = 0
    
    var age: Int {
        get {
            return _age
        }
        set {
            _age = newValue
            bunnyIsDead()
        }
    }
    ///средняя продолжительность жизни кролика
    let averageLifeExpectancyBunny = Int.random(in: 7...9)
    
}

//продолжительность жизни кролика
class lifeExpectancyBunny {
    let bunny = Bunny()
    var baxbanny = BaxBunny(yearOfBerth: 2022)
}

class BaxBunny: Bunny {
    let name = "Bux Bunny"
    ///день рождения кролика
    var yearOfBerth: Int = 2022
    
    init(yearOfBerth: Int) {
        self.yearOfBerth = yearOfBerth
    }
}

extension Bunny: IsDeadDelegate {
    ///проверяет не погиб ли кролик?
    func bunnyIsDead() -> Bool {
        if _age >= averageLifeExpectancyBunny {
            return true
        } else {
            return false
        }
    }
}

extension lifeExpectancyBunny {
    var isDeadBunny: IsDeadDelegate? { return bunny }
    
    func historyLifeBaxBanny() {
        
        while baxbanny.bunnyIsDead() == false {
            print("ГОД - \(baxbanny.yearOfBerth)")
            print("Меня зовут \(baxbanny.name), мне \(baxbanny._age) годиков")
            baxbanny.yearOfBerth += 1
            baxbanny.age += 1
            readLine()
        }
        print("\(baxbanny.name) - погиб - в \(baxbanny.yearOfBerth) году,\nон прожил \(baxbanny._age) лет")
    }
}

let bunny = lifeExpectancyBunny()

bunny.historyLifeBaxBanny()
