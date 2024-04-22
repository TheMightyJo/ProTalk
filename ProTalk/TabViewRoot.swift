//
//  TabView.swift
//  ProTalk
//
//  Created by Apprenant75 on 05/02/2024.
//

import SwiftUI

struct TabViewRoot: View {
    
    init() {
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color(.color2))
    }
//    @State private var selectionTab: Int = 0
    
    var body: some View {
        
        TabView {
            Espace_Apprenant()
                .tabItem {
                    Label("Profil", systemImage: "person.circle.fill")
                }
                .tag(0)
            Planning()
                .tabItem {
                    Label("Agenda", systemImage: "calendar.circle.fill")
                }
                .tag(1)
            Home()
                .tabItem {
                    Label("Mentors", systemImage: "magnifyingglass.circle.fill")
                }
                .tag(2)
            MessagerieView()
                .tabItem {
                    Label("Messagerie", systemImage: "message.circle.fill")
                }
                .tag(3)
            MesCours()
                .tabItem {
                    Label("Mes Cours", systemImage: "book.circle.fill")
                }
                .tag(4)
        }
//        TabView(selection: $selectionTab) {
//            Espace_Apprenant()
//                .tabItem {
//                    Label("Profil", image: selectionTab == 0 ? "profil-s" : "profil")
//                }
//                .tag(0)
//            Planning()
//                .tabItem {
//                    Label("Agenda", image:
//                            selectionTab == 1 ? "agenda-s" :"agenda")
//                }
//                .tag(1)
//            
//            Home()
//                .tabItem {
//                    Label("Mentors", image:
//                            selectionTab == 2 ? "mentor-s":
//                            "mentorTab")
//                }
//                .tag(2)
//            Messagerie()
//                .tabItem {
//                    Label("Messagerie", image:
//                            selectionTab == 3 ? "message-s":
//                            "message")
//                }
//                .tag(3)
//            MesCours()
//                .tabItem {
//                    Label("Mes Cours", image:
//                            selectionTab == 4 ? "biblio-s":
//                            "biblio3")
//                    .padding ( .bottom, 10)
//                    
//                }
//                .tag(4)
//        }
    }
}
#Preview {
    TabViewRoot()
}
