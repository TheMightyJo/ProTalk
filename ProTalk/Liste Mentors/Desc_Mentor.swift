//
//  descrpitonphoto.swift
//  Exercice23
//
//  Created by Akabtani on 02/02/2024.
//

import SwiftUI

struct Desc_Mentor: View {
    var body: some View {
        NavigationStack {
            ScrollView (.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20.0) {
                        Image("JohnDoe")
                            .resizable()
                            .scaledToFill()
                            .clipShape(Circle())
                            .frame(width: 150, height: 150)
                        Text("John DOE")
                            .font(.system(size: 50)).bold()
                            .foregroundStyle(.color1)
                        HStack {
                            Text("📍 Paris, Île-de-France")
                                .font(.system(size: 20))
                                .fontWeight(.semibold)
                        }
                        Text("💻 Chef de projet IT")
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                        ZStack {
                            Text("""
                            Hello ! 👋
                            
                            Je suis John DOE,  passionné par les langues, notamment l’anglais, je suis  prêt à vous aider à  atteindre vos objectifs.
                            
                            Avec flexibilité d'horaire, suivi régulier, et astuces pour surmonter les obstacles, ensemble, nous ferons de votre apprentissage de l'anglais une expérience enrichissante !
                            """)
                            .font(.system(size: 22))
                            .multilineTextAlignment(.center)
                            .padding()
                        }
                        .frame(width: 370 , height: 400)
                        .overlay {
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.color1, lineWidth: 2)
                        }
                    }
                    VStack {
                        VStack(spacing: 30.0) {
                            Text("Ce que je propose :")
                                .font(.title).bold()
                                .foregroundStyle(.color1)
                            Text("""
                                 🔤 Cours personnalisés pour vos besoins spécifiques.
                                 
                                 🎯 Objectifs clairs et mesurables à chaque session.
                                 
                                 🗣️ Pratique intensive pour améliorer votre fluidité.
                                 
                                 📚 Ressources interactives pour rendre l'apprentissage stimulant.
                                 
                                 """)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 25))
                            
                        }
                    }
                    VStack {
                        Text("Certifications :")
                            .font(.system(size: 30))
                            .padding()
                            .bold()
                            .foregroundStyle(.color1)
                        HStack {
                            VStack {
                                Image(systemName: "checkmark.seal.fill")
                                    .foregroundColor(.color3)
                                    .font(.largeTitle)
                                Text("CECRIL : C2")
                                    .frame(width: 100, height: 20)
                                    .font(.headline)
                            }
                            .padding()
                            .foregroundColor(.color3)
                            .background(Color.color1)
                            .cornerRadius(20)
                            VStack {
                                Image(systemName: "checkmark.seal.fill")
                                    .foregroundColor(.color3)
                                    .font(.largeTitle)
                                Text("TOEIC : C1")
                                    .frame(width: 100, height: 20)
                                    .font(.headline)
                            }
                            .padding()
                            .foregroundColor(.color3)
                            .background(Color.color1)
                            .cornerRadius(20)
                        }
                    }
                    VStack {
                        Text("Mes loisirs :")
                            .padding()
                            .font(.system(size: 30))
                            .bold()
                            .foregroundStyle(.color1)
                        HStack{
                            VStack {
                                Image(systemName: "soccerball")
                                    .foregroundColor(.color3)
                                    .font(.largeTitle)
                                Text("Football")
                                    .frame(width: 100, height: 20)
                                    .font(.headline)
                            }
                            .padding()
                            .foregroundColor(.color3)
                            .background(Color.color1)
                            .cornerRadius(20)
                            VStack {
                                Image(systemName: "music.note")
                                    .foregroundColor(.color3)
                                    .font(.largeTitle)
                                Text("Raï")
                                    .frame(width: 100, height: 20)
                                    .font(.headline)
                            }
                            .padding()
                            .foregroundColor(.color3)
                            .background(Color.color1)
                            .cornerRadius(20)
                        }
                        HStack {
                            VStack {
                                Image(systemName: "figure.dance")
                                    .foregroundColor(.color3)
                                    .font(.largeTitle)
                                Text("Danser")
                                    .frame(width: 100, height: 20)
                                    .font(.headline)
                            }
                            .padding()
                            .foregroundColor(.color3)
                            .background(Color.color1)
                            .cornerRadius(20)
                            VStack {
                                Image(systemName: "video.fill")
                                    .foregroundColor(.color3)
                                    .font(.largeTitle)
                                Text("Kdrama")
                                    .frame(width: 100, height: 40)
                                    .font(.headline)
                            }
                            .padding()
                            .foregroundColor(.color3)
                            .background(Color.color1)
                            .cornerRadius(20)
                        }
                        HStack {
                            VStack {
                                Image(systemName: "book.fill")
                                    .font(.largeTitle)
                                Text("Manga")
                                    .frame(width: 100, height: 20)
                                    .font(.headline)
                            }
                            .padding()
                            .foregroundColor(.color3)
                            .background(Color.color1)
                            .cornerRadius(20)
                            VStack {
                                Image(systemName: "figure.run")
                                    .font(.largeTitle)
                                Text("Courir")
                                    .frame(width: 100, height: 20)
                                    .font(.headline)
                            }
                            .padding()
                            .foregroundColor(.color3)
                            .background(Color.color1)
                            .cornerRadius(20)
                        }
                    }
                    VStack {
                        NavigationLink {
                            Planning()
                                .toolbarRole(.editor)
                        } label: {
                            HStack {
                                Image(systemName: "calendar.circle.fill")
                                    .foregroundColor(.color3)
                                    .font(.largeTitle)
                                Text("Prendre rendez-vous")
                                    .frame(width: 200, height: 40)
                                    .font(.headline)
                            }
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.color2)
                        .cornerRadius(20)
                        
                        NavigationLink {
                            MessagerieView()
                                .toolbarRole(.editor)
                        } label: {
                            HStack {
                                Image(systemName: "message.fill")
                                    .font(.largeTitle)
                                Text("Contacter")
                                    .frame(width: 200, height: 40)
                                    .font(.headline)
                            }
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.color2)
                            .cornerRadius(20)
                        }
                    }
                
            }
        }
    }
}

#Preview {
    Desc_Mentor()
}
