//
//  DataBase.swift
//  #6 homeWork 2M New
//
//  Created by Нурлан on 3/2/23.
//

import Foundation

class DataBase{
        var users: [User] = []
    
        func addUser(user: User) {
            users.append(user)
        }
    
        func printAllUsers() {
            for user in users {
                print("\(user.name) \(user.surName) - \(user.country.rawValue)\(user.number)")
            }
        }
    
        func printUsersByCountry(code: Country) {
            for user in users where user.country == code {
                print("\(user.name) \(user.surName) - \(user.country.rawValue)\(user.number)")
            }
        }
    }
    
//    let database = DataBase()
//    
//    while true {
//        print("Enter user first name:")
//        let firstName = readLine()!
//    
//        print("Enter user last name:")
//        let lastName = readLine()!
//    
//        print("Enter user country name:")
//        let country = readLine()!
//    
//        var code: CountryCode!
//        switch country {
//        case "USA":
//            code = .USA
//        case "RUS":
//            code = .RUS
//        case "KAZ":
//            code = .KAZ
//        default:
//            code = .USA
//        }
//    
//        print("Enter user phone number:")
//        let phoneNumber = readLine()!
//    
//        let user = User(firstName: firstName, lastName: lastName, phoneNumber: phoneNumber, code: code)
//        database.addUser(user: user)
//        print("User succesfully added to database.")
//        database.printAllUsers()
//    
//    print("Enter 'yes' if you want to add another user or anything else to exit:")
//        let answer = readLine()!
//        if answer != "yes" {
//            print("Stopped the program.")
//            break
//        }
//    }
//
//    database.printAllUsers()
