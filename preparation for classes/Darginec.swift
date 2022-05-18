//
//  Darginec.swift
//  preparation for classes
//
//  Created by Shamil Aglarov on 14.05.2022.
//

import Foundation

/*
 Задумка: Дагирнец любит деньги, и любит договариваться.
 Для быстрой победы, он готов хорошо заплатить.
 если удача будет на его стороне, то противник мнгновенно
 получит колоссальный урон и "погибнет" (потерпит поражение)
 */

final class Darginec: Fighter, UseUltimateAbility {
    
    func useUltimateAbility() -> uint32 {
        
        var fighBought: uint32
        
        let attemptToOfferMoney = uint16.random(in: 0...30001)
        
        if attemptToOfferMoney < 1000 && attemptToOfferMoney > 500 {
            fighBought = 1000
        } else if attemptToOfferMoney >= 17000 {
            fighBought = 1000
            print("\(name) предложил  деньги и противник слил бой упав в фейковый накаут")
        } else {
            fighBought = 0
            print("Попытка подкупить не прошла, \(name) не нанес никакого урона")
        }
        return fighBought
    }
    init(name: String) {
        super.init(name: name,
                   classDescription: "Даргинец",
                   ultimateAbilityDescription: "Имеет секретное оружие, но использует очень редко!",
                   strenght: 4,
                   agility: 1,
                   vitality: 4)
    }
}
