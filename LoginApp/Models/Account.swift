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
    
    let isActive: Bool
    let recoveryQuestion: String
    let recoveryAnswer: String
    
    let userInfo: Person
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let contact: Contact
    let intro: String
    let photoURL: URL
}

struct Contact {
    let email: String
    let phone: [PhoneNumber]
    let address: Address
}

struct PhoneNumber {
    let number: String
    let type: PhoneType
}

struct Address {
    let state: String
    let city: String
    let street: String
    let building: String
    let appartment: String
}

enum PhoneType {
    case cell
    case home
    case work
}
