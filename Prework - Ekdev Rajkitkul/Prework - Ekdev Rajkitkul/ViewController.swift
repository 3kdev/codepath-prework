//
//  ViewController.swift
//  Prework - Ekdev Rajkitkul
//
//  Created by Ekdev Rajkitkul on 1/6/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var darkModeSwitch: UISwitch!
    @IBOutlet weak var partySize: UILabel!
    @IBOutlet weak var partyStepper: UIStepper!
    @IBOutlet weak var splitAmount: UILabel!
    @IBOutlet weak var billAmountLabel: UILabel!
    @IBOutlet weak var welcome: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var partySizeLabel: UILabel!
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var tipLabel2: UILabel!
    @IBOutlet weak var totalDisplay: UILabel!
    @IBOutlet weak var rectangle: UIButton!
    
    var totalI = Double(0.00)
    let swiftColor = UIColor(red: 95, green: 28, blue: 239, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Sets the title in the Navigation Bar
            self.title = "Tip Calculator"
    }
    
    @IBAction func darkModeAction(_ sender: UISwitch) {
        if darkModeSwitch.isOn{
            overrideUserInterfaceStyle = .dark
            welcome.textColor = .white
            billAmountLabel.textColor = .lightGray
            billAmountTextField.textColor = .white
            tipLabel.textColor = .lightGray
            partySizeLabel.textColor = UIColor(red: 87, green: 31, blue: 230, alpha: 1.00)
            splitLabel.textColor = .lightGray
            tipLabel2.textColor = .lightGray
            tipAmountLabel.textColor = .lightGray
            splitAmount.textColor = .lightGray
            totalDisplay.textColor = UIColor(red: 186, green: 104, blue: 200, alpha: 1.00)
            totalLabel.textColor = UIColor(red: 186, green: 104, blue: 200, alpha: 1.00)
            
        } else {
            overrideUserInterfaceStyle = .light
            welcome.textColor = .black
            billAmountLabel.textColor = .darkGray
            billAmountTextField.textColor = .black
            tipLabel.textColor = .darkGray
            partySizeLabel.textColor = .darkGray
            splitLabel.textColor = .darkGray
            tipLabel2.textColor = .darkGray
            tipAmountLabel.textColor = .darkGray
            splitAmount.textColor = .darkGray
            totalDisplay.textColor = UIColor(red: 87, green: 31, blue: 230, alpha: 1.00)
            totalLabel.textColor = UIColor(red: 87, green: 31, blue: 230, alpha: 1.00)
        }
    }
//    @IBAction func switchChanged(_sender: UISwitch){
//        if darkModeSwitch.isOn == true{
//            view.backgroundColor = .dark
//
//        } else {
//            view.backgroundColor = UIColor.white
//        }
//    }
    
    

    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        
        let bill = Double(billAmountTextField.text!) ?? 0
        // Get Total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        totalI = Double(total)
        splitAmount.text = String(format: "$%.2f", total)
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
        
        
    }
    
    @IBAction func stepper( sender: UIStepper){
        partySize.text = Int(sender.value).description
        let split = totalI/sender.value
        splitAmount.text = String(format: "$%.2f", split)
    }
    
    
//    @IBAction func partySize(_ sender: Any) {
//
//    }
    
    
    
   
    
    
    
    
    
    
}

