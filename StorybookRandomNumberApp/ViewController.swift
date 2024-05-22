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
    
    
    @IBOutlet var numberLabels: [UILabel]!
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        coordinator.animate { _ in
            for labelValue in self.numberLabels {
                updateRadius(lableValue: labelValue)
            }
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        for labelValue in self.numberLabels {
            updateRadius(lableValue: labelValue)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let numberArray = getRandumNumberArray(maxIndex: 6)
        
        for (index, labelValue) in self.numberLabels.enumerated() {
            setRandumNumber(lableValue: labelValue, numberValue: numberArray[index])
        }
    }


}

