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
    var saveSurname = ""
    var saveName = ""
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "IDsegue" {
            let nvc = segue.destination as! PersonViewController
            let dateformatter = DateFormatter()
            dateformatter.dateStyle = .short
            nvc.finalBirthDate = dateformatter.string(from: birthDate.date)
            nvc.finalSurname = saveSurname
            nvc.finalName = saveName
        }
    }
}

