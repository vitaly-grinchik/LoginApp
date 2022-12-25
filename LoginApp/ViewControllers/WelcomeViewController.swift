//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Виталий Гринчик on 2.12.22.
//

import UIKit

final class WelcomeViewController: UIViewController {

    
    // MARK: - IB Outlets
    @IBOutlet weak var greetingLabel: UILabel!
    
    @IBOutlet weak var userPhoto: UIImageView!
    
    // MARK: - Public property
    var user: Account!
    
    // MARK: - Override methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let tabBarViewControllers = tabBarVC.viewControllers else { return }
        
        tabBarViewControllers.forEach {
            if let aboutVC = $0 as? AboutViewController {
                aboutVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                if let contactVC = navigationVC.topViewController as? ContactViewController {
                    contactVC.user = user
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Привет,\n" + user.info.name + "!"
    }
    
    override func viewDidLayoutSubviews() {
        setupUserPhoto()
    }
    
    // MARK: - Setup view(s)
    private func setupUserPhoto() {
        userPhoto.image = UIImage(named: user.info.photoFileName)
        userPhoto.contentMode = .scaleAspectFill
        userPhoto.layer.borderWidth = 7
        userPhoto.layer.borderColor = UIColor.white.cgColor
        userPhoto.layer.cornerRadius = userPhoto.frame.height / 2
    }
}
