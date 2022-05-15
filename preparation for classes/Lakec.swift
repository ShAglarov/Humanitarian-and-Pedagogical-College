//
//  Lakec.swift
//  preparation for classes
//
//  Created by Shamil Aglarov on 15.05.2022.
//

import Foundation

class Lakec: Fighter, UseUltimateAbility {
    func useUltimateAbility() -> uint32 {
        let chance = uint8.random(in: 1...100)
        if chance <= 25 {
            let totalDamage = damageFighter * 3
            print("\(name) подлетел и совершил тройной удар, нанеся \(totalDamage) урона.")
            return uint32(totalDamage)
        }
        print("\(name) промахивается и бьет очень слабо, нанеся \(strenght * 3) урона!")
        return uint32(strenght * 3)
    }
    init(name: String) {
        super.init(name: name,
                   classDescription: "Лакец",
                   ultimateAbilityDescription: "Обладает невероятной ловкостью, может масстерски уходить от ударов противника",
                   strenght: 3,
                   agility: 0,
                   vitality: 3)
    }
}
