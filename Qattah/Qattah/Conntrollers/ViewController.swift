//
//  ViewController.swift
//  Qattah
//
//  Created by Ferasico on 08/01/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var backgroundOfinformation: UIView!
    @IBOutlet weak var calculaterButton: UIButton!
    @IBOutlet weak var billTotalTextField: UITextField!
    @IBOutlet weak var personNumberLabel: UILabel!
    
    
    var numberOfPeople = 0
    var billTotal = 0.0
    var finalResult = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        calculaterButton.layer.cornerRadius = 10
        backgroundOfinformation.layer.cornerRadius = 20
        
    }
    
    // This funcation is increase or descrease person
    @IBAction func stepperValueChange(_ sender: UIStepper) {
        
        personNumberLabel.text = String(format: "%.0f", sender.value)
        numberOfPeople = Int(sender.value)
        
    }
    
    // This funcation is calculate
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        // Get information from UITextField
        let bill = billTotalTextField.text!
        
        if bill != "" {
            billTotal = Double(bill)!
            let result = billTotal / Double(numberOfPeople)
            finalResult = String(format: "%.2f", result)
            print(finalResult)
        }
        
        self.performSegue(withIdentifier: "ResultVC", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ResultVC"{
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.result = finalResult
        }
    }
    
    
}

