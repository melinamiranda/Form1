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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "IDsegue" {
            func passPerson(person:Person){
                var person = person
                let nvc = segue.destination as! PersonViewController
                person.surname = surnameTextField.text!
                nvc.finalSurname = person.surname
            }
        }
    }
}

