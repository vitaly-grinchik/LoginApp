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
    @IBOutlet weak var workPhoneLabel: UILabel!
    @IBOutlet weak var workEmailLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var addressCityLabel: UILabel!
    @IBOutlet weak var addressStateLabel: UILabel!
    
    var user: Account!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillInLabels()
    }
    
    private func fillInLabels() {
        userNameLabel.text = user.info.name
        userSurnameLabel.text = user.info.surname
        
        mobilePhoneLabel.text = user.info.contacts[.mobilePhone]
        privateEmailLabel.text = user.info.contacts[.privateEmail]
        
        homePhoneLabel.text = user.info.contacts[.homePhone]
        
        workPhoneLabel.text = user.info.contacts[.workPhone]
        workEmailLabel.text = user.info.contacts[.workEmail]
        
        addressLabel.text = user.info.address.addressString
        addressCityLabel.text = user.info.address.city
        addressStateLabel.text = user.info.address.state
    }
}
