
import Foundation

var orderIphone12 = Order(deviceName: .iPhone12,
                          idNumber: .fourCharactersID("0", "0", "0", "1"),
                          price: 150000)

var customerOne = Customer(fio: "Магомедов Исрафил Магомедович", age: "24", phone: "89882888474")

var customerTwo = customerOne
var customerThree = customerTwo
var customerFour = customerThree
customerTwo.fio = "Залкепов Курбан Сулейманович"
customerThree.fio = "Рауфов Закир Курбанович"
customerFour.fio = "Алиев Мурад Исрапилович"



orderIphone12.addCustomer(customer: customerOne)
orderIphone12.addCustomer(customer: customerTwo)
orderIphone12.addCustomer(customer: customerThree)
orderIphone12.addCustomer(customer: customerFour)


orderIphone12.customers?[2].status = .took
orderIphone12.customers?[2].phone = "89882088886"

//orderIphone12.findAndChangeCustomerStatus(byPhone: "89882988885", on: .took)

orderIphone12.ChangeCustomerStatus(phone: "89882888474", status: .canseled)

orderIphone12.printAllCustomers()






//Алиеву Мураду доставили iphone12
//orderIphone12.customers?[3].status = .took

//orderIphone12.printAllCustomers()


//var customers = Customer(fio: "Магомедов Арип Курбанович", age: "36", phone:     "89287653317")
//
//var customersTwo = Customer(fio: "Ильясов Магомед Запирович", age: "32", phone:  "89287654541")
//var customersTree = Customer(fio: "Залкепов Рашид Залкепович", age: "21", phone: "89234342535")
//
//customersTwo.status = .took
//customers.status = .canseled


////первый заказ iphone 12
//let orderOne = Order(deviceName: .iPhone12,
//                     idNumber: .fourCharactersID("1", "0", "0", "1"),
//                     price: 80000,
//                     discountPersent: 15)
//
////второй заказ iphone 13
//let orderTwo = Order(deviceName: .iPhone13,
//                     idNumber: .fourCharactersID("1", "0", "0", "1"),
//                     price: 80000,
//                     discountPersent: 15)


//добавить покупателя в ручную, через консоль
func ByHand() -> Customer {
    var customer = Customer(fio: "", age: "", phone: "")
    print("Введите ФИО")
    customer.fio = readLine()!
    print("Введите ваш возраст")
    customer.age = readLine()!
    print("Введите номер телефона")
    customer.phone = readLine()!
    return customer
}

////добавляем покупателя с консоли
//orderTwo.addCustomer(customer: ByHand())

//добавляем покупателя ihone13 во второй заказ
//orderTwo.addCustomer(customer: customers)


//orderTwo.addCustomer(customer: customersTwo)
//orderTwo.addCustomer(customer: customersTree)

//orderTwo.printAllCustomers()
//print("------------------------------------------------")

//orderTwo.printAllCustomers()

//var text: String = "Aglarov Shamil Ramazanovich"

//разделяю фио и выделяю первый элемент Фамилии, имени и отчества.
//let textArrayTwo = text.components(separatedBy: " ").map { $0 }[0].enumerated().map { $0 }[0].element

//print(text.enumerated().map { $0})

