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
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            JKGradientCircleView(colors: [Color.red, .brown], lineWidth: 15)
        }
        .padding()
        .background(Color(hexString: "#FFAB01"))
    }
}

#Preview {
    ContentView()
}
