//
//  protalkinscriptionmentors.swift
//  Exercice23
//
//  Created by Akabtani on 25/01/2024.
//

import SwiftUI

struct Inscription_Mentor_Apprenant: View {
    @State private var clickedApprenant  = false
    @State private var clickedMentors  = false
    var body: some View {
        NavigationStack {
            VStack {
                ProgressView("1/7", value: 14, total: 100)
                    .frame(width: 350)
                    .tint(.color1)
                Spacer()
                Text("Vous êtes :")
                    .foregroundStyle(.black)
                    .font(.title).bold()
                //Boutons
                ZStack {
                    Button(action: {
                        if !clickedApprenant {
                            clickedMentors = false
                            clickedApprenant = true
                        } else {
                            clickedApprenant = false
                        }
                    }, label: {
                        RoundedRectangle(cornerRadius: 20)
                            .fill( clickedApprenant ? .color2 : .color1)
                            .frame(width: 200.0, height: 200.0)
                    })
                    VStack {
                        Text("🎓")
                            .foregroundStyle(.white)
                            .font(.largeTitle)
                        Text("Apprenant(e)")
                            .foregroundStyle(.white)
                            .font(.title)
                    }
                }
                ZStack {
                    Button(action: {
                        if !clickedMentors {
                            clickedApprenant = false
                            clickedMentors = true
                        } else {
                            clickedMentors = false
                        }
                    }, label: {
                        RoundedRectangle(cornerRadius: 20)
                            .fill( clickedMentors ? .color2 : .color1)
                            .frame(width: 200.0, height: 200.0)
                    })
                    VStack {
                        Text("🤝")
                            .foregroundStyle(.white)
                            .font(.largeTitle)
                        
                        Text("Mentor")
                            .foregroundStyle(.white)
                            .font(.title)
                    }
                }
                Spacer()
            }
            NavigationLink {
                Inscription_Activite()
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
        .padding()
    }
}

#Preview {
    Inscription_Mentor_Apprenant()
}
