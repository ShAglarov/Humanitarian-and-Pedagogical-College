//
//  main.swift
//  preparation for classes
//
//  Created by Shamil Aglarov on 12.05.2022.
//

import Foundation

//структура сохраняет словарь из ключей и их значений

protocol StorageIdentifiable {
    var id: String { get }
    var nameBook: String { get }
}

struct Storage<T: StorageIdentifiable> {
    var elements: [String: T] = [:]
    
    mutating func setElement(_ element: T) {
        elements[element.id] = element
    }
    func getElement(by id: String) -> T? {
        return elements[id]
    }
}

struct Book: StorageIdentifiable {
    var id: String
    var nameBook: String
}

let book = Book(id: "01", nameBook: "Swift Development")
let bookTwo = Book(id: "02", nameBook: "C# Development")
let bookThree = Book(id: "03", nameBook: "Piton Development")

var storage = Storage<Book>()

storage.setElement(bookTwo)

print(storage.getElement(by: "02"))
