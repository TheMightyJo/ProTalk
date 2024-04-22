//
//  Home.swift
//  ProTalk
//
//  Created by Apprenant75 on 01/02/2024.
//


//Notes :
//ScrollView : permet le défilement de gauche à droite
//GeometryReader : donner à nos vues des tailles relatives à leurs conteneurs (HStack, VStack)
//scrollIndicators : permet de masquer les indicateurs de défilement
//scrollTargetBehavior : SwiftUI s'alignera automatiquement entre les images
//scrollTargetLayout : fonctionne avec le scrollTargetBehavior pour faire en sorte que tout ce qui se trouve à l'intérieur de la mise en page soit une cible de défilement
//@ViewBuilder : utilisez généralement pour créer des vues enfants pour une vue Swift
//LinearGradient :
//.clear :
//startPoint :


import SwiftUI
struct Home: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 10.0) {
                HStack(alignment: .center, spacing: 30.0) {
                    VStack(alignment: .center) {
                        Text("JOHN DOE")
                            .font(.system(size: 30)).bold()
                            .foregroundStyle(.color1)
                        Text("📍Paris, Île-de-France")
                            .font(.system(size: 15))
                            .fontWeight(.regular)
                    }
                    VStack(alignment: .trailing, spacing: 10.0) {
                        Text("💻 Chef de projet IT")
                            .font(.system(size: 15)).bold()
                        Text("Inscrit depuis mars 2017")
                            .font(.system(size: 14))
                            .fontWeight(.regular)
                    }
                }
                HStack {
                    Text("Mentor en :")
                        .font(.system(size: 20)).bold()
                        .fontWeight(.regular)
                    Text("🇬🇧")
                        .font(.system(size: 40))
                }
                Image("JohnDoe")
                    .resizable()
                    .cornerRadius(10)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 500, height: 500)
                
                
                NavigationLink {
                    Desc_Mentor()
                        .toolbarRole(.editor)
                } label: {
                    HStack (spacing: 10) {
                        Image(systemName: "play.fill")
                        Text("Découvrir")
                            .fontWeight(.bold)
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
}

#Preview {
    Home()
}
