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
    var saveName = ""
    var saveSurname = ""
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "IDsegue" {
            let pvc = segue.destination as! PersonViewController
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .short
            pvc.person = [Person(name: saveName, surname: saveSurname, date: birthDate.date)]
        }
    }
}

