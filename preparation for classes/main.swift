
import Foundation

let customers = Customer(fio: "Магомедов Арип Курбанович", age: "36", phone:     "89287653317")
var customersTwo = Customer(fio: "Ильясов Магомед Запирович", age: "32", phone:  "89287654541")
let customersTree = Customer(fio: "Залкепов Рашид Залкепович", age: "21", phone: "89234342535")

//первый заказ iphone 12
let orderOne = Order(deviceName: .iPhone12,
                     idNumber: .fourCharactersID("1", "0", "0", "1"),
                     price: 80000,
                     discountPersent: 15)

//второй заказ iphone 13
let orderTwo = Order(deviceName: .iPhone13,
                     idNumber: .fourCharactersID("1", "0", "0", "1"),
                     price: 80000,
                     discountPersent: 15)

//добавляем покупателя ihone13 во второй заказ
orderTwo.addCustomer(customers: customers)

//ищем покупателей iphone 12
orderOne.findCustomerBy(status: .wait)
print("-----------------------------------------------------")

//ищем покупателей iphone 12
orderTwo.findCustomerBy(status: .wait)


orderTwo.findCustomerBy(status: .took)


orderTwo.findCustomerBy(status: .canseled)

print(orderTwo.customers?.count)
