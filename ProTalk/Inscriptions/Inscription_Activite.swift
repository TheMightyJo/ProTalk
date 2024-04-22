//
//  PT5.swift
//  ProTalk
//
//  Created by Apprenant61 on 26/01/2024.
//

import SwiftUI

struct Inscription_Activite: View {
    @State private var secteurHotellerie: Bool = false
    @State private var secteurTourism: Bool = false
    @State private var secteurRestauration: Bool = false
    @State private var secteurIT: Bool = false
    @State private var secteurLuxury: Bool = false
    @State private var secteurMarketing: Bool = false
    
    
    var body: some View {
        NavigationStack {
            VStack() {
                ProgressView("2/7",value: 28, total: 100)
                    .frame(width: 350)
                    .tint(.color1)
                Spacer()
                Text("Quel est votre secteur d’activité ?")
                    .font(.title).multilineTextAlignment(.center).bold()
                    .padding()
                HStack(spacing: 50.0) {
                    VStack {
                        Button()
                        {secteurHotellerie.toggle()
                        } label: {
                            Image("Hotel")
                                .resizable()
                                .frame(width: 90, height: 90)
                                .scaledToFit()
                        }
                        Text("Hôtellerie")
                            .fontWeight(.bold)
                    }
                    .foregroundStyle(secteurHotellerie ? .color2 : .color1)
                    .scaleEffect(secteurHotellerie ? 1.10 : 1)
                    .fontWeight(.bold)
                    
                    
                    VStack() {
                        Button()
                        {secteurTourism.toggle()
                        } label: {
                            Image("plane")
                                .resizable()
                                .frame(width: 90, height: 90)
                                .scaledToFit()
                        }
                        Text("Tourisme")
                    }
                    .foregroundStyle(secteurTourism ? .color2 : .color1)
                    .scaleEffect(secteurTourism ? 1.10 : 1)
                    .fontWeight(.bold)
                }
                
                HStack(spacing: 50.0) {
                    VStack {
                        Button()
                        {secteurIT.toggle()
                        } label: {
                            Image("IT")
                                .resizable()
                                .frame(width: 90, height: 90)
                        }
                        Text("Informatique")
                    }
                    .foregroundStyle(secteurIT ? .color2 : .color1)
                    .scaleEffect(secteurIT ? 1.10 : 1)
                    .fontWeight(.bold)
                    
                    VStack {
                        Button()
                        {secteurRestauration.toggle()
                        } label: {
                            Image("Restau")
                                .resizable()
                                .frame(width: 90, height: 90)
                                .scaledToFit()
                            
                        }
                        Text("Restauration")
                    }
                    .foregroundStyle(secteurRestauration ? .color2 : .color1)
                    .scaleEffect(secteurRestauration ? 1.10 : 1)
                    .fontWeight(.bold)
                }
                
                HStack(spacing: 50.0)  {
                    VStack {
                        Button()
                        {secteurMarketing.toggle()
                        } label: {
                            Image("Sales")
                                .resizable()
                                .frame(width: 90, height: 90)
                        }
                        Text("Marketing")
                    }
                    .foregroundStyle(secteurMarketing ? .color2 : .color1)
                    .scaleEffect(secteurMarketing ? 1.10 : 1)
                    .fontWeight(.bold)
                    
                    VStack {
                        Button()
                        {secteurLuxury.toggle()
                        } label: {
                            Image("luxury")
                                .resizable()
                                .frame(width: 90, height: 90)
                        }
                        Text("Luxe")
                    }
                    .foregroundStyle(secteurLuxury ? .color2 : .color1)
                    .scaleEffect(secteurLuxury ? 1.10 : 1)
                    .fontWeight(.bold)
                }
                Spacer()
            }
            
            
            //Bouton Continuer
            NavigationLink {
                Inscription_Experiences()
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
}


#Preview {
    Inscription_Activite()
}
