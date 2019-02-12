//
//  ViewController.swift
//  Tweens
//
//  Created by Cas Foole on 11-01-19.
//  Copyright © 2019 Mediacollege. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let schoolPickerData = [String](arrayLiteral: "peter", "pepijn", "cas")
    let schoolAdviesPickerData = [String](arrayLiteral: "paul", "boris", "joost")
    
    var schoolPicker: UIPickerView!
    var schoolAdviesPicker: UIPickerView!


    @IBOutlet weak var schoolTextField: UITextField!
    @IBOutlet weak var schoolAdviesTextField: UITextField!

    
    override func viewDidLoad() {
        
        schoolAdviesPicker = UIPickerView()
        schoolAdviesTextField.inputView = schoolAdviesPicker
        schoolAdviesPicker.delegate = self
        
        schoolPicker = UIPickerView()
        schoolTextField.inputView = schoolPicker
        schoolPicker.delegate = self

        super.viewDidLoad()

        
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == schoolPicker{
            return schoolPickerData.count}
        else if(pickerView == schoolAdviesPicker){
            return schoolAdviesPickerData.count
        }
        return 0;
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == schoolPicker{
            return schoolPickerData[row]}
        else if(pickerView == schoolAdviesPicker){
            return schoolAdviesPickerData[row]
        }else{
            return ""
    }

}

}
