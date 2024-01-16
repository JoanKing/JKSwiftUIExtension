//
//  JKGradientCircleView.swift
//  manager
//
//  Created by 小冲冲 on 2024/1/16.
//  Copyright © 2024 niu. All rights reserved.
//

import SwiftUI

public struct JKGradientCircleView: View {
    /// 颜色数组
    private var colors: [Color] = []
    /// 绘制颜色数组
    private var gradientColors: [Color] {
        var colorArray = colors
        guard colorArray.count > 0, let firstColor = colorArray.first else {
            return colorArray
        }
        colorArray.append(firstColor)
        return colorArray
    }
    /// 圆环的宽度
    private var lineWidth: CGFloat = 5.0
    
    /// 初始化
    /// - Parameters:
    ///   - colors: 渐变数组
    ///   - lineWidth: 圆环的宽度
    public init(colors: [Color], lineWidth: CGFloat) {
        self.colors = colors
        self.lineWidth = lineWidth
    }
    
    public var body: some View {
        GeometryReader { geometry in
            Path { path in
                let radius = min(geometry.size.width, geometry.size.height) / 2 - lineWidth / 2.0
                let center = CGPoint(x: geometry.size.width / 2, y: geometry.size.height / 2)
                path.addArc(center: center, radius: radius, startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)
            }
            .stroke(AngularGradient(gradient: Gradient(colors: gradientColors), center: .center, startAngle: .degrees(0), endAngle: .degrees(360)), lineWidth: lineWidth)
        }.padding(0)
    }
}

