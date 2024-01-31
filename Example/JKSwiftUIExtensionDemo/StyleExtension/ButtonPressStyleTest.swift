//
//  ButtonPressStyleTestView.swift
//  JKSwiftUIExtensionDemo
//
//  Created by 小冲冲 on 2024/1/20.
//

import SwiftUI
import JKSwiftUIExtension

struct ButtonPressStyleTest: View {

    var body: some View {
        Button(action: {
            
        }, label: {
            Image(systemName: "1.circle")
                .resizable() // 占据尽可能多的空间
                .scaledToFit() // 长宽比例不变的情况下尽可能的占据屏幕的空间
        })
        .buttonStyle(ButtonPressStyle(pressedBgColor: Color.gray, unPressedBgColor: Color.white))
        .clipShape(Circle())
    }
}

#Preview {
    ButtonPressStyleTest()
}
