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
    
    switch option {
    case "1":
        print("Старт Игры ")
    case "2":
        print("ТУТ ДОЛЖНЫ БЫТЬ ПРАВИЛА ИГРЫ")
    case "3": print("Вы вышли из игры!")
    default:
        printMenu()
    }
}

printMenu()
