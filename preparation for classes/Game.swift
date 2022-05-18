//
//  Game.swift
//  preparation for classes
//
//  Created by Shamil Aglarov on 18.05.2022.
//

import Foundation

enum FightState {
    case NextRound
    case StopRound
}

final class Game {
    private var fightState: FightState
    
    private var fighter: Fighter?
    
    private var playerOne: Fighter?
    private var playerTwo: Fighter?
    
    var win = ""
    var round = 1
    
    init() {
        fightState = .NextRound
    }
    
    func createFighter() -> Fighter {
        print("НАЗОВИТЕ СВОЕГО БОЙЦА")
        
        guard let nameFighter = readLine() else { return createFighter() }
        guard nameFighter != "" else { return createFighter() }
        
        ///создаем выбранного бойца
        switch selectFighter() {
        case "1":
            fighter = Avarec(name: nameFighter)
        case "2":
            fighter = Darginec(name: nameFighter)
        case "3":
            fighter = Lakec(name: nameFighter)
        case "4":
            fighter = Tabasaranec(name: nameFighter)
        default:
            print("Вы не выбрали ни одного бойца, начните игру заного!")
            break
        }
        var points: uint16 = 6
        
        while points > 0 {
            points -= 1
            fighter?.fullShowStats()
            print("Распределите очки умений среди характеристик персонажа 1 + Сила, 2 + Ловкость, 3 + живучесть")
            
            let inputPoints = readLine()
            switch inputPoints {
            case "1":
                fighter?.strenght += 1
            case "2":
                fighter?.agility += 1
            case "3":
                fighter?.vitality += 1
            default:
                points += 1
            }
        }
        return fighter ?? Avarec(name: "nil")
    }
    
    
    private func selectFighter() -> String {
        var fighterType: String
        print("""
              Выберите класс бойца:
              1: Avarec
              2: Darginec
              3: Lakec
              4: Tabasaranec
              """)
        fighterType = readLine() ?? ""
        guard fighterType != "" else { return selectFighter() }
        return fighterType
    }
    
    func startGame() {
        print("Игрок 1 создает бойца")
        playerOne = createFighter()
        print("Игрок 2 создает бойца")
        playerTwo = createFighter()
        
        startFight()
    }
    
    func startFight() {
        while fightState == .NextRound {
            print("------------------------------")
            
        }
    }
    
    func calculateDamage(agressor: Fighter, victim: Fighter) {
        if agressor.isFighterDead {
            win = victim.name
        }
    }
}
