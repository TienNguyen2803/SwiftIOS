//
//  RegisterViewController.swift
//  SKGTN
//
//  Created by Minh Tien on 6/4/21.
//

import UIKit

class RegisterViewController: UIViewController {

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
    
     /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
