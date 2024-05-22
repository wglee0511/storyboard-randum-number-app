//
//  ViewController.swift
//  StorybookRandomNumberApp
//
//  Created by racoon on 5/22/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabelOne: UILabel!
    @IBOutlet weak var numberLabelTwo: UILabel!
    @IBOutlet weak var numberLabelThree: UILabel!
    @IBOutlet weak var numberLabelFour: UILabel!
    @IBOutlet weak var numberLabelFive: UILabel!
    @IBOutlet weak var numberLabelSix: UILabel!
    @IBOutlet weak var numberLabelSeven: UILabel!
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let labelArray: [UILabel] = [
            numberLabelOne,
            numberLabelTwo,
            numberLabelThree,
            numberLabelFour,
            numberLabelFive,
            numberLabelSeven
        ]
        
        for labelValue in labelArray {
            updateRadius(lableValue: labelValue)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let numberArray = getRandumNumberArray(maxIndex: 6)
        let labelArray: [UILabel] = [
            numberLabelOne,
            numberLabelTwo,
            numberLabelThree,
            numberLabelFour,
            numberLabelFive,
            numberLabelSeven
        ]
        
        for (index, labelValue) in labelArray.enumerated() {
            setRandumNumber(lableValue: labelValue, numberValue: numberArray[index])
        }
    }


}

