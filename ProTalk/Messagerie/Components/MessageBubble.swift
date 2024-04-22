//
//  MessageBubble.swift
//  ProTalk
//
//  Created by Apprenant75 on 30/01/2024.
//

import SwiftUI

struct MessageBubble: View {
    var message: Message
    @State private var showTime = false
    var body: some View {
        VStack(alignment: message.received ? .leading :
                .trailing) {
                    HStack {
                        Text(message.text)
                            .padding()
                            .background(message.received ? Color.color3 : Color.color2)
                            .cornerRadius(30)
                    }
                    .frame(maxWidth: 300, alignment: message.received ? .leading : .trailing)
                    .onTapGesture {
                        showTime.toggle()
                    }
                    if showTime {
                        Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                            .font(.caption2)
                            .foregroundStyle(.color1)
                            .padding(message.received ? .leading : .trailing, 25)
                    }
                }
                .frame(maxWidth: .infinity, alignment: message.received ? .leading : .trailing)
                .padding(message.received ? .leading : .trailing)
                .padding(.horizontal, 10)
    }
}

#Preview {
    MessageBubble(message: Message(id: "12345", text: "J'adore les frites", received: true, timestamp: Date()))
}
