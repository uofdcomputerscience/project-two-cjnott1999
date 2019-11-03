//
//  FourthViewController.swift
//  Project 2
//
//  Created by Cameron Nottingham on 11/3/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController{
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var continueButton: UIButton!
    
    var pickerData = StatesAndCapitals()
   
    
    override func viewDidLoad() {
        self.statePicker.dataSource = self
        self.statePicker.delegate = self
    }
    
    
    func actionCompleted() -> Bool{
        let valueSelected = pickerData.states[statePicker.selectedRow(inComponent: 0)]
        return textField.text?.lowercased() == pickerData.capitals[valueSelected]?.lowercased()
    }
    

    @IBAction func editingChanged(_ sender: Any) {
        continueButton.isEnabled = actionCompleted()
    }
    
}

extension FourthViewController: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData.states[row]
    }
    
    
}

extension FourthViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
         continueButton.isEnabled = actionCompleted()
    }
}
