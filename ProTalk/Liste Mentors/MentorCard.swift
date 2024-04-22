//
//  MentorCard.swift
//  ProTalk
//
//  Created by Apprenant75 on 01/02/2024.
//

import SwiftUI

//Structure pour le modèle de profil Mentors
struct MentorCard: Identifiable, Hashable {
    var id: UUID = .init()
    var langue: String
    var image: String
}

//Variables des différents mentors (en forme de liste)
var mentorCards : [MentorCard] = [
    .init(langue: "🇬🇧", image: "JohnDoe"),
    .init(langue: "🇬🇧", image: "JaneDoe"),
]
