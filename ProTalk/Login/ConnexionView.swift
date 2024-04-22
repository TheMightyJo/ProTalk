//
//  protalklamia.swift
//  Exercice23
//
//  Created by Akabtani on 23/01/2024.
//

import SwiftUI
import Firebase

struct ConnexionView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        NavigationStack {
            VStack {
                Image("Logo_ProTalk_Sans_Fond_2")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 200)
                    .padding(.vertical, 32)
                //form field
                VStack (spacing: 24) {
                    TextField("Email", text: self.$email)
                        .padding()
                        .background(.color3)
                        .cornerRadius(20.0)
                    
                    SecureField("Mot de passe", text: self.$password)
                        .padding()
                        .background(.color3)
                        .cornerRadius(20.0)
                }
                // sign in button
                NavigationLink {
                    TabViewRoot()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack (spacing: 3) {
                        Text("CONNEXION")
                            .fontWeight(.bold)
                        Image(systemName: "arrow.right")
                    }
                    .disabled(email.isEmpty || password.isEmpty)
                    .foregroundStyle(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                }
                .background(.color1)
                .cornerRadius(10)
                .padding(.top, 24)
                
                
                NavigationLink {
                    Mot_de_passe_Oublie()
                } label: {
                    HStack {
                        Spacer()
                        Text("Mot de passe oublié ?")
                            .fontWeight(.thin)
                            .foregroundColor(.color1)
                            .underline()
                    }
                    .padding(.top, 16)
                }
                
                Spacer()
                // sign up button
                NavigationLink {
                    InscriptionView()
                } label: {
                    HStack (spacing: 3) {
                        Text("Pas encore de compte ?")
                        Text("S'inscrire")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
                    .foregroundStyle(.color1)
                }
            }
            .padding()
        }
    }
    //Auth Firebase
    func login() {
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
            } else {
                print("success")
            }
        }
    }
}
#Preview {
    ConnexionView()
}
struct connexionData: View {
    
    var text : Binding<String>
    var field: String
    var body: some View {
        
        HStack {
            TextField(field, text: text)
        }  .padding()
            .background(Color.color3)
            .cornerRadius(10)
            .padding(.horizontal, 20)
            .autocapitalization(.none)
    }
}
