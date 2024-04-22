//
//  OnBoarding_Page_1.swift
//  ProTalk
//
//  Created by Apprenant75 on 23/01/2024.
//

import SwiftUI

struct OnBoarding_Page_1: View {
    var body: some View {
        ZStack {
            Image("Shapes")
            ScrollView(.horizontal) {
                VStack {
                    ForEach(0..<1) {_ in
                        Image("Logo_ProTalk_Sans_Fond")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300, height: 200)
                        
                        Image("profilPictures")
                        Text("Vous ne savez pas comment faire \rpour progresser  en anglais ? ")
                            .multilineTextAlignment(.center)
                            .font(.title2)
                            .bold()
                            .foregroundStyle(.color1)
                        
                        Text("C’est également un frein pour \rl’évolution de votre carrière ?")
                            .multilineTextAlignment(.center)
                            .font(.title2)
                            .bold()
                            .foregroundStyle(.color1)
                        
                    }
                    
                }
                
            }
        }
        
    }
}
#Preview {
    OnBoarding_Page_1()
}
