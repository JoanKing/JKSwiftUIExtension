//
//  ViewModifier+Extension.swift
//  JKSwiftUIExtension
//
//  Created by 小冲冲 on 2024/1/28.
//

import SwiftUI

// MARK:一、文本的ViewModifier
struct TextLimitToSingleLine: ViewModifier {
    /// 行数
    var lineLimit: Int
    /// 最小缩放比
    var minimumScaleFactor: CGFloat
    //MARK: 2.1、换行和缩放比设置
    func body(content: Content) -> some View {
        content
            .lineLimit(lineLimit)
            .minimumScaleFactor(minimumScaleFactor)
    }
}
