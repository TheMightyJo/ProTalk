//
//  Inscription_Questionnaire_EnglishLevel.swift
//  ProTalk
//
//  Created by Apprenant75 on 26/01/2024.
//

import SwiftUI

struct Inscription_EnglishLevel: View {
    @State private var sliderValue: Float = 0.0
    
    var body: some View {
        NavigationStack {
            VStack {
                ProgressView("5/7",value: 70, total: 100)
                    .frame(width: 350)
                    .tint(.color1)
                    .padding()
                Spacer()
                Text("🇬🇧")
                    .padding()
                    .font(.system(size: 100))
                    .foregroundColor(.color2)
                Text("Quel est votre niveau d’anglais ?")
                    .font(.title).multilineTextAlignment(.center).bold()
                Slider(value: $sliderValue,
                       in: 1...3)
                .tint(.color1)
                HStack(spacing: 30.0) {
                    Text("😞")
                        .font(.system(size: 80))
                    Text("🙂")
                        .font(.system(size: 80))
                    Text("🤓")
                        .font(.system(size: 80))
                }
                Spacer()
                NavigationLink {
                    Inscription_Methode()
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
            }
            .padding()
        }
    }
}
#Preview {
    Inscription_EnglishLevel()
}
