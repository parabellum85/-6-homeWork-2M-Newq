//
//  User.swift
//  #6 homeWork 2M New
//
//  Created by Нурлан on 3/2/23.
//

import Foundation

struct User {
    var name: String
    var surName: String
    var country: Country
    var number: String

    func showInfo(){
        print("\(name),\(surName),\(country.rawValue),\(number)")
    }
    
} 
