//
//  BioViewController.swift
//  Login App
//
//  Created by Юлия Ястребова on 05.04.2023.
//

import UIKit

final class BioViewController: UIViewController {

    var user: User!
    
    @IBOutlet var aboutWhomLabel: UILabel!
    @IBOutlet var bioLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutWhomLabel.text = "\(user.person.name) \(user.person.surname) Bio"
        bioLabel.text = user.person.biography
    }
}
