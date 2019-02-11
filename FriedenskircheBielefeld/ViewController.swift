//
//  ViewController.swift
//  FriedenskircheBielefeld
//
//  Created by Daniel Willems on 10.02.19.
//  Copyright © 2019 Daniel Willems. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var errorMessage: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func login(_ sender: UIButton) {
        if passwordTextField.text == "predigten"{
            print("Das hat geklappt");
            performSegue(withIdentifier: "segueToMain", sender: self);
        }else{
            errorMessage.text = "Das Passwort ist leider falsch"
        }
    }
    
}

