//
//  uilabel_random.swift
//  StorybookRandomNumberApp
//
//  Created by racoon on 5/24/24.
//

import Foundation
import UIKit

extension UILabel {
    func updateRadius() {
        layer.cornerRadius = bounds.width / 2
        clipsToBounds = true
    }

    
    func setRandumNumber(numberValue: Int) {
        let uiColorValue = getColorByNumber(numberValue: numberValue)
        text = "\(numberValue)"
        backgroundColor = uiColorValue[0]
        textColor =  uiColorValue[1]
    }
    
    fileprivate func getColorByNumber(numberValue: Int) -> [UIColor] {
        switch numberValue {
            case 1 ... 10:
                return [UIColor.yellow, UIColor.black]
            case 11 ... 20:
            return [UIColor.blue, UIColor.white]
            case 21 ... 30:
                return [UIColor.red, UIColor.white]
            case 31 ... 40:
                return [UIColor.gray, UIColor.white]
            case 41 ... 45:
                return [UIColor.green, UIColor.black]
            default:
                return [UIColor.yellow, UIColor.black]
        }
    }

}
