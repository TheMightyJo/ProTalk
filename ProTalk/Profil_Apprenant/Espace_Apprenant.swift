    //
    //  PTest.swift
    //  ProTalk
    //
    //  Created by Apprenant61 on 02/02/2024.
    //

    import SwiftUI

    struct Espace_Apprenant: View {
        var body: some View {
            NavigationStack {
                ScrollView (.vertical) {
                    VStack(alignment: .center) {
                        VStack {
                            Image("eleve3")
                            Text("Hello Diane 👋")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                                .foregroundStyle(Color.color1)
                        }
                        ZStack {
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(style:StrokeStyle())
                                .frame(width: 370, height: 160)
                            HStack {
                                VStack  {
                                    Text("Mon mentor")
                                        .foregroundStyle(Color.color1)
                                        .fontWeight(.semibold)
                                        .font(.system(size: 20))
                                    Image("JohnDoe")
                                        .resizable()
                                        .scaledToFill()
                                        .clipShape(Circle())
                                        .frame(width: 80, height: 80)
                                    Text("John Doe")
                                        .foregroundStyle(Color.color1)
                                        .fontWeight(.medium)
                                        .font(.system(size: 20))
                                }
                                VStack {
                                    NavigationLink {
                                        Planning()
                                            .toolbarRole(.editor)
                                    } label: {
                                        ZStack{
                                            RoundedRectangle(cornerRadius: 10)
                                                .frame(width: 190, height: 45)
                                                .foregroundStyle(Color.color2)
                                            Text("Prendre rendez-vous")
                                                .foregroundStyle(.white)
                                        }
                                    }
                                    VStack {
                                        NavigationLink {
                                            MessagerieView()
                                                .toolbarRole(.editor)
                                        } label: {
                                            ZStack {
                                                RoundedRectangle(cornerRadius: 10)
                                                    .frame(width: 190, height: 45)
                                                    .foregroundStyle(Color.color1)
                                                Text("Envoyer un message")
                                                    .multilineTextAlignment(.center)
                                                    .foregroundStyle(.white)
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        ZStack {
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(style:StrokeStyle())
                                .frame(width: 370, height: 290)
                            VStack(alignment: .center, spacing: 40.0) {
                                Text("Mes prochains RDV")
                                    .underline()
                                    .foregroundStyle(Color.color1)
                                    .fontWeight(.bold)
                                    .font(.title)
                                VStack(alignment: .leading) {
                                    HStack {
                                        Image("JohnDoe")
                                            .resizable()
                                            .scaledToFill()
                                            .clipShape(Circle())
                                            .frame(width: 73, height: 73)
                                        Text("Lundi 12 février 2024 \rà 18H00")
                                            .padding()
                                            .font(.system(size: 17.8))
                                            .background(.white)
                                            .clipShape(RoundedRectangle(cornerRadius: 30))
                                    }

                                    Divider()
                                        .frame(width: 300)
                                        .frame(height: 1)
                                        .overlay(.color1)
                                    HStack {
                                        Image("JohnDoe")
                                            .resizable()
                                            .scaledToFill()
                                            .clipShape(Circle())
                                            .frame(width: 73, height: 73)
                                        Text("Vendredi 23 février 2024 à 17H30")
                                            .padding()
                                            .font(.system(size: 17.8))
                                            .background(.white)
                                            .clipShape(RoundedRectangle(cornerRadius: 30))
                                    }
                                }
                            }
                        }
                        .padding()
                        VStack(spacing: 30.0) {
                            Text("Ma progression")
                                .font(.title)
                                .underline()
                                .fontWeight(.bold)
                                .foregroundColor(Color.color1)
                            HStack(alignment: .center, spacing: 20.0) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(style: StrokeStyle() )
                                        .frame(width: 160, height: 160)
                                    VStack(spacing: 10.0) {
                                        Image("book")
                                            .frame(width: 155, height: 40)
                                        Text("Pages lues")
                                            .foregroundStyle(Color.color1)
                                            .bold()
                                            .font(.system(size: 18))
                                        Text("50/100")
                                            .foregroundStyle(.green).bold()
                                    }
                                }
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(style: /*@START_MENU_TOKEN@*/StrokeStyle()/*@END_MENU_TOKEN@*/)
                                        .frame(width: 160, height: 160)
                                    VStack(spacing: 10.0) {
                                        Image("alphabet")
                                            .resizable()
                                            .frame(width: 120, height: 80)
                                        Text("Mots appris")
                                            .foregroundStyle(Color.color1)
                                            .bold()
                                            .font(.system(size: 18))
                                        Text("1883")
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
                                        Image("biblio2")
                                            .resizable()
                                            .frame(width: 120, height: 80)
                                        Text("Leçons terminées")
                                            .foregroundStyle(Color.color1)
                                            .bold()
                                            .font(.system(size: 18))
                                        Text("50/100")
                                            .foregroundStyle(.green).bold()
                                    }
                                }
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(style: /*@START_MENU_TOKEN@*/StrokeStyle()/*@END_MENU_TOKEN@*/)
                                        .frame(width: 160, height: 160)
                                    VStack(alignment: .center, spacing: 10.0) {
                                        Image("speaker")
                                            .resizable()
                                            .frame(width: 90, height: 90)
                                        Text("Audios terminés")
                                            .foregroundStyle(Color.color1)
                                            .bold()
                                            .font(.system(size: 18))
                                        Text("20/100")
                                            .foregroundStyle(.green).bold()
                                    }
                                }
                            }
                        }
                        .padding()
                        VStack(spacing: 20.0) {
                            NavigationLink {
                                Params()
                                    .toolbarRole(.editor)
                            } label: {
                                HStack (spacing: 3) {
                                    Text("Modifier mon profil")
                                        .fontWeight(.bold)
                                }
                                .foregroundStyle(.white)
                                .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                            }
                            .background(.color1)
                            .cornerRadius(10)
                            NavigationLink {
                                ConnexionView()
                                    .toolbarRole(.editor)
                            } label: {
                                HStack (spacing: 3) {
                                    Text("Se déconnecter")
                                        .fontWeight(.bold)
                                }
                                .foregroundStyle(.white)
                                .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                            }
                            .background(.color1)
                            .cornerRadius(10)
                        }
                        
                    }
                    
                }
            }
        }
    }
    #Preview {
        Espace_Apprenant()
    }
