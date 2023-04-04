//
//  WelcomeViewController.swift
//  Login App
//
//  Created by Юлия Ястребова on 01.04.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 22.0)
        welcomeLabel.text = "Welcome, \(user)"
    }
}
