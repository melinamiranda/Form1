//
//  NameViewController.swift
//  Form1
//
//  Created by Melina Miranda on 30/12/2019.
//  Copyright © 2019 Melina Miranda. All rights reserved.
//

import Foundation
import UIKit

struct Person {
    var name: String!
    var surname: String!
    var date: Date!
}
class NameViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emptyLabel: UILabel!
    var imagePicked: UIImage!
    let pvc = PersonViewController()
    var person = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.clearButtonMode = .whileEditing
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let characterSet = CharacterSet.letters
        if nameTextField.text?.rangeOfCharacter(from: characterSet.inverted) != nil {
            emptyLabel.text = "Only letters"
            return false
        }
        else if nameTextField.text?.isEmpty == true {
            emptyLabel.text = "Complete with your name"
            emptyLabel.isHidden = false
            return false
        }
        else {
            emptyLabel.isHidden = true
            return true
            }

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "IDsegue" {
            let nvc = segue.destination as! SurnameViewController
            person.name = nameTextField.text
            nvc.person = person
            nvc.imagePicked = imagePicked
        }
    }
}



