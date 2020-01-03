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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "IDsegue" {
            func passPerson(person:Person){
                var person = person
                let nvc = segue.destination as! PersonViewController
                person.date = birthDate.date
                let dateformatter = DateFormatter()
                nvc.finalBirthDate = dateformatter.string(from: person.date)
                }
        }
    }
}
