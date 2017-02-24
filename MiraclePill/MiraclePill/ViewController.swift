//
//  ViewController.swift
//  MiraclePill
//
//  Created by Tom Rodriguez on 2/25/17.
//  Copyright © 2017 INKdepth. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var appLogo: UIImageView!
    @IBOutlet weak var appTitle: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var nameTitle: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var addTitle: UILabel!
    @IBOutlet weak var addField: UITextField!
    @IBOutlet weak var cityTitle: UILabel!
    @IBOutlet weak var cityField: UITextField!
    @IBOutlet weak var stateTitle: UILabel!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryTitle: UILabel!
    @IBOutlet weak var countryField: UITextField!
    @IBOutlet weak var zipTitle: UILabel!
    @IBOutlet weak var zipField: UITextField!
    @IBOutlet weak var buyBtn: UIButton!
    @IBOutlet weak var successBtn: UIImageView!
    
    let states = ["Alabama", "Arkansas", "Arizona", "Alaska", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryTitle.isHidden = true
        countryField.isHidden = true
        zipTitle.isHidden = true
        zipField.isHidden = true
        buyBtn.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryTitle.isHidden = false
        countryField.isHidden = false
        zipTitle.isHidden = false
        zipField.isHidden = false
        buyBtn.isHidden = false
    }
    
    @IBAction func buyBtnPressed(_ sender: Any) {
//        appLogo.isHidden = true
//        appTitle.isHidden = true
//        price.isHidden = true
//        divider.isHidden = true
//        nameTitle.isHidden = true
//        nameField.isHidden = true
//        addTitle.isHidden = true
//        addField.isHidden = true
//        cityTitle.isHidden = true
//        cityField.isHidden = true
//        stateTitle.isHidden = true
//        statePickerBtn.isHidden = true
//        countryTitle.isHidden = true
//        countryField.isHidden = true
//        zipTitle.isHidden = true
//        zipField.isHidden = true
//        buyBtn.isHidden = true
        for view in self.view.subviews as [UIView] {
            view.isHidden = true
        }
        successBtn.isHidden = false
    }
    
}

