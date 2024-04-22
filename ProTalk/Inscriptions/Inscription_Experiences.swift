//
//  Inscription_Experiences.swift
//  ProTalk
//
//  Created by Apprenant75 on 29/01/2024.
//

import SwiftUI
struct Inscription_Experiences: View {
    @State private var sliderValue: Float = 0.0
    var body: some View {
        NavigationStack {
            VStack {
                ProgressView("3/7", value: 42, total: 100)
                    .frame(width: 350)
                    .tint(.color1)
                Spacer()
                Text("📊")
                    .padding()
                    .font(.system(size: 100))
                    .foregroundColor(.color2)
                Text("Durée d'expérience dans ce domaine ?")
                    .font(.title).multilineTextAlignment(.center).bold()
                Slider(value: $sliderValue,
                       in: 1...3)
                .tint(.color1)
                .padding()
                HStack(spacing: 30.0) {
                    Text("0-3 ans")
                    Text("3-5 ans")
                    Text("5-10 ans")
                    Text("10 ans et +")
                        .multilineTextAlignment(.center)
                }
                Spacer()
                NavigationLink {
                    Inscription_Profession()
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
    Inscription_Experiences()
}
