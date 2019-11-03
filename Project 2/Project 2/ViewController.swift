//
//  ViewController.swift
//  Project 2
//
//  Created by Russell Mirabelli on 10/26/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var viewAB: UIView!
    @IBOutlet weak var viewBC: UIView!
    
    @IBOutlet weak var switchA: UISwitch!
    @IBOutlet weak var switchB: UISwitch!
    @IBOutlet weak var switchC: UISwitch!
    @IBOutlet weak var switchD: UISwitch!
    
    @IBOutlet weak var continueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewAB.isHidden = false
        viewBC.isHidden = true
    }

    @IBAction func indexChanged(_ sender: Any) {
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            viewAB.isHidden.toggle()
            viewBC.isHidden.toggle()
        case 1:
            viewAB.isHidden.toggle()
            viewBC.isHidden.toggle()
        default:
            break
            
            
        }
    
    }
    
    func checkStateOfSwitches() -> Bool {
        return switchA.isOn && switchB.isOn && switchC.isOn  && switchD.isOn
    }
    
    func checkIfActionCompleted() {
        continueButton.isEnabled = checkStateOfSwitches() ? true : false
        
    }
    
    @IBAction func switchAChangedValue(_ sender: Any) {
        checkIfActionCompleted()
    }
    
    @IBAction func switchBChangedValue(_ sender: Any) {
        checkIfActionCompleted()
    }
    @IBAction func switchCChangedValue(_ sender: Any) {
        checkIfActionCompleted()
    }
    

    @IBAction func switchDChangedValue(_ sender: Any) {
        checkIfActionCompleted()
    }
    
}

