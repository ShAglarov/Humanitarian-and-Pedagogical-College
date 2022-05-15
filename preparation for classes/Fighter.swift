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

class Fighter {
    
    /// Имя бойца
    var name: String
    
    /// Описание бойца
    var classDescription: String
    
    /// Описание особого умения
    let ultimateAbilityDescription: String
    
    /// Урон бойца
    var damageFighter: uint16 = 0
    
    /// Сила бойца
    var strenght: uint16
    
    /// Шанс увернуться
    var dodgeChance: uint16 = 0 //исправить
    
    ///ловкость
    var agility: uint16
    
    /// Статус бойца Погиб/неПогиб
    var isFighterDead: Bool = false
    
    /// Количество жизней бойца
    var hpFighter: Int16 = 0 // исправить
    
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

