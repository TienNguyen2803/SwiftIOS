//
//  ResetPasswordViewController.swift
//  SKGTN
//
//  Created by Minh Tien on 6/5/21.
//

import UIKit

class ResetPasswordViewController: UIViewController {

    @IBOutlet weak var btn_submit: UIButton!
    @IBOutlet weak var img_logo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        img_logo.image = UIImage(named: "logo_otp")
        btn_submit.layer.backgroundColor = UIColor(red: 0.91, green: 0.443, blue: 0.338, alpha: 1).cgColor
        btn_submit.layer.cornerRadius = 25
        // Do any additional setup after loading the view.
    }
    
    @IBAction func handleSubmit(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let homeScreen = sb.instantiateViewController(withIdentifier: "HOME")
        self.navigationController?.popToViewController(homeScreen, animated: true)
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
