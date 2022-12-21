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
    
    // MARK: - Private properties
    private let currentAccount = account
    
    // MARK: - Override methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomVC = segue.destination as? WelcomeViewController else { return }
        welcomVC.user = currentAccount
    }
   
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IB Actions
    @IBAction func loginTapped() {
        if userNameField.text == currentAccount.userName, userPasswordField.text == currentAccount.userPassword {
            performSegue(withIdentifier: "showWelcomVC", sender: nil)
       } else {
            showAlert("Invalid login or password",
                      "Please, enter correct login and password")
                { _ in self.userPasswordField.text = "" }
        }
    }
    
    @IBAction func forgotNameButtonTapped() {
        showAlert("Oops!",
                  "Your name: \(currentAccount.userName)")
    }
    
    @IBAction func forgotPassButtonTapped() {
        showAlert("Oops!",
                  "Your password: " + currentAccount.userPassword)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameField.text = ""
        userPasswordField.text = ""
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
