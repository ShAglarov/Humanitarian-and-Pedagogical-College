//
//  main.swift
//  preparation for classes
//
//  Created by Shamil Aglarov on 12.05.2022.
//

import Foundation

func printMenu() {
    print("""
          ИГРА БОЙЦОВСКИЙ КЛУБ
          
          1 - начать игру
          2 - правила
          3 - выход
          """)
    
    let option = readLine() ?? "nil"
    
    let fighter: Fighter = Fighter(name: "Magomed", classDescription: "Avarec", ultimateAbilityDescription: "Проход в ноги", strenght: 6, agility: 0, vitality: 3)
    
    switch option {
    case "1":
        print("Старт Игры ")
    case "2":
        print("ПРАВИЛА ИГРЫ")
        fighter.fullShowStats()
    case "3": print("Вы вышли из игры!")
    default:
        printMenu()
    }
}

printMenu()
