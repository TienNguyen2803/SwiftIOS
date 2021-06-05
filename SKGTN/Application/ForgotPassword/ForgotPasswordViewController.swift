//
//  ForgotPasswordViewController.swift
//  SKGTN
//
//  Created by Minh Tien on 6/5/21.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    @IBOutlet weak var btnSubmit: UIButton!
    @IBOutlet weak var img_logo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnSubmit.layer.backgroundColor = UIColor(red: 0.91, green: 0.443, blue: 0.338, alpha: 1)
            .cgColor
        btnSubmit.layer.cornerRadius = 24
        img_logo.image = UIImage(named: "logo_otp")
        // Do any additional setup after loading the view.
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
