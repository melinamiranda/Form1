//
//  UISurnameViewController.swift
//  Form1
//
//  Created by Melina Miranda on 30/12/2019.
//  Copyright © 2019 Melina Miranda. All rights reserved.
//

import Foundation
import UIKit

class SurnameViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var emptyLabel: UILabel!
    var saveName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        surnameTextField.delegate = self
        surnameTextField.clearButtonMode = .whileEditing
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let characterSet = CharacterSet.letters

        if surnameTextField.text?.rangeOfCharacter(from: characterSet.inverted) != nil {
            emptyLabel.text = "Only letters"
            return false
            }
        else if surnameTextField.text?.isEmpty == true{
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
    /*func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let characterSet = CharacterSet.letters
        if surnameTextField.text?.rangeOfCharacter(from: characterSet.inverted) != nil {
            emptyLabel.text = "Only letters"
            return true
        }
        else {
            surnameTextField.clearButtonMode = .whileEditing
            return true
        }
    }*/
}



