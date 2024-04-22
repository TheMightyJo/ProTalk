//
//  StrucUsers.swift
//  ProTalk
//
//  Created by Apprenant75 on 01/02/2024.
//

import Foundation

struct User {
    
    var user: String //Image
    
    var name: String
    var lastName: String
    var location:  String
    var description:  String
    var hobbies:  String
    var qualif:  [String]
    var inscriptionDate:  String
    var studentFiles:  [String]
    
    var birthDate: String
    var adress: String
    var zipCode: String
    var city: String
    
    var job: String
    
    
    
    var studentReadPages:  Int
    var studentWordlearn:  Int
    var studentLessonfinish:  Int
    var studentAudioBookfinish:  Int
    var userType: UserType
    
    enum UserType: String {
        case trainer
        case student
        
    }
}
