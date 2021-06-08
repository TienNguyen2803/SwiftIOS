//
//  RegisterViewController.swift
//  SKGTN
//
//  Created by Minh Tien on 6/4/21.
//

import UIKit

class RegisterViewController: UIViewController {

    
    
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var email: UITextField!
    
   
    
    @IBOutlet weak var error: UILabel!
    @IBOutlet weak var repassword: UITextField!
    
    
    @IBOutlet weak var btnRegister: UIButton!
    @IBOutlet weak var img_logo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        img_logo.image = UIImage(named: "logo_login")
        // Do any additional setup after loading the view.
        btnRegister.layer.backgroundColor = UIColor(red: 0.91, green: 0.433, blue: 0.388, alpha: 1).cgColor
        btnRegister.layer.cornerRadius = 24
    }
    
    @IBAction func handleGoBack(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
     

    @IBAction func handleSubmit(_ sender: Any) {
        if email.text != "" && password.text != "" && phone.text != ""  {
            if repassword.text != "" && repassword.text == password.text {
                UserDefaults.standard.setValue(email.text, forKey: "email")
                UserDefaults.standard.setValue(password.text, forKey: "password")
                self.navigationController?.popViewController(animated: true)
            }
            
        }else{
            error.text = "Vui lòng nhập đầy đủ thông tin"
        }
    }
}
