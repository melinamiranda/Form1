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
    var nameText = ""
    
    @IBAction func done(_ sender: Any) {
        self.nameText = nameTextField.text!
        performSegue(withIdentifier: "NameViewController", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! PersonViewController
        nvc.finalName = nameText.self
    }
}

