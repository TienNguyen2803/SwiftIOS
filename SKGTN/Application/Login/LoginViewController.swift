//
//  LoginViewController.swift
//  SKGTN
//
//  Created by Minh Tien on 6/4/21.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var btn_login: UIButton!
    @IBOutlet weak var img_logo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        img_logo.image = UIImage(named: "logo_login")
        btn_login.backgroundColor = UIColor(red: 0.91, green: 0.443, blue: 0.388, alpha: 1)
        btn_login.layer.cornerRadius = 24
         
    }
    

    @IBAction func handleSubmit(_ sender: Any) {
        let tarbarScreen = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TARBAR")
        tarbarScreen.modalPresentationStyle = .fullScreen
        self.present(tarbarScreen, animated: true, completion: nil )
    }
    
}
