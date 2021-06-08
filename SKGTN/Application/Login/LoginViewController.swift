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
    
    @IBOutlet weak var error: UILabel!
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        img_logo.image = UIImage(named: "logo_login")
        btn_login.backgroundColor = UIColor(red: 0.91, green: 0.443, blue: 0.388, alpha: 1)
        btn_login.layer.cornerRadius = 24
         
    }
    
    @IBAction func handleLinkRegister(_ sender: Any) {
        let screen = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "REGISTER")
        self.navigationController?.pushViewController(screen, animated: true)
    }
    
    @IBAction func handleSubmit(_ sender: Any) {
        //get email and password in store
        let email = UserDefaults.standard.string(forKey: "email")
        let pw = UserDefaults.standard.string(forKey: "password")
        
        
        let tarbarScreen = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TARBAR")
        tarbarScreen.modalPresentationStyle = .fullScreen
        if username.text == email && password.text == pw {
            self.present(tarbarScreen, animated: true, completion: nil )
            error.text = " "
        }else{
            error.text = "Tài khoản mật khẩu không đúng"
        }
        
    }
    
}
