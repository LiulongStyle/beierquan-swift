//
//  CALayer+Extension.swift
//  beierquan
//
//  Created by 刘龙 on 2018/6/26.
//  Copyright © 2018年 刘龙. All rights reserved.
//

import QuartzCore

extension CALayer {
    
    var borderUIColor: UIColor {
        get {
            return UIColor(cgColor: borderColor!)
        }
        set(newValue) {
            borderColor = newValue.cgColor
        }
    }
    
    var shadowUIColor: UIColor {
        get {
            return UIColor(cgColor: shadowColor!)
        }
        set(newValue) {
            shadowColor = newValue.cgColor
        }
    }
    
    
    
}
