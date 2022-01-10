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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        calculaterButton.layer.cornerRadius = 10
        backgroundOfinformation.layer.cornerRadius = 20
        
    }
    
    


}

