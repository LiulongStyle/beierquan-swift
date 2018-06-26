//
//  UIButton+Extension.swift
//  beierquan
//
//  Created by 刘龙 on 2018/6/25.
//  Copyright © 2018年 刘龙. All rights reserved.
//

import UIKit

extension UIButton {
    func verticalImageupAndTitledown(_ spacing: CGFloat) {
        let imageSize: CGSize? = imageView?.frame.size
        var titleSize: CGSize? = titleLabel?.frame.size
        let fontNum = titleLabel?.font.pointSize
        let textSize: CGSize = (titleLabel?.text?.size(withAttributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: fontNum!)]))!
        
        let frameSize: CGSize? = CGSize(width: textSize.width, height: textSize.height)
        if (titleSize?.width)! + 0.5 < (frameSize?.width)! {
            titleSize?.width = (frameSize?.width)!
        }
        let totalHeight: CGFloat = (imageSize?.height ?? 0.0) + (titleSize?.height ?? 0.0) + spacing
        imageEdgeInsets = UIEdgeInsetsMake(-(totalHeight - (imageSize?.height ?? 0.0)), 0.0, 0.0, -(titleSize?.width ?? 0.0))
        titleEdgeInsets = UIEdgeInsetsMake(0, -(imageSize?.width ?? 0.0), -(totalHeight - (titleSize?.height ?? 0.0)), 0)
    }
    
    func verticalImageRightAndTitleLeft(_ spacing: CGFloat) {
        let imageSize: CGSize? = imageView?.frame.size
        let titleSize: CGSize? = titleLabel?.frame.size
        titleEdgeInsets = UIEdgeInsetsMake(0, -(imageSize?.width ?? 0.0) - spacing, 0, (imageSize?.width)!)
        imageEdgeInsets = UIEdgeInsetsMake(0, (titleSize?.width)!, 0, -(titleSize?.width ?? 0.0))
    }
}
