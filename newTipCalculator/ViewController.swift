//
//  ViewController.swift
//  newTipCalculator
//
//  Created by Mac Mini on 8/30/22.
//  Copyright © 2022 Mac Mini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var TipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateTip(_ sender: Any) {

    let bill = Double(billAmountTextField.text!) ?? 0
    // get total tip by multiplying tip * tippercentage
    let tipPercentages = [0.15, 0.18, 0.2]
    let tip = bill *
        tipPercentages[tipControl.selectedSegmentIndex]
    let total = bill + tip
    //update tip amount label
    TipAmountLabel.text = String(format: "$%.2f",tip)
    //update Total Amounnt
    totalLabel.text = String(format:"$%.2f",total)}

}
