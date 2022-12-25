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
    private let user = Account.getAccount()
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameField.text = user.userName
        userPasswordField.text = user.userPassword
    }
    
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
            showAlert("Неверное имя и/или пароль",
                      "Введите правильные имя и пароль")
                { _ in self.userPasswordField.text = "" }
        }
    }
    
    @IBAction func forgotNameButtonTapped() {
        showAlert("Опаньки!",
                  "Ваше имя: \(user.userName)")
    }
    
    @IBAction func forgotPassButtonTapped() {
        showAlert("Так и быть...",
                  "Ваш пароль: " + user.userPassword)
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
