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
    
    @IBOutlet weak var surnameTextField: UILabel!
    @IBOutlet weak var nameTextField: UILabel!
    @IBOutlet weak var birthDate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func passStruct(person: Person){
        
    }
    
}
