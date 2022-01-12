//
//  ResultsViewController.swift
//  Qattah
//
//  Created by Ferasico on 10/01/2022.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalPerPerson: UILabel!
    
    var result = "00"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        totalPerPerson.text = result
    }
    
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }


}

