//
//  Account.swift
//  LoginApp
//
//  Created by Виталий Гринчик on 21.12.22.
//
import Foundation

struct Account {
    var userName: String
    var userPassword: String
    
    var isActive: Bool
    var recoveryQuestion: String
    var recoveryAnswer: String
    
    var info: Person
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    var contacts: [Contact]
    let intro: String
    let photoFileName: String
    var address: Address
}

struct Contact {
    var type: ContactType
    var contact: String
}

struct Address {
    var state: String
    var city: String
    var street: String
    var building: String
    var appartment: String
}

enum ContactType {
    case cellPhone
    case homePhone
    case workPhone
    case privateEmail
    case workEmail
    case social
    case webAddress
}
