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
                labelValue.updateRadius()
            }
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        for labelValue in self.numberLabels {
            labelValue.updateRadius()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let numberArray = Array<Int>.getRandumNumberArray(arrayNumber: numberLabels.count, range: 1...45)
        for (index, labelValue) in self.numberLabels.enumerated() {
            labelValue.setRandumNumber(numberValue: numberArray[index])
        }
    }


}

