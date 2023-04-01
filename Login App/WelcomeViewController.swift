//
//  WelcomeViewController.swift
//  Login App
//
//  Created by Юлия Ястребова on 01.04.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var userNameLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 22.0)
        
        userNameLabel.text = userName
        userNameLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 22.0)
    }
    
    @IBAction func logOutButtonTapped() {
        dismiss(animated: true)
    }
    
}
