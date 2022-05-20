//
//  Fighter.swift
//  preparation for classes
//
//  Created by Shamil Aglarov on 14.05.2022.
//

import Foundation

//особое умение бойца
protocol UseUltimateAbility {
    func useUltimateAbility() -> uint32
}

class Fighter: UseUltimateAbility {
    
    func useUltimateAbility() -> uint32 {
        fatalError("ЭТО ДОЛЖНО БЫТЬ РЕАЛИЗОВАНО В ДОЧЕРНИХ КЛАССАХ")
    }
    
    
    /// Имя бойца
    var name: String
    
    /// Описание бойца
    var classDescription: String
    
    /// Описание особого умения
    let ultimateAbilityDescription: String
    
    /// Урон бойца
    var damageFighter: uint16 = 0
    
    private var _strenght: uint16 = 0
    
    /// Сила бойца
    var strenght: uint16 {
        get {
            return _strenght
        }
        set {
            _strenght = newValue
            damageFighter = _strenght * 100
        }
    }
    
    /// Шанс увернуться
    var dodgeChance: uint16 = 0 //исправить
    
    private var _agility: uint16 = 0
    ///Ловкость
    var agility: uint16 {
        get {
            return _agility
        }
        set {
            _agility = newValue
            dodgeChance = _agility * 6
        }
    }
    
    /// Статус бойца Погиб/неПогиб
    var isFighterDead: Bool = false
    
    private var _hpFighter: Int16 = 0
    
    /// Количество жизней бойца
    var hpFighter: Int16 {
        get {
            return _hpFighter
        }
        set {
            _hpFighter = newValue
            if _hpFighter <= 0 {
                isFighterDead = true
                _hpFighter = 0
            }
        }
    }
    
    ///живучесть бойца
    var vitality: uint16
    
    ///Описание дефолтных значений для бойца
    init(name: String,
         classDescription: String,
         ultimateAbilityDescription: String,
         strenght: uint16,
         agility: uint16,
         vitality: uint16)
    {
        self.name = name
        self.classDescription = classDescription
        self.ultimateAbilityDescription = ultimateAbilityDescription
        self.vitality = vitality
        self.agility = agility
        self.strenght = strenght
    }
    
    func kick() -> uint16 {
        let totalDamage: uint16 = uint16.random(in: damageFighter-50...damageFighter+50)
        return totalDamage
    }
    
    func fullShowStats() {
        print("""
                        Имя:\(name)          Класс:\(classDescription)
                        Сила:\(strenght)              Ловкость:\(agility)
                        Живучесть:\(vitality)       Урон:\(damageFighter)
                        Шанс увернуться:\(dodgeChance)    HP:\(hpFighter)
                        Умение:\(ultimateAbilityDescription)
                        
                        """)
    }
}

