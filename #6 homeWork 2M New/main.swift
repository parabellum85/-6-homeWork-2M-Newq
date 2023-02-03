//
//  main.swift
//  #6 homeWork 2M New
//
//  Created by Нурлан on 3/2/23.
//

import Foundation

//Домашнее задание №6.

//Создать структуру User c параметрами имя, фамилия, номер телефона. Создать enum из стран с кодами телефонов. Добавить параметр code в  структуру User. Создать класс DataBase с параметром массив юзеров и функций распечатки информации всех юзеров, функий распечатки только по определенной стране. В main cделать так, чтобы пользователь вводил все данные через ридлайн. Введенные данные должны записаться в массив в классе DataBase. Для телефона сделать 2 ридлайна, один для указывания страны по названию, другой для ввода номера. В общей информации номер телефона должен распечатываться в таком виде: “+996777777777”. Запрос для ввода данных сделать несколько раз циклом, чтобы можно было ввести разные данные.



let database = DataBase()

while true {
    print("Enter user first name:")
    let firstName = readLine()!

    print("Enter user last name:")
    let lastName = readLine()!

    print("Enter user country name:")
    let country = readLine()!

    var code: Country!
    switch country {
    case "USA":
        code = .USA
    case "RUS":
        code = .Kyrgyzstan
    case "KAZ":
        code = .Kazakhstan
    default:
        code = .USA
    }

    print("Enter user phone number:")
    let phoneNumber = readLine()!

    let user = User(name: "sdf", surName: "sfd", country: code, number: phoneNumber)
    database.addUser(user: user)
    print("User succesfully added to database.")
    database.printAllUsers()

print("Enter 'yes' if you want to add another user or anything else to exit:")
    let answer = readLine()!
    if answer != "yes" {
        print("Stopped the program.")
        break
    }
}

database.printAllUsers()
