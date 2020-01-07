//
//  NameViewController.swift
//  Form1
//
//  Created by Melina Miranda on 30/12/2019.
//  Copyright © 2019 Melina Miranda. All rights reserved.
//

import UIKit

class NameViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emptyLabel: UILabel!
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if nameTextField.text?.isEmpty ?? true{
            emptyLabel.text = "Complete with your name"
            emptyLabel.isHidden = false
            return false
        }
        else{
            emptyLabel.isHidden = true
            return true
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "IDsegue" {
            let nvc = segue.destination as! SurnameViewController
            name = nameTextField.text!
            nvc.saveName = name
        }
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let characterSet = CharacterSet.letters
        if nameTextField.text?.rangeOfCharacter(from: characterSet.inverted) != nil {
            emptyLabel.text = "Only letters"
            return false
        }
        else{
            nameTextField.clearButtonMode = .always
            nameTextField.clearButtonMode = .whileEditing
            return true
        }
    }
}

