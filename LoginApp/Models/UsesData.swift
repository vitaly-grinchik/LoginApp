//
//  UsesData.swift
//  LoginApp
//
//  Created by Виталий Гринчик on 21.12.22.
//

let gvmAccount = Account(userName: "vitaly",
                         userPassword: "Swiftbook",
                         isActive: true,
                         recoveryQuestion: "",
                         recoveryAnswer: "",
                         userInfo: gvmPerson)

let gvmPerson = Person(name: "Виталий",
                       surname: "Гринчик",
                       age: 49,
                       contact: contact,
                       intro: intro,
                       photoFileName: "gvm")

let intro =
    """
Кратко о себе...
"""

let contact = Contact(email: "vitaly.grinchik@gmail.com",
                      phone: phoneNumbers, address: address)

let phoneNumbers = [
    PhoneNumber(number: "+375 33 120-88-06", type: .cell),
    PhoneNumber(number: "+375 17 212-12-65", type: .home),
    PhoneNumber(number: "+375 17 332-76-44", type: .work)
]

let address = Address(state: "Беларусь", city: "Минск", street: "Победителей", building: "75А", appartment: "100")
