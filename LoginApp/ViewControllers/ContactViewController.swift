//
//  ContactViewController.swift
//  LoginApp
//
//  Created by Виталий Гринчик on 21.12.22.
//

import UIKit

final class ContactViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var userPhoto: UIImageView!
    // Labels
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userSurnameLabel: UILabel!
    @IBOutlet weak var mobilePhoneLabel: UILabel!
    @IBOutlet weak var privateEmailLabel: UILabel!
    @IBOutlet weak var homePhoneLabel: UILabel!
    @IBOutlet weak var officePhoneLabel: UILabel!
    @IBOutlet weak var officeEmailLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var addressCityLabel: UILabel!
    @IBOutlet weak var addressStateLabel: UILabel!
    
    var user: Account!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
