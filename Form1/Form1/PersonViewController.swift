//
//  PersonViewController.swift
//  Form1
//
//  Created by Melina Miranda on 30/12/2019.
//  Copyright © 2019 Melina Miranda. All rights reserved.
//

import Foundation
import UIKit

struct Person {
    
    var name: String
    var surname: String
    var date: Date
    
}

class PersonViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var birthDateLabel: UILabel!
    
    var finalName = ""
    var finalSurname = ""
    var finalBirthDate = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = finalName
        
    }
    
}
