//
//  ViewController.swift
//  Login App
//
//  Created by Юлия Ястребова on 31.03.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var userPasswordTF: UITextField!
    @IBOutlet var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 5
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }

    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        userPasswordTF.text = ""
    }
    
    @IBAction func showUserName() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is User")
    }
    
    @IBAction func showUserPassword() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is 1111")
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

