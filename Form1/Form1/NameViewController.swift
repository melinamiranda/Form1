//
//  NameViewController.swift
//  Form1
//
//  Created by Melina Miranda on 30/12/2019.
//  Copyright © 2019 Melina Miranda. All rights reserved.
//

import UIKit

class NameViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "IDsegue" {
            func passPerson(person:Person){
                var person = person
                let nvc = segue.destination as! PersonViewController
                person.name = nameTextField.text!
                nvc.finalName = person.name
            }
        }
    }
}

