//
//  main.swift
//  GPK_College
//
//  Created by Shamil Aglarov on 27.04.2022.
//

import Foundation

var sportCar = SportCar(mark: Mark.lada.vesta.toString,
                    transmission: Transmissoin.auto,
                    year: "2021",
                    probeg: "30000",
                    maxSpeed: 350,
                    statusDoor: StatusDoor.close,
                    enigineStatus: StatusEnigine.Off,
                    powerEnigine: 600,
                    key: KeyTurn.turnOff)

 sportCar.printAboutSportCar()

 sportCar.key = KeyTurn.turnOn

 sportCar.printAboutSportCar()
