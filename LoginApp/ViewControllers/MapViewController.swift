//
//  MapViewController.swift
//  LoginApp
//
//  Created by Виталий Гринчик on 24.12.22.
//

import UIKit

class MapViewController: UIViewController {

    @IBOutlet weak var mapImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupMapView()
    }
    
    // MARK: - Setup view(s)
    private func setupMapView() {
        mapImage.contentMode = .scaleAspectFill
        mapImage.layer.borderWidth = 5
        mapImage.layer.borderColor = UIColor.lightGray.cgColor
        mapImage.layer.cornerRadius = 15
    }

}
