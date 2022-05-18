//
//  Tabasaranec.swift
//  preparation for classes
//
//  Created by Shamil Aglarov on 14.05.2022.
//

import Foundation

final class Tabasaranec: Fighter, UseUltimateAbility {
    
    func useUltimateAbility() -> uint32 {
        var totalDamage: uint16 = uint16.random(in: 1...100)
        if totalDamage < 50 {
            totalDamage = (totalDamage * 10) / 2
            print("\(name) не выдержал хамства и нанес противнику \(totalDamage) урона")
        }
        if totalDamage == 50 {
            totalDamage = 0
            print("\(name) пожалел противника, и не стал его бить")
        }
        return uint32(totalDamage)
    }
    init(name: String) {
        super.init(name: name,
                   classDescription: "Табасаранец",
                   ultimateAbilityDescription: "Доброй души человек но, обладает смертельным ударом",
                   strenght: 4,
                   agility: 0,
                   vitality: 4)
    }
}
