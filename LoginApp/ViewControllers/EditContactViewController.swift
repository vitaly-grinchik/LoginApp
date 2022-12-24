//
//  EditContactViewController.swift
//  LoginApp
//
//  Created by Виталий Гринчик on 22.12.22.
//

import UIKit

final class EditContactViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userSurnameLabel: UILabel!
    @IBOutlet weak var mobilePhoneTextField: UITextField!
    @IBOutlet weak var privateEmailTextField: UITextField!
    @IBOutlet weak var homePhoneTextField: UITextField!
    @IBOutlet weak var workPhoneTextField: UITextField!
    @IBOutlet weak var workEmailTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var addressCityTextField: UITextField!
    @IBOutlet weak var addressStateTextField: UITextField!
    
    var user: Account!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillInTextFields()
    }
    
    // MARK: - IB Actions
    
    private func fillInTextFields() {
        mobilePhoneTextField.text = user.info.contacts[.mobilePhone] ?? ""
        privateEmailTextField.text = user.info.contacts[.privateEmail] ?? ""
        
        homePhoneTextField.text = user.info.contacts[.homePhone] ?? ""
        
        workPhoneTextField.text = user.info.contacts[.workPhone] ?? ""
        workEmailTextField.text = user.info.contacts[.workEmail] ?? ""
        
        addressTextField.text = user.info.address.addressString
        addressCityTextField.text = user.info.address.city
        addressStateTextField.text = user.info.address.state
    }
}
