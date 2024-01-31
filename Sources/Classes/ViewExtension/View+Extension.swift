//
//  View+Extension.swift
//  JKSwiftUIExtension
//
//  Created by 小冲冲 on 2024/1/20.
//

import SwiftUI

// MARK:一、圆角的设置
extension View {
    // MARK: 1.添加圆角和阴影
    /// 添加圆角和阴影
    /// - Parameters:
    ///   - radius: 圆角大小
    ///   - style: 圆角的样式
    ///   - shadowColor: 阴影的颜色
    ///   - shadowRadius: 阴影的半径
    ///   - x: x 方向的偏移
    ///   - y: y 方向的偏移
    /// - Returns: View
    public func addCornerAndShow(radius: CGFloat, style: RoundedCornerStyle = .continuous, shadowColor: Color = Color(.sRGBLinear, white: 0, opacity: 0.33), shadowRadius: CGFloat, x: CGFloat = 0, y: CGFloat = 0) -> some View {
        return self
            .clipShape(RoundedRectangle(cornerRadius: radius, style: style))
            .shadow(color: shadowColor, radius: shadowRadius, x: x, y: y)
    }
}

// MARK:二、文本相关的设置
extension View {
    
    //MARK: 2.1、换行和缩放比设置
    public func displayInSingleLine(lineLimit: Int = 1, minimumScaleFactor: CGFloat = 0.1) -> some View {
        modifier(TextLimitToSingleLine(lineLimit: lineLimit, minimumScaleFactor: minimumScaleFactor))
    }
}
