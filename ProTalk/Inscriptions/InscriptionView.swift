//
//  Inscription_Création_Compte.swift
//  ProTalk
//
//  Created by Apprenant75 on 24/01/2024.
//

import SwiftUI
import Firebase

struct InscriptionView: View {
    
    @State private var email: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                //Image
                Image("Logo_ProTalk_Sans_Fond_2")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 200)
                    .padding(.vertical, 32)
                
                VStack (spacing: 24) {
                    TextField("Email", text: self.$email)
                        .padding()
                        .background(.color3)
                        .cornerRadius(20.0)
                    
                    SecureField("Mot de passe", text: self.$password)
                        .padding()
                        .background(.color3)
                        .cornerRadius(20.0)
                    
                    ZStack (alignment: .trailing) {
                        inscriptionData(text: $confirmPassword, field: "Confirmer le Mot de passe")
                            .background(.color3)
                            .cornerRadius(20.0)
                        if !password.isEmpty && !confirmPassword.isEmpty {
                            if password == confirmPassword {
                                Image(systemName: "checkmark.circle.fill")
                                    .imageScale(.large)
                                    .fontWeight(.bold)
                                    .foregroundStyle(.green)
                            } else {
                                Image(systemName: "xmark.circle.fill")
                                    .imageScale(.large)
                                    .fontWeight(.bold)
                                    .foregroundStyle(.red)
                            }
                        }
                    }
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                NavigationLink {
                    Inscription_Informations_personnelles()
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
                
                Spacer()
                
                NavigationLink {
                    ConnexionView()
                } label: {
                    HStack (spacing: 3) {
                        Text("Déjà un compte ?")
                        Text("Se connecter")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
                    .foregroundStyle(.color1)
                }
            }
        }
    }
}
#Preview {
    InscriptionView()
}


struct inscriptionData: View {
    
    var text : Binding<String>
    var field: String
    var body: some View {
        
        HStack {
            SecureField(field, text: text)
        }  .padding()
            .background(Color.color3)
            .cornerRadius(20)
            .autocapitalization(.none)
    }
}
