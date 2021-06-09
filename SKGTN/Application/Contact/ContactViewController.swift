//
//  ContactViewController.swift
//  SKGTN
//
//  Created by Minh Tien on 6/8/21.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var btnSubmit: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        navigationItem.title = "Liên hệ"
        btnSubmit.layer.backgroundColor = UIColor(red: 0.91, green: 0.448, blue: 0.338, alpha: 1).cgColor
        btnSubmit.layer.cornerRadius = 24
        // Do any additional setup after loading the view.
        
    }
    


}
