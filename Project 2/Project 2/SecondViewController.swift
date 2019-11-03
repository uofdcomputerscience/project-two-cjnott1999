//
//  SecondViewController.swift
//  Project 2
//
//  Created by Cameron Nottingham on 11/2/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var continueButton: UIButton!
    
    
    override func viewDidLoad(){
        sliderLabel.text = "0"
        stepperLabel.text = "0"
    }
    
    func stateOfSwitches() -> Bool {
        return Int(slider.value) == 5 && stepper.value == 5
    }
    
    func actionCompleted(){
        continueButton.isEnabled = stateOfSwitches()
    }
    @IBAction func stepperIncremented(_ sender: Any) {
        stepperLabel.text = "\(stepper.value)"
        actionCompleted()
    }
    @IBAction func sliderIncremented(_ sender: Any) {
        sliderLabel.text = "\(Int(slider.value))"
        actionCompleted()
    }
    
    
    
}
