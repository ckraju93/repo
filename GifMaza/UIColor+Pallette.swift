//
//  UIColor+Pallette.swift
//  MyLoggr
//
//  Created by Kanchiraju on 1/30/16.
//  Copyright © 2016 Kanchy. All rights reserved.
//

import UIKit

extension UIColor {
    
    class func colorFromRGB(r: Int, g: Int, b: Int) -> UIColor {
        return UIColor(red: CGFloat(Float(r) / 255), green: CGFloat(Float(g) / 255), blue: CGFloat(Float(b) / 255), alpha: 1)
    }
    
    class func palette() -> [UIColor] {
        let palette = [
            UIColor.colorFromRGB(90, g: 200, b: 250),  // #5AC8FA - Light Blue
            UIColor.colorFromRGB(255, g: 149, b: 0),   // #FF9500 - Orange
            UIColor.colorFromRGB(258, g: 45, b: 85),      // #FF2D55 - Magenta/Red
            UIColor.colorFromRGB(255, g: 204, b: 0),   // #FFCC00 - Yellow
            UIColor.colorFromRGB(0, g: 122, b: 255),   // #007AFF - Blue
            UIColor.colorFromRGB(76, g: 217, b: 100),   // #4CD964 - Green (Highlighter)
            UIColor.colorFromRGB(255, g: 59, b: 48),    // #FF3B30 - Red
            UIColor.colorFromRGB(142, g: 142, b: 147)     // #8E8E93 - Gray
        ]
        return palette

    }

}
