//
//  BirthDateViewController.swift
//  Form1
//
//  Created by Melina Miranda on 30/12/2019.
//  Copyright © 2019 Melina Miranda. All rights reserved.
//

import Foundation
import UIKit

class BirthDateViewController: UIViewController{
    @IBOutlet weak var birthDate: UIDatePicker!
    var person: Person!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "IDsegue" {
            let pvc = segue.destination as! PersonViewController
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .short
            person.date = birthDate.date
            pvc.person = person
        }
    }
}

