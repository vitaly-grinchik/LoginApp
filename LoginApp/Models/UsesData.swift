//
//  UsesData.swift
//  LoginApp
//
//  Created by Виталий Гринчик on 21.12.22.
//

var account = Account(userName: "1", userPassword: "1", isActive: true, recoveryQuestion: "", recoveryAnswer: "", info: person)

var person = Person(name: "Vitaly", surname: "Grinchik", age: 49, contacts: contacts, intro: intro, photoFileName: "GVM", address: address)

var contacts: [ContactType: String] = [.mobilePhone: "+375 33 120-88-06",
                                       .homePhone: "+375 17 212-12-65",
                                       .workPhone: "+375 17 332-76-44",
                                       .privateEmail: "private@email.com",
                                       .workEmail: "work@email.com",
                                       .twitter: "@virtualizer",
                                       .webAddress: "mypage.com"]

var address = Address(state: "Belarus", city: "Minsk", street: "Pobeditelej Ave.", building: "75А", appartment: "100")

var intro = """
If a mutable approach isn’t your thing, then below you’ll find an alternative immutable variant that generates a deck using flatMap and map. Notice how deck is a constant, denoted by a let.

We’ll start by iterating over all suits, then inside each iteration, we’ll iterate over all faces. We’ll use map to return a Card. To prevent ending up with a nested array, we use flatMap to flatten the array.
"""
