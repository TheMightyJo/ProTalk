//
//  PT1.swift
//  ProTalk
//
//  Created by Apprenant61 on 25/01/2024.
//

import SwiftUI

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 30.0) {
            HStack {
                Image(systemName: "arrow.left")
                Button("Retour") {
                    dismiss()
                }
                .padding()
                .fontWeight(.bold)
            }
            .font(.system(size: 25))
            Spacer()
            Image(systemName: "checkmark.circle.fill")
                .font(.system(size: 35))
                .foregroundStyle(.green)
            Text("VOUS ALLEZ RECEVOIR UN EMAIL CONTENANT VOTRE CODE D'AUTORISATION. VEUILLEZ LE RENSEIGNER CI-DESSOUS POUR VALIDER LA MODIFICATION DE VOTRE MOT DE PASSE.")
                .multilineTextAlignment(.center)
                .foregroundStyle(.color1)
            Spacer()
        }
        
        
    }
}
struct Mot_de_passe_Oublie: View {
    @State private var email = ""
    @State private var showingSheet = false
    
    var body: some View {
        VStack(alignment:.center) {
            // Image("Logo_ProTalk_Sans_Fond_2")
            // .resizable()
            // .scaledToFill()
            //  .frame(width: 300, height: 200)
            Text("🤷")
                .font(.system(size: 100))
                .padding()
            Text("Mot de passe oublié ?")
                .fontWeight(.medium)
                .font(.system(size: 23))
            Text("Veuillez saisir votre email de connexion afin de recevoir le lien de réinitialisation de votre mot de passe.")
                .padding()
                .multilineTextAlignment(.center)
            VStack (spacing: 24) {
                TextField("Email", text: self.$email)
                    .padding()
                    .background(.color3)
                    .cornerRadius(20.0)
            }
            
            HStack {
                Button("Recevoir le lien") {
                    showingSheet.toggle()
                }
                .fontWeight(.bold)
                Image(systemName: "arrow.right")
                    .sheet(isPresented: $showingSheet) {
                        SheetView()
                    }
            }
            .foregroundStyle(.white)
            .frame(width: UIScreen.main.bounds.width - 32, height: 48)
            .background(.color1)
            .cornerRadius(10)
            .padding(.top, 24)
        }
        .padding()
        
    }
}
#Preview {
    Mot_de_passe_Oublie()
}

