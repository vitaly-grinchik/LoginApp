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
    @IBOutlet weak var userPasswordField: UITextField!
    
    // MARK: - IB Actions
    @IBAction func loginButtonTapped() {
        showAlert("Invalid Login or Password",
                  "Please, enter correct Login and Password")
        { _ in
            self.userNameField.text = ""
            self.userPasswordField.text = ""
        }
    }
    
    @IBAction func forgotNameButtonTapped() {
        showAlert("Oops!",
                  "Your name: \(userName)")
    }
    
    @IBAction func forgotPassButtonTapped() {
        guard let password = passwords[userName] else { return }
        showAlert("Oops!",
                  "Your password: " + password)
    }
}

// MARK: - Extensions
extension LoginViewController {
    func showAlert(_ title: String,
                   _ message: String,
                   _ handler: ((UIAlertAction) -> Void)? = nil)
    {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: handler)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
