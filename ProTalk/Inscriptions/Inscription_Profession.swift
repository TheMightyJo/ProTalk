//
//  PT3.swift
//  ProTalk
//
//  Created by Apprenant61 on 25/01/2024.
//

import SwiftUI

struct Inscription_Profession: View {
    @State private var progress = 0.05
    @State private var profession: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                ProgressView("4/7", value: 56, total: 100)
                    .frame(width: 350)
                    .tint(.color1)
                Spacer()
                Text("💼")
                    .padding()
                    .font(.system(size: 100))
                    .foregroundColor(.color1)
                Text("Quelle est votre \rprofession ?")
                    .font(.title).bold()
                    .multilineTextAlignment(.center)
                TextField("", text: self.$profession)
                    .padding()
                    .background(.color3)
                    .cornerRadius(20.0)
                Spacer()
                NavigationLink {
                    Inscription_EnglishLevel()
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
    Inscription_Profession()
}
