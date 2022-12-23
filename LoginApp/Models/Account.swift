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
    var contacts: [ContactType: String]
    let intro: String
    let photoFileName: String
    var address: Address
}

struct Address {
    var state: String
    var city: String
    var street: String
    var building: String
    var appartment: String
    
    var addressString: String {
        "\(appartment)-\(building), \(street)"
    }
}

enum ContactType {
    case mobilePhone
    case homePhone
    case workPhone
    case privateEmail
    case workEmail
    case twitter
    case linkedId
    case facebook
    case webAddress
}
