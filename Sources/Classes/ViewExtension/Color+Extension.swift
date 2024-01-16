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
    public init(red: Int, green: Int, blue: Int, alpha: Double = 1.0) {
        self.init(
            .sRGB,
            red: Double(red) / 255.0,
            green: Double(green) / 255.0,
            blue: Double(blue) / 255.0,
            opacity: alpha
        )
    }
    
    //MARK: 1.2、使用十六进制字符串初始化
    /// 使用十六进制字符串初始化
    /// - Parameters:
    ///   - hex: 十六进制字符串，如：#2387FD
    ///   - alpha: 透明度
    public init(hexString: String, alpha: Double = 1.0) {
        var hexValue: UInt64 = 0
        let scanner = Scanner(string: hexString.hasPrefix("#") ? String(hexString.dropFirst()) : hexString)
        scanner.scanHexInt64(&hexValue)
        
        let red = Double((hexValue & 0xFF0000) >> 16) / 255.0
        let green = Double((hexValue & 0x00FF00) >> 8) / 255.0
        let blue = Double(hexValue & 0x0000FF) / 255.0
        
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: alpha)
    }
    
    //MARK: 1.3、使用十六进制初始化
    /// 使用十六进制初始化
    /// - Parameters:
    ///   - hex: 十六进制的颜色，如：0x2387FD
    ///   - alpha: 透明度
    public init(hex: Int, alpha: Double = 1.0) {
        let red = Double((hex >> 16) & 0xFF) / 255.0
        let green = Double((hex >> 8) & 0xFF) / 255.0
        let blue = Double(hex & 0xFF) / 255.0
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: alpha)
    }
}
