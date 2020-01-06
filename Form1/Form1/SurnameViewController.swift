//
//  UISurnameViewController.swift
//  Form1
//
//  Created by Melina Miranda on 30/12/2019.
//  Copyright © 2019 Melina Miranda. All rights reserved.
//

import Foundation
import UIKit

class SurnameViewController: UIViewController {
    
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var emptyLabel: UILabel!
    
    var saveName = ""
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if surnameTextField.text?.isEmpty ?? true{
            emptyLabel.text = "Complete with you surname"
            emptyLabel.isHidden = false
            return false
        }
        else{
            emptyLabel.isHidden = true
            return true
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "IDsegue" {
            let nvc = segue.destination as! BirthDateViewController
            nvc.saveSurname = surnameTextField.text!
            nvc.saveName = saveName
        }
    }
}


