//
//  JKGradientCircleViewTest.swift
//  JKSwiftUIExtensionDemo
//
//  Created by 小冲冲 on 2024/1/20.
//

import SwiftUI
import JKSwiftUIExtension

struct JKGradientCircleViewTest: View {
    var body: some View {
        GeometryReader { proxy in
            VStack {
                Text("Hello, world!")
                JKGradientCircleView(colors: [Color.red, .green], lineWidth: 15)
                    .frame(width: 260, height: 260)
                    .background(Color.white)
            }
            .frame(width: proxy.size.width, height: proxy.size.height)
            .padding(.horizontal, 0)
            .background(Color.randomColor())
        }
    }
}

#Preview {
    JKGradientCircleViewTest()
}
