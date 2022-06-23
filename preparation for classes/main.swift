//
//  main.swift
//  preparation for classes
//
//  Created by Shamil Aglarov on 12.05.2022.
//

import Foundation

//структура сохраняет словарь из ключей и их значений

struct Storage<T> {
    var elements: [String : T] = [:]
    
    mutating func setElement(_ key: T, for element: String) {
        elements[element] = key
    }
    mutating func getElement(for key: String) -> T? {
        return elements[key]
    }
}

var storage = Storage<Int>()

storage.setElement(1, for: "Книга Усова по Swift")
storage.setElement(2, for: "Книга Усова по C#")
storage.setElement(3, for: "Книга Усова по Piton")

let printElement = storage.getElement(for: "Книга Усова по C#")

print(printElement)
