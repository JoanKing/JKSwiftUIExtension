//
//  ContentView.swift
//  JKSwiftUIExtensionDemo
//
//  Created by 小冲冲 on 2024/1/16.
//

import SwiftUI
import JKSwiftUIExtension
struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world--!")
            JKGradientCircleView(colors: [Color.red, .green], lineWidth: 15)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
        }
        .padding()
        .background(Color.randomColor())
    }
}

#Preview {
    ContentView()
}
