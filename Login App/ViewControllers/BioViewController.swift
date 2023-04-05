//
//  BioViewController.swift
//  Login App
//
//  Created by Юлия Ястребова on 05.04.2023.
//

import UIKit

final class BioViewController: UIViewController {
    
    @IBOutlet var aboutWhomLabel: UILabel!
    @IBOutlet var bioLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aboutWhomLabel.text = "\(user.person.name) \(user.person.surname) Bio"
        bioLabel.text = user.person.biography
    }
}
