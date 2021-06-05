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
        // Do any additional setup after loading the view.
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
