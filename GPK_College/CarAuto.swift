//
//  CarAuto.swift
//  GPK_College
//
//  Created by Shamil Aglarov on 27.04.2022.
//

import Foundation

struct SportCar {
     let mark: String
     let transmission: Transmissoin
     let year: String
     let probeg: String
     let maxSpeed: UInt
     let statusDoor: StatusDoor
     var enigineStatus: StatusEnigine
     let powerEnigine: UInt
     var key: KeyTurn {
         willSet (newValue) {
             if newValue == KeyTurn.turnOn {
                 enigineStatus = StatusEnigine.On
             } else {
                 enigineStatus = StatusEnigine.Off
             }
         }
     }
     func printAboutSportCar() {
         print("""
               Марка   : \(mark)
               Год     : \(year)
               Пробег  : \(probeg)
               Скорость: \(maxSpeed)
               Двери   : \(statusDoor.toString)
               Коробка : \(transmission.toString)
               Мощность: \(powerEnigine)
               Мотор   : \(enigineStatus.toString)
               Ключ    : \(key.toString)
               """)
     }
 }
