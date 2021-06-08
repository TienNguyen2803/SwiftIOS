//
//  ChangePasswordViewController.swift
//  SKGTN
//
//  Created by Minh Tien on 6/6/21.
//

import UIKit

class ChangePasswordViewController: UIViewController {

    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var btnSubmit: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        btnSubmit.layer.backgroundColor = UIColor(red: 0.91, green: 0.448, blue: 0.338, alpha: 1).cgColor
        imgLogo.image = UIImage(named: "logo_otp")
        btnSubmit.layer.cornerRadius = 24
        // Do any additional setup after loading the view.
    }
    

    @IBAction func handleSubmit(_ sender: Any) {
    
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
