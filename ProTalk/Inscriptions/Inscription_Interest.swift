//
//  Inscription_Interest.swift
//  ProTalk
//
//  Created by Apprenant75 on 29/01/2024.
//

import SwiftUI

struct Inscription_Interest: View {
    @State private var hobbies: String = ""
    @State private var football = false
    @State private var musique = false
    @State private var danse = false
    @State private var film = false
    @State private var courir = false
    @State private var lecture = false
    @State private var showingSheet = false
    
    var body: some View {
        NavigationStack {
            VStack {
                ProgressView("7/7",value: 100, total: 100)
                    .frame(width: 350)
                    .tint(.color1)
                Spacer()
                Text("🎲")
                    .font(.system(size: 65))
                    .foregroundColor(.color2)
                Text("Parmi ces activités, lesquelles aimez-vous ?")
                    .font(.title).multilineTextAlignment(.center).bold()
                HStack {
                    ZStack {
                        Button{
                            football.toggle()
                        }
                    label: {
                        RoundedRectangle(cornerRadius: 20)
                            .fill( football ? .color2 : .color1)
                            .frame(width: 120, height: 120)
                    }
                        VStack {
                            Image(systemName: "soccerball")
                                .foregroundColor(.color3)
                                .font(.largeTitle)
                            Text("Football")
                                .frame(width: 120, height: 20)
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                    }
                    ZStack {
                        Button{
                            musique.toggle()
                        }
                    label: {
                        RoundedRectangle(cornerRadius: 20)
                            .fill( musique ? .color2 : .color1)
                            .frame(width: 120, height: 120)
                    }
                        VStack {
                            Image(systemName: "music.note")
                                .foregroundColor(.color3)
                                .font(.largeTitle)
                            Text("Musique")
                                .frame(width: 120, height: 20)
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                    }
                }
                HStack {
                    ZStack {
                        Button{
                            danse.toggle()
                        }
                    label: {
                        RoundedRectangle(cornerRadius: 20)
                            .fill( danse ? .color2 : .color1)
                            .frame(width: 120, height: 120)
                    }
                        VStack {
                            Image(systemName: "figure.dance")
                                .foregroundColor(.color3)
                                .font(.largeTitle)
                            Text("Danse")
                                .frame(width: 120, height: 20)
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                    }
                    ZStack {
                        Button{
                            film.toggle()
                        }
                    label: {
                        RoundedRectangle(cornerRadius: 20)
                            .fill( film ? .color2 : .color1)
                            .frame(width: 120, height: 120)
                    }
                        VStack {
                            Image(systemName: "video.fill")
                                .foregroundColor(.color3)
                                .font(.largeTitle)
                            Text("Film, série")
                                .frame(width: 120, height: 20)
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                    }
                }
                HStack {
                    ZStack {
                        Button{
                            courir.toggle()
                        }
                    label: {
                        RoundedRectangle(cornerRadius: 20)
                            .fill( courir ? .color2 : .color1)
                            .frame(width: 120, height: 120)
                    }
                        VStack {
                            Image(systemName: "figure.run")
                                .foregroundColor(.color3)
                                .font(.largeTitle)
                            Text("Courir")
                                .frame(width: 120, height: 20)
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                    }
                    ZStack {
                        Button{
                            lecture.toggle()
                        }
                    label: {
                        RoundedRectangle(cornerRadius: 20)
                            .fill( lecture ? .color2 : .color1)
                            .frame(width: 120, height: 120)
                    }
                        VStack {
                            Image(systemName: "book.fill")
                                .foregroundColor(.color3)
                                .font(.largeTitle)
                            Text("Lecture")
                                .frame(width: 120, height: 20)
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                    }
                }
                Spacer()
                NavigationLink {
                        Home()
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
    Inscription_Interest()
}
