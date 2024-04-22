//
//  bibliothequePro.swift
//  Exercice23
//
//  Created by Akabtani on 01/02/2024.
//

import SwiftUI

struct MesCours: View {
    var body: some View {
        /*VStack {
         HStack  {
         Text("Mes cours")
         .font(.system(size: 50))
         .bold()
         }
         HStack {
         Button {
         } label: {
         Image(systemName: "folder.fill")
         .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
         Text("Fichiers")
         .frame(width: 250)
         .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
         }
         }
         .foregroundColor(.white)
         .background(Color.color1)
         .cornerRadius(40)
         HStack {
         Button {
         } label: {
         Image(systemName: "video.fill")
         .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
         Text("Vidéos")
         .frame(width: 250)
         .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
         }
         }
         .padding()
         .foregroundColor(.white)
         .background(Color.color1)
         .cornerRadius(40)
         HStack {
         Button {
         
         } label: {
         Image(systemName: "headphones")
         .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
         Text("Livres audio")
         .frame(width: 250)
         .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
         }
         }
         .padding()
         .foregroundColor(.white)
         .background(Color.color1)
         .cornerRadius(40)
         HStack {
         Button {
         
         } label: {
         Image(systemName: "pencil.line")
         .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
         Text("Exercices")
         .frame(width: 250)
         .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
         }
         }
         .padding()
         .foregroundColor(.white)
         .background(Color.color1)
         .cornerRadius(40)
         HStack {
         Button {
         } label: {
         Image(systemName: "list.clipboard.fill")
         .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
         Text("Notes")
         .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
         }
         }
         .foregroundColor(.white)
         .background(Color.color1)
         .cornerRadius(40)
         }*/
        VStack(spacing: 30.0) {
            Text("MES COURS")
                .font(.title)
                .underline()
                .fontWeight(.bold)
                .foregroundColor(Color.color1)
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(style: StrokeStyle() )
                    .frame(width: 160, height: 160)
                VStack(spacing: 10.0) {
                    Image(systemName: "folder.fill")
                        .font(.system(size: 50))
                        .foregroundStyle(.color1)
                    Text("Fichiers")
                        .foregroundStyle(Color.color1)
                        .bold()
                        .font(.system(size: 18))
                    Text("50")
                        .foregroundStyle(.green).bold()
                }
            }
            HStack(alignment: .center, spacing: 20.0) {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(style: StrokeStyle() )
                        .frame(width: 160, height: 160)
                    VStack(spacing: 10.0) {
                        Image(systemName: "video.fill")
                            .font(.system(size: 50))
                            .foregroundStyle(.color1)
                        Text("Vidéos")
                            .foregroundStyle(Color.color1)
                            .bold()
                            .font(.system(size: 18))
                        Text("10")
                            .foregroundStyle(.green).bold()
                    }
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(style: /*@START_MENU_TOKEN@*/StrokeStyle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 160, height: 160)
                    VStack(spacing: 10.0) {
                        Image(systemName: "headphones")
                            .font(.system(size: 50))
                            .foregroundStyle(.color1)
                        Text("Livres audio")
                            .foregroundStyle(Color.color1)
                            .bold()
                            .font(.system(size: 18))
                        Text("188")
                            .foregroundStyle(.green).bold()
                    }
                }
            }
            HStack(alignment: .center, spacing: 20.0) {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(style: /*@START_MENU_TOKEN@*/StrokeStyle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 160, height: 160)
                    VStack(alignment: .center, spacing: 10.0) {
                        Image(systemName: "pencil.line")
                            .font(.system(size: 50))
                            .foregroundStyle(.color1)
                        Text("Exercices")
                            .foregroundStyle(Color.color1)
                            .bold()
                            .font(.system(size: 18))
                        Text("50")
                            .foregroundStyle(.green).bold()
                    }
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(style: /*@START_MENU_TOKEN@*/StrokeStyle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 160, height: 160)
                    VStack(alignment: .center, spacing: 10.0) {
                        Image(systemName: "list.clipboard.fill")
                            .font(.system(size: 50))
                            .foregroundStyle(.color1)
                        Text("Notes")
                            .foregroundStyle(Color.color1)
                            .bold()
                            .font(.system(size: 18))
                        Text("20")
                            .foregroundStyle(.green).bold()
                    }
                }
            }
        }
    }
}
#Preview {
    MesCours()
}
