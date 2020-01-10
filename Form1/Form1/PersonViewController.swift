//
//  PersonViewController.swift
//  Form1
//
//  Created by Melina Miranda on 30/12/2019.
//  Copyright © 2019 Melina Miranda. All rights reserved.
//

import Foundation
import UIKit

class PersonViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var birthDateLabel: UILabel!
    var person = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        nameLabel.text = person[0].name
        surnameLabel.text = person[0].surname
        birthDateLabel.text = dateFormatter.string(from: person[0].date)
        }
}
