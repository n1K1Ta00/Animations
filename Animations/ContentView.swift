//
//  ContentView.swift
//  Animations
//
//  Created by Никита Мартьянов on 8.02.24.
//

import SwiftUI

struct ContentView: View {
    @State private var enabled = false
    
    var body: some View {
        Button("Tap me") {
            enabled.toggle()
        }
            .frame(width: 200, height: 200)
            .background(enabled ? .blue : .red)
            .foregroundStyle(.white)
            .animation(nil, value: enabled)
            .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
            .animation(.spring(duration: 1, bounce: 0.9), value: enabled)
        }
    }
#Preview {
    ContentView()
}
