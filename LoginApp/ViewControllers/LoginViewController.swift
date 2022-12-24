//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Виталий Гринчик on 2.12.22.
//

import UIKit

final class LoginViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var userPasswordField: UITextField!
    
    // MARK: - Private properties
    private var user = account
    
    // MARK: - Override methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomVC = segue.destination as? WelcomeViewController else { return }
        welcomVC.user = user
    }
   
    // To remove keyboard if not needed
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IB Actions
    @IBAction func loginTapped() {
        if userNameField.text == user.userName, userPasswordField.text == user.userPassword {
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
       } else {
            showAlert("Invalid login or password",
                      "Please, enter correct login and password")
                { _ in self.userPasswordField.text = "" }
        }
    }
    
    @IBAction func forgotNameButtonTapped() {
        showAlert("Oops!",
                  "Your name: \(user.userName)")
    }
    
    @IBAction func forgotPassButtonTapped() {
        showAlert("Oops!",
                  "Your password: " + user.userPassword)
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
