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
    @IBOutlet weak var userAgeLabel: UILabel!
    @IBOutlet weak var mobilePhoneLabel: UILabel!
    @IBOutlet weak var privateEmailLabel: UILabel!
    @IBOutlet weak var homePhoneLabel: UILabel!
    @IBOutlet weak var workPhoneLabel: UILabel!
    @IBOutlet weak var workEmailLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var addressCityLabel: UILabel!
    @IBOutlet weak var addressStateLabel: UILabel!
    
    var user: Account!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let mapVC = segue.destination as? MapViewController else { return }
        mapVC.mapImageFileName = user.info.address.mapImageFileName
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUserPhoto()
        fillInLabels()
    }
     
    // MARK: - Setup view(s)
    private func setupUserPhoto() {
        userPhoto.image = UIImage(named: user.info.photoFileName)
        userPhoto.contentMode = .scaleAspectFill
        userPhoto.layer.borderWidth = 5
        userPhoto.layer.borderColor = UIColor.white.cgColor
        userPhoto.layer.cornerRadius = 15
        
    }
    
    private func fillInLabels() {
        userNameLabel.text = user.info.name
        userSurnameLabel.text = user.info.surname
        userAgeLabel.text = "\(user.info.age)"
        
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
