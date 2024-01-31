//
//  ViewTest.swift
//  JKSwiftUIExtensionDemo
//
//  Created by 小冲冲 on 2024/1/20.
//

import SwiftUI

struct ViewTest: View {
    var body: some View {
        VStack(content: {
            Text("View扩展的测试")
            Button(action: {
                
            }, label: {
                Text("添加圆角和阴影")
            })
            .frame(width: 150, height: 80)
            .padding()
            .background(Color.white)
            .addCornerAndShow(radius: 80, shadowRadius: 10)
        })
    }
}

#Preview {
    ViewTest()
}
