//
//  Inscription_Informations_personnelles.swift
//  ProTalk
//
//  Created by Apprenant75 on 25/01/2024.
//

import SwiftUI

struct Inscription_Informations_personnelles: View {
    
    @State private var prenom: String = ""
    @State private var nom: String = ""
    @State private var adress: String = ""
    @State private var town: String = ""
    @State private var postalCode: String = ""
    @State private var birthDate = Date()
    @State private var isAccept: Bool = true
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("Dites-nous qui vous êtes")
                    .font(.title)
                    .fontWeight(.black)
                
                VStack (spacing: 24) {
                    TextField("Prénom", text: self.$prenom)
                        .padding()
                        .background(.color3)
                        .cornerRadius(20.0)
                    
                    TextField("Nom", text: self.$nom)
                        .padding()
                        .background(.color3)
                        .cornerRadius(20.0)
                    
                    DatePicker("Date de naissance", selection: $birthDate, displayedComponents: .date)
                        .padding()
                        .background(Color.color3)
                        .cornerRadius(20)
                        .autocapitalization(.none)
                    
                    TextField("Adresse", text: self.$adress)
                        .padding()
                        .background(.color3)
                        .cornerRadius(20.0)
                    
                    TextField("Code Postal", text: self.$postalCode)
                        .padding()
                        .background(.color3)
                        .cornerRadius(20.0)
                    
                    TextField("Ville", text: self.$town)
                        .padding()
                        .background(.color3)
                        .cornerRadius(20.0)
                    
                    Toggle("""
Acceptez nos Conditions générales d'utilisation ainsi que le traitement de vos données personnelles
""", isOn: $isAccept)
                    .font(.system(size: 15))
                    NavigationLink {
                        Inscription_Mentor_Apprenant()
                            .toolbarRole(.editor)
                    } label: {
                        HStack (spacing: 3) {
                            Text("CONTINUER")
                                .fontWeight(.bold)
                            Image(systemName: "arrow.right")
                        }
                        .foregroundStyle(.white)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                    }
                    .background(.color1)
                    .cornerRadius(10)
                    .padding(.top, 24)
                }
            }
            .padding()
        }
    }
    
}

#Preview {
    Inscription_Informations_personnelles()
}
