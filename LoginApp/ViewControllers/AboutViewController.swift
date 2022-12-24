//
//  AboutViewController.swift
//  LoginApp
//
//  Created by Виталий Гринчик on 21.12.22.
//

import UIKit

final class AboutViewController: UIViewController {

    @IBOutlet weak var aboutTextView: UITextView!
    
    var user: Account!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutTextView.text = user.info.intro
    }
}
