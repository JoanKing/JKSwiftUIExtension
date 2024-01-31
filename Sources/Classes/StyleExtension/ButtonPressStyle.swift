//
//  ButtonPressStyle.swift
//  pwfood
//
//  Created by 小冲冲 on 2024/1/20.
//
// MARK: - 按钮的样式

import SwiftUI

public struct ButtonPressStyle: ButtonStyle {
    /// 按下的按钮的背景色
    var pressedBgColor: Color
    /// 未按下按钮的背景色
    var unPressedBgColor: Color
    
    public init(pressedBgColor: Color, unPressedBgColor: Color) {
        self.pressedBgColor = pressedBgColor
        self.unPressedBgColor = unPressedBgColor
    }
    
    public func makeBody(configuration: Configuration) -> some View {
        if configuration.isPressed {
            return configuration.label.background(pressedBgColor)
        } else {
            return configuration.label.background(unPressedBgColor)
        }
    }
}
