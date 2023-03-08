//
//  Profile.swift
//  Jamshoe
//
//  Created by Артур Олехно on 18/05/2021.
//

import Foundation

struct Profile {
    var name: String
    var surname : String
    var phoneNumber : String
    var email : String
    var birthDate = Date()
    var genderEmoji = Gender.male

    
    
    static let `default` = Profile(name: "Arthur", surname: "Olehno",phoneNumber: "24957458", email: "nosens@gmail.com")
    
    enum Gender: String, CaseIterable, Identifiable {
        case male = "🧔🏻‍♂️"
        case female = "👱🏻‍♀️"
        
        var id: String {self.rawValue}
    }
    
    
    
    
    
}
