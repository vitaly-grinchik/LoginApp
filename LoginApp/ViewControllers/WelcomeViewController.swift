//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Виталий Гринчик on 2.12.22.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    
    @IBOutlet weak var userPhoto: UIImageView!
    
    var user: Account!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let tabBarViewControllers = tabBarVC.viewControllers else { return }
        tabBarViewControllers.forEach { vc in
            switch vc {
            case let aboutVC as AboutViewController: aboutVC.user = user
            case let contactVC as ContactViewController: contactVC.user = user
            default: return
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewDidLayoutSubviews() {
        setupUserPhoto()
    }
    
    private func setupUI() {
        greetingLabel.text = "Welcome,\n" + user.info.name + "!"
    }
    
    private func setupUserPhoto() {
        userPhoto.image = UIImage(named: user.info.photoFileName)
        userPhoto.contentMode = .scaleAspectFill
        userPhoto.layer.borderWidth = 7
        userPhoto.layer.borderColor = UIColor.white.cgColor
        userPhoto.layer.cornerRadius = userPhoto.frame.height / 2
    }
}
