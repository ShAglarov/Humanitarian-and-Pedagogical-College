//
//  SelectAuto.swift
//  GPK_College
//
//  Created by Shamil Aglarov on 27.04.2022.
//

import Foundation

///  Марки автомобиля
 enum Mark {
     enum lada {
         case granta
         case vesta
         /// Перевод в текстовый формат
         var toString: String {
             switch self {
             case .granta: return "Гранта"
             case .vesta: return "Веста"
             }
         }
     }
     enum bmw {
         case m5
         var toString: String {
             switch self {
             case .m5: return "M5"
         }
     }
 }
     enum mersedes {
         case brabus
         case cls
         var toString: String {
             switch self {
             case .brabus: return "BRABUS"
             case .cls: return "CLS"
             }
         }
     }
 }

 enum Transmissoin {
     case manual
     case auto

     var toString: String {
         switch self {
         case .auto:
             return "автомат"
         case .manual:
             return "ручная"
         }
     }
 }

 enum StatusDoor {
     case open
     case close

     var toString: String {
         switch self {
         case .close:
             return "закрыты"
         case .open:
             return "открыты"
         }
     }
 }

 enum StatusEnigine {
     case On
     case Off

     var toString: String {
         switch self {
         case .On:
             return "заведен"
         case .Off:
             return "заглушен"
         }
     }
 }

 enum KeyTurn {
     case turnOn
     case turnOff

     var toString: String {
         switch self {
         case .turnOn:
             return "прокручен"
         case .turnOff:
             return "не прокручен"
         }
     }
 }
