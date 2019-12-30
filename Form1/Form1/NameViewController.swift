//
//  NameViewController.swift
//  Form1
//
//  Created by Melina Miranda on 30/12/2019.
//  Copyright © 2019 Melina Miranda. All rights reserved.
//

import UIKit



class NameViewController: UITextField, UITextFieldDelegate {
    
    @IBOutlet weak var nameTextField: UITextField!
   
    func saveName(person: Person) {
            
            func text(in range: UITextRange) -> String? {
                   return person.name
               }
    }
}

