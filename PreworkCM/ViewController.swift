//
//  ViewController.swift
//  PreworkCM
//
//  Created by Caroline Mitchem on 1/31/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func tipControlSegment(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15,0.18,0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = tip + bill
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    @IBAction func tipSliderControl(_ sender: UISlider) {
       
            let bill = Double(billAmountTextField.text!) ?? 0
            let currentValue = Int(sender.value)
                    
            sliderLabel.text = "\(currentValue)" + "%"
           
        if(currentValue == 100){
                let tipPercent = 1.0
                    let tipPortion = tipPercent * bill
                    let total = bill + tipPortion
                    tipAmountLabel.text = String(format: "$%.2f", tipPortion)
                    totalLabel.text = String(format: "$%.2f", total)
            }
        else{
            let tipPercent = "0." + "\(currentValue)"
            
            let tDouble = Double(tipPercent) ?? 0
            
            let tipPortion = tDouble * bill
            let total = bill + tipPortion
                tipAmountLabel.text = String(format: "$%.2f", tipPortion)
                totalLabel.text = String(format: "$%.2f", total)
            }
            
    }
    
}

