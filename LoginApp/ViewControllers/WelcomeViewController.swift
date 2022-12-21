//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Виталий Гринчик on 2.12.22.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    
    @IBOutlet weak var userPhoto: UIImageView!
    var user: Account!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Welcome, " + user.userName + "!"
        
        setupUserPhoto()
        
    }
    
    private func setupUserPhoto() {
        userPhoto.image = UIImage(contentsOfFile: user.userInfo.photoFileName)
        userPhoto.contentMode = .scaleAspectFill
        
    }
}
