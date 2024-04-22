//
//  parametres.swift
//  Exercice23
//
//  Created by Akabtani on 01/02/2024.
//

import SwiftUI

struct Params: View {
    @State private var showingAlert = false
    var body: some View {
        VStack {
            Spacer()
            Image("eleve3")
            Text("Diane F.")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                .foregroundStyle(Color.color1)
            Spacer()
            VStack {
                Form {
                    Section {
                        HStack(alignment: .center) {
                            Image(systemName: "person.fill")
                            Text("Diane F.")
                                .font(.title3).bold()
                            Spacer()
                            Image(systemName: "pencil")
                                .font(.system(size: 25))
                        }
                        HStack(alignment: .center) {
                            Image(systemName: "person.circle.fill")
                            Text("Didi")
                                .font(.title3).bold()
                            Spacer()
                            Image(systemName: "pencil")
                                .font(.system(size: 25))
                        }
                        HStack(alignment: .center) {
                            Image(systemName: "shield.fill")
                            Text("Changer mon mot de passe")
                                .font(.title3).bold()
                            Spacer()
                            Image(systemName: "pencil")
                                .font(.system(size: 25))
                        }
                    }
                    .listRowBackground(Color.color3)
                    
                    Section {
                        HStack(alignment: .center) {
                            Image(systemName: "envelope.fill")
                            Text("Test@gmail.com")
                                .font(.title3).bold()
                            Spacer()
                            Image(systemName: "pencil")
                                .font(.system(size: 25))
                        }
                        HStack(alignment: .center) {
                            Image(systemName: "phone.fill")
                            Text("06 80 78 XX XX")
                                .font(.title3).bold()
                            Spacer()
                            Image(systemName: "pencil")
                                .font(.system(size: 25))
                        }
                        HStack(alignment: .center) {
                            Image(systemName: "house.fill")
                            Text("55 rue de Vincennes, 93100 Montreuil ")
                                .font(.title3).bold()
                            Spacer()
                            Image(systemName: "pencil")
                                .font(.system(size: 25))
                        }
                    }
                    .listRowBackground(Color.color3)
                }
                .scrollContentBackground(.hidden)
            }
            .foregroundColor(.color1)
            Spacer()
            Button("Fermer le compte")
            {
                showingAlert = true
            }
            .foregroundColor(Color.red)
            .alert("Supprimer définitivement le compte ?", isPresented: $showingAlert) {
                Button("Annuler", role: .cancel) {}
                Button("OK") {}
            }
        }
    }
}
#Preview {
    Params()
}
