//
//  ViewController.swift
//  hello
//
//  Created by Milind Siddhanti on 8/10/18.
//  Copyright © 2018 Milind Siddhanti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fiveTipLabel: UILabel!
    @IBOutlet weak var fourTipLabel: UILabel!
    @IBOutlet weak var threeTipLabel: UILabel!
    @IBOutlet weak var oneTipLabel: UILabel!
    @IBOutlet weak var twoTipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercentages = [0.18, 0.2, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip  = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        let twoTip = total / 2
        let threeTip = total / 3
        let fourTip = total / 4
        let fiveTip = total / 5
        
        twoTipLabel.text = String(format: "$%.2f", twoTip)
        threeTipLabel.text = String(format: "$%.2f", threeTip)
        fourTipLabel.text = String(format: "$%.2f", fourTip)
        fiveTipLabel.text = String(format: "$%.2f", fiveTip)
        
    }
}

