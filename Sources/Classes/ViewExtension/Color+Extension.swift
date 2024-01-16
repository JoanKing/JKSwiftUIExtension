//
//  Color+Extension.swift
//  manager
//
//  Created by 小冲冲 on 2024/1/16.
//  Copyright © 2024 niu. All rights reserved.
//

import SwiftUI

//MARK: - 一、Color 初始化的基本扩展
extension Color {
    
    //MARK: 1.1、使用RGBA初始化
    /// 使用RGBA初始化
    /// - Parameters:
    ///   - red: R
    ///   - green: G
    ///   - blue: B
    ///   - alpha: 透明度
    public init(r: Int, g: Int, b: Int, alpha: Double = 1.0, colorSpace: Color.RGBColorSpace = .sRGB) {
        self.init(
            colorSpace,
            red: Double(r) / 255.0,
            green: Double(g) / 255.0,
            blue: Double(b) / 255.0,
            opacity: alpha
        )
    }
    
    //MARK: 1.2、使用十六进制字符串初始化
    /// 使用十六进制字符串初始化
    /// - Parameters:
    ///   - hex: 十六进制字符串，如：#2387FD
    ///   - alpha: 透明度
    public init(hexString: String, alpha: Double = 1.0, colorSpace: Color.RGBColorSpace = .sRGB) {
        var hexValue: UInt64 = 0
        let scanner = Scanner(string: hexString.hasPrefix("#") ? String(hexString.dropFirst()) : hexString)
        scanner.scanHexInt64(&hexValue)
        
        let red = Double((hexValue & 0xFF0000) >> 16) / 255.0
        let green = Double((hexValue & 0x00FF00) >> 8) / 255.0
        let blue = Double(hexValue & 0x0000FF) / 255.0
        
        self.init(colorSpace, red: red, green: green, blue: blue, opacity: alpha)
    }
    
    //MARK: 1.3、使用十六进制初始化
    /// 使用十六进制初始化
    /// - Parameters:
    ///   - hex: 十六进制的颜色，如：0x2387FD
    ///   - alpha: 透明度
    public init(hex: Int, alpha: Double = 1.0, colorSpace: Color.RGBColorSpace = .sRGB) {
        let red = Double((hex >> 16) & 0xFF) / 255.0
        let green = Double((hex >> 8) & 0xFF) / 255.0
        let blue = Double(hex & 0xFF) / 255.0
        self.init(colorSpace, red: red, green: green, blue: blue, opacity: alpha)
    }
}

//MARK: - 二、Color 常用的颜色方法
extension Color {

    //MARK: 2.1、随机色
    /// 随机色
    /// - Parameter colorSpace: 颜色空间
    /// - Returns: Color
    public static func randomColor(colorSpace: Color.RGBColorSpace = .sRGB, alpha: Double = 1.0) -> Color {
        let red = Double.random(in: 0...1)
        let green = Double.random(in: 0...1)
        let blue = Double.random(in: 0...1)
        return Color(colorSpace, red: red, green: green, blue: blue, opacity: alpha)
    }
}
