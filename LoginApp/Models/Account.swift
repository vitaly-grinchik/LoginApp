//
//  Account.swift
//  LoginApp
//
//  Created by Виталий Гринчик on 21.12.22.
//

struct Account {
    let userName: String
    let userPassword: String
    let info: Person
    
    static func getAccount() -> Account {
        let intro = """
Привет!

Меня зовут Виталий.
Живу в Минске, столице Беларуси. По образованию я - инженер конструктор-технолог. Заканчивал Минский радиотехнический факультет. Сейчас он называется БГУИР: Белорусский государственный университет информатики и радиоэлектроники. Нынче это "кузница" беларусских программистов.

Свой первый опыт программирования я приобрёл ещё в школе, когда в ней организовали компьютерный класс с отечественными бытовыми компьютерами - БК-0001. На борту этого "агрегата" был Бейсик, с которым я и начал делать свои первые шаги в програмировании. Тут я написал первую программу - игру "морской бой".

После школы в ВУЗе был Паскаль, с помощью которого я даже смог "отмазаться" от экзамена по жутко неинтересному для меня предмету военной кафедры: взамен зачёта написал комплект программ для тестирования студентов. Попутно, как сейчас называется, был и PET-проект -  игра типа Sokoban.
А потом... я почему-то оставил программирование.

Уже долгое время работаю инженером по ремонту и обслуживанию медицинского оборудования. Но, вдруг, решил попробовать вернуться в программирование, попробовать изменить устоявшийся ритм жизни :)

Почему именно iOS? Крутая компания, классные продукты! И мне кажеться, на вопрос "Чем занимаешься?" круто отвечать: "Я - iOS-разработчик"!

PS: Все контакты реальные 😊
"""
        
        let account = Account(
            userName: "1",
            userPassword: "1",
            info: Person(
                name: "Виталий",
                surname: "Гринчик",
                age: 49,
                contacts:
                    [.mobilePhone: "",
                     .homePhone: "+375 17 235-03-91",
                     .workPhone: "+375 17 368-25-98",
                     .privateEmail: "vitaly.grinchik@email.com",
                     .workEmail: "vitaly.grinchik@email.com",
                     .webAddress: "entrydell.com"
                    ],
                intro: intro,
                photoFileName: "GVM",
                address: Address(
                    state: "Беларусь",
                    city: "Минск",
                    street: "Ул. Высокая",
                    building: "11Д",
                    appartment: "112",
                    mapImageFileName: "MyHome"
                )
            )
        )
        return account
    }
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
