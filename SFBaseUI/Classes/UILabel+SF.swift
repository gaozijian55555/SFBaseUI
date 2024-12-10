//
//  UILabel+SF.swift
//  SwiftInterViewStoryboard
//
//  Created by 高子健 on 2024/12/6.
//

import UIKit

extension UILabel {
    
    class func fast(font: UIFont, color: UIColor) -> UILabel {
        let label = UILabel()
        label.font = font
        label.textColor = color
        return label
    }
    
}
