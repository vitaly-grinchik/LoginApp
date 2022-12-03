//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Виталий Гринчик on 2.12.22.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    // MARK: - IB Actions
    @IBAction func loginButtonTapped() {
    }
    
    @IBAction func forgotNameButtonTapped() {
        showPromptingAlert("Ooops!", "Your name: \(userName)")
    }
    
    @IBAction func forgotPassButtonTapped() {
        guard let password = passwords[userName] else { return }
        showPromptingAlert("OK", "Your password: " + password)
    }
}

// MARK: - Extensions
extension LoginViewController {
    func showPromptingAlert(_ title: String, _ message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    
}
