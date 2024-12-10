//
//  UIString+SF.swift
//  SwiftInterViewStoryboard
//
//  Created by 高子健 on 2024/12/9.
//

import UIKit

public extension String {
    func asImage() -> UIImage? {
        return UIImage(named: self)?.withRenderingMode(.alwaysOriginal)
    }
}
