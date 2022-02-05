//
//  ViewController.swift
//  Tipperr
//
//  Created by Ria Vadhavkar on 6/23/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //do any additional setup after loading the view
        billAmountTextField.keyboardType = UIKeyboardType.numberPad
    }

    @IBAction func calculateTip(_ sender: Any) {
        //get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //get Total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.2, 0.25]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

