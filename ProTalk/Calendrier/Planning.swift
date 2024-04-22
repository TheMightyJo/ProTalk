//
//  Planning.swift
//  Exercice23
//
//  Created by Akabtani on 30/01/2024.
//

import SwiftUI
struct SheetView2: View {
    @Environment(\.dismiss) var dismiss
    @Binding var date: Date
    @State private var showingAlert = false
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "arrow.left")
                Button("Retour") {
                    dismiss()
                }
                .fontWeight(.bold)
            }
            .font(.system(size: 25))
            Image(systemName: "checkmark.circle.fill")
                .font(.system(size: 40))
                .foregroundStyle(.green)
            Text("Votre rendez-vous a bien été pris en compte pour le : ")
                .font(.system(size: 20)).bold()
                .multilineTextAlignment(.center)
                .padding()
                .foregroundStyle(.color1)
            DatePicker("Select a Date",
                       selection: $date,
                       displayedComponents: [.date, .hourAndMinute]
            )
        }
        .labelsHidden()
    }
}
struct Planning: View {
    @State private var date = Date()
    @State private var showingSheet = false
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 10.0) {
                Image("JohnDoe")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 130, height: 130)
                Text("John DOE")
                    .font(.system(size: 50)).bold()
                    .foregroundStyle(.color1)
                HStack {
                    Text("📍 Puteaux, Ile-de-France")
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                }
                Text("💻 Chef de projet IT")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
            }
            DatePicker("Select a Date",
                       selection: $date,
                       displayedComponents: [.date, .hourAndMinute]
            )
            .datePickerStyle(.graphical)
            .frame(width: 340, height: 340, alignment: .center)
            .padding()
            Button("Valider le RDV") {
                showingSheet.toggle()
            }
            .fontWeight(.bold)
            .sheet(isPresented: $showingSheet) {
                SheetView2(date: $date)
            }
            .foregroundStyle(.white)
            .frame(width: UIScreen.main.bounds.width - 32, height: 48)
            .background(.color1)
            .cornerRadius(10)
        }

    }
}

#Preview {
    Planning()
}
