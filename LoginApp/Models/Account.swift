//
//  Account.swift
//  LoginApp
//
//  Created by Виталий Гринчик on 21.12.22.
//
import Foundation

struct Account {
    let userName: String
    let userPassword: String
    let info: Person
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let contacts: [ContactType: String]
    let intro: String
    let photoFileName: String
    var address: Address
}

struct Address {
    let state: String
    let city: String
    let street: String
    let building: String
    let appartment: String
    let mapImageFileName: String
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
