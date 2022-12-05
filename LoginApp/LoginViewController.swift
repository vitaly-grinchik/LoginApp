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
    
    private let userName = "Vitaly"

    private let userPassword = "Swiftbook"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if userNameField.text == userName, userPasswordField.text == userPassword {
            guard let welcomVC = segue.destination as? WelcomeViewController else { return }
            welcomVC.userGreeting = "Welcome, " + userName + "!"
        } else {
            showAlert("Invalid login or password",
                      "Please, enter correct login and password")
            { _ in
                self.userNameField.text = ""
                self.userPasswordField.text = ""
            }
        }
    }
   
// TODO: Метод для скрытия клавиатуры тапом по экрану - Я НЕ ПОНИМАЮ. КАК ЭТО РЕАЛИЗОВАТЬ
//    override func touchesBegan(_ touches: Set, with event: UIEvent?) {
//        super .touchesBegan(touches, with: event)
//    }
    
    @IBAction func forgotNameButtonTapped() {
        showAlert("Oops!",
                  "Your name: \(userName)")
    }
    
    @IBAction func forgotPassButtonTapped() {
        showAlert("Oops!",
                  "Your password: " + userPassword)
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
