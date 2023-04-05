//
//  WelcomeViewController.swift
//  Login App
//
//  Created by Юлия Ястребова on 01.04.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var performanceLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 22.0)
        welcomeLabel.text = "Welcome, \(user.userName)"
        
        performanceLabel.text = "My name is \(user.person.name) \(user.person.surname)"
    }
}
