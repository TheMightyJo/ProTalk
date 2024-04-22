//
//  ContentView.swift
//  ProTalk
//
//  Created by Apprenant75 on 22/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
                ScrollView (.horizontal) {
                    HStack {
                        ZStack {
                            Image("Shapes")
                            VStack(spacing: 20.0) {
                                Image("Logo_ProTalk_Sans_Fond")
                                Image("profilPictures")
                                Text("Vous ne savez pas comment faire \rpour progresser en anglais ? ")
                                    .font(.title2).bold()
                                    .multilineTextAlignment(.leading)
                                    .foregroundStyle(.color1)
                                Text("C’est également un frein pour \rl’évolution de votre carrière ?")
                                    .font(.title2).bold()
                                    .multilineTextAlignment(.trailing)
                                    .foregroundStyle(.color1)
                                Spacer()
                            }
                        }
                        ZStack {
                            Image("Shapes2")
                                .padding(.top, 200.0)
                            VStack {
                                Image("profilPictures2")
                                Text("Bienvenue sur votre nouvelle \rapplication d’apprentissage \rcollaboratif !")
                                    .font(.title2).bold()
                                    .multilineTextAlignment(.center)
                                    .foregroundStyle(.color1)
                                
                                NavigationLink {
                                    ConnexionView()
                                } label: {
                                    HStack (spacing: 3) {
                                        Text("Connexion")
                                            .fontWeight(.bold)
                                            .font(.system(size: 20))
                                    }
                                    .foregroundStyle(.white)
                                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                                }
                                .background(.color1)
                                .cornerRadius(10)
                                .padding(.top, 24)
                                
                                NavigationLink {
                                    InscriptionView()
                                } label: {
                                    HStack (spacing: 3) {
                                        Text("Pas encore de compte ?")
                                            .fontWeight(.bold)
                                            .font(.system(size: 20))
                                    }
                                    .foregroundStyle(.white)
                                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                                }
                                .background(.color2)
                                .cornerRadius(10)
                                .padding(.top, 24)
                            }
                        }
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
