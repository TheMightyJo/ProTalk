//
//  PT4.swift
//  ProTalk
//
//  Created by Apprenant61 on 26/01/2024.
//

import SwiftUI

struct Inscription_Methode: View {
    @State private var methodDistanciel: Bool = false
    @State private var methodFacetoface: Bool = false
    var body: some View {
        NavigationStack {
            VStack {
                ProgressView("6/7",value: 84, total: 100)
                    .frame(width: 350)
                    .tint(.color1)
                Spacer()
                Text("Préférez-vous être...")
                    .font(.title).bold()
                VStack {
                    Button()
                    {methodDistanciel.toggle()
                    } label: {
                        Image("man-working-on-a-laptop-from-side-view")
                            .resizable()
                            .frame(width: 200, height: 200)
                    }
                    Text("En Distanciel")
                }
                .foregroundStyle(.color1).bold()
                .font(.system(size: 30))
                .scaleEffect(methodDistanciel ? 1 : 0.75)
                
                
                
                VStack {
                    Button()
                    {methodFacetoface.toggle()
                    } label: {
                        Image("talking")
                            .resizable()
                            .frame(width: 200, height: 200)
                    }
                    Text("En Face à face")
                }
                .foregroundStyle(.color1).bold()
                .font(.system(size: 30))
                .scaleEffect(methodFacetoface ? 1 : 0.75)
                
                Spacer()
                NavigationLink {
                    Inscription_Interest()
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
}

#Preview {
    Inscription_Methode()
}

