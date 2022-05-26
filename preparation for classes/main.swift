
import Foundation

let customers = Customer(fio: "Магомедов Арип Курбанович", age: "36", phone:     "89287653317")
let customersTwo = Customer(fio: "Ильясов Магомед Запирович", age: "32", phone:  "89287654541")
let customersTree = Customer(fio: "Залкепов Рашид Залкепович", age: "21", phone: "89234342535")

let orderOne = Order(deviceName: .iPhone12,
                     idNumber: .fourCharactersID("1", "0", "0", "1"),
                     price: 80000,
                     discountPersent: 15,
                     customers: [customers])
//второй заказ
let orderTwo = Order(deviceName: .iPhone13,
                     idNumber: .fourCharactersID("1", "0", "0", "1"),
                     price: 80000,
                     discountPersent: 15,
                     customers: [customers])

//добавляем покупателя во второй заказ
orderTwo.addCustomer(customers: customersTwo)


orderOne.addCustomer(customers: customersTwo)
orderOne.addCustomer(customers: customersTree)

customersTwo.status = .took

//orderOne.findCustomerBy(status: .took)

orderTwo.findCustomerBy(status: .took)


//orderOne.customers.forEach( { print("\($0.fio) - \($0.status.translate)") })
