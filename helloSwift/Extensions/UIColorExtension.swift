//
//  UIColorExtension.swift
//  helloSwift
//
//  Created by 张啸宇 on 2019/12/8.
//  Copyright © 2019 xiaoyuu. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    static func hexColor(_ hexValue: Int, alphaValue:Double) -> UIColor {
        return UIColor(red: CGFloat((hexValue & 0xFF0000) >> 16) / 255, green: CGFloat((hexValue & 0x00FF00) >> 8) / 255, blue: CGFloat((hexValue & 0x0000FF)) / 255, alpha: CGFloat(alphaValue))
    }
    
    static func hexColor(_ hexValue: Int) -> UIColor {
        return hexColor(hexValue, alphaValue: 1)
    }
    
    convenience  init(_ hexValue: Int, alphaValue:Double) {
        self.init(red: CGFloat((hexValue & 0xFF0000) >> 16) / 255, green: CGFloat((hexValue & 0x00FF00) >> 8) / 255, blue: CGFloat((hexValue & 0x0000FF)) / 255, alpha: CGFloat(alphaValue))
    }
    convenience init(_ hexValue: Int){
        self.init(hexValue,alphaValue: 1)
    }
}
