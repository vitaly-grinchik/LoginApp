//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Виталий Гринчик on 2.12.22.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Welcome, " + userName + "!"
    }
}