//
//  TitleRow.swift
//  ProTalk
//
//  Created by Apprenant75 on 30/01/2024.
//

import SwiftUI

struct TitleRow: View {
    var imageUrl = URL(string: "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
    var name = "John DOE"
    
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: imageUrl) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
            }
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title).bold()
                Text("En ligne")
                    .font(.caption)
                    .foregroundStyle(.green)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            Image(systemName: "phone.fill")
                .foregroundColor(.white)
                .padding(10)
                .background(.color2)
                .cornerRadius(50)
        }
        .padding()
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color.color3)
    }
}
