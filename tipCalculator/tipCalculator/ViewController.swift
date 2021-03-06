//
//  ViewController.swift
//  tipCalculator
//
//  Created by Jonathan Cabrera on 8/30/20.
//  Copyright © 2020 Jonathan Cabrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipAmountSegementControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
    }
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]

        let tip = bill * tipPercentages[tipAmountSegementControl.selectedSegmentIndex]
        let total = bill + tip
                      
        tipPercentageLabel.text = String(format: "$%.02f", tip)
        totalLabel.text = String(format: "$%.02f", total)
    }
}


