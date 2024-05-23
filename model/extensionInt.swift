//
//  extensionInt.swift
//  StorybookRandomNumberApp
//
//  Created by racoon on 5/23/24.
//

import Foundation

extension Array {
    static func getRandumNumberArray(
        arrayNumber: Int,
        range: ClosedRange<Int>
    ) -> [Int] {
        var arrayValue: [Int] = []
        
        while arrayValue.count < arrayNumber {
            let number = Int.random(in: range)
            if !arrayValue.contains(number){
                arrayValue.append(number)
            }
        }
        arrayValue.sort()
        return arrayValue
    }
}
