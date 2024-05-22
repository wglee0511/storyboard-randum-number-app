//
//  layout.swift
//  StorybookRandomNumberApp
//
//  Created by racoon on 5/22/24.
//

import Foundation
import UIKit

func updateRadius(lableValue: UILabel!) {
    lableValue.layer.cornerRadius = lableValue.bounds.width / 2
    lableValue.clipsToBounds = true
}

func setRandumNumber(lableValue: UILabel!, numberValue: Int) {
    let uiColorValue = getColorByNumber(numberValue: numberValue)
    lableValue.text = "\(numberValue)"
    lableValue.backgroundColor = uiColorValue[0]
    lableValue.textColor =  uiColorValue[1]
}

func getColorByNumber(numberValue: Int) -> [UIColor] {
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

func getRandumNumberArray(maxIndex: Int) -> [Int] {
    var arrayValue: [Int] = []
    
    while arrayValue.count < 6 {
        let number = Int.random(in: 1...45)
        if !arrayValue.contains(number){
            arrayValue.append(number)
        }
    }
    
    return arrayValue.sorted()
}
