//
//  Message.swift
//  ProTalk
//
//  Created by Apprenant75 on 30/01/2024.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
