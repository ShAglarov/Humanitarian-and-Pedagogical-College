//
//  Avarec.swift
//  preparation for classes
//
//  Created by Shamil Aglarov on 14.05.2022.
//

import Foundation

final class Avarec: Fighter, UseUltimateAbility {
    
    func useUltimateAbility() -> uint32 {
        let totalDamage = strenght * 3 + damageFighter
        print("\(name) впадает в ярость! и бьет 3 жестких три удара, нанеся \(totalDamage) урона ")
        return uint32(totalDamage)
    }
    
    init(name: String) {
        super.init(name: name,
                   classDescription: "Аварец",
                   ultimateAbilityDescription: "Впадает в ярость, нанеся колоссальный урон противнику",
                   strenght: 5,
                   agility: 0,
                   vitality: 5)
    }
}
