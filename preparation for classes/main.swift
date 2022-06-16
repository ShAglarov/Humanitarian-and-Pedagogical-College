//
//  main.swift
//  preparation for classes
//
//  Created by Shamil Aglarov on 12.05.2022.
//

import Foundation

protocol UsersProtocol {
    var name: String { get set }
    var age: Int { get set }
    
    var delegat: RecordHistoryDelegate? { get set }
    
    func sendMessage(name: String, text: String)
    
    init(name: String, age: Int, delegate: RecordHistoryDelegate?)
}
class User: UsersProtocol {
    
    var name: String
    var age: Int
    
    var delegat: RecordHistoryDelegate?
    
    func sendMessage(name: String, text: String) {
        delegat?.saveMessage(name: name, text: text)
        print("отправлено по адресату: \(name)")
    }
    
    required init(name: String, age: Int, delegate: RecordHistoryDelegate?) {
        self.name = name
        self.age = age
        self.delegat = delegate
    }
}

protocol RecordHistoryDelegate {
    var entryHistory: [String] { get set }
    func saveMessage(name: String, text: String)
}

class RecordMessageHistory: RecordHistoryDelegate {
    var entryHistory: [String] = []
    
    func saveMessage(name: String, text: String) {
        entryHistory.append(name)
        entryHistory.append(text)
    }
}

let recordingDevice = RecordMessageHistory()

let user = User(name: "Ильясов Магомед", age: 21, delegate: recordingDevice)
let userTwo = User(name: "Нуралиев Ислам", age: 17, delegate: recordingDevice)

user.sendMessage(name: userTwo.name, text: "Салам Алейкум")
userTwo.sendMessage(name: user.name, text: "Ваалейкум Салам")
user.sendMessage(name: userTwo.name, text: "Что делаешь?")
userTwo.sendMessage(name: user.name, text: "Сижу дома, собираюсь спать")

//print(user.delegat?.entryHistory)
print(userTwo.delegat?.entryHistory)
