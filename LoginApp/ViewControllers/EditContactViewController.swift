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
    @IBOutlet weak var personalEmailTextField: UITextField!
    @IBOutlet weak var homePhoneTextField: UITextField!
    @IBOutlet weak var workPhoneTextField: UITextField!
    @IBOutlet weak var workEmailTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var addressCityTextField: UITextField!
    @IBOutlet weak var addressStateTextField: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    var user: Account!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - IB Actions
    @IBAction func saveButtonTapped(_ sender: UIBarButtonItem) {
    }
    
}
