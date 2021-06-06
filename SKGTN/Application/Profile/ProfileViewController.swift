//
//  ProfileViewController.swift
//  SKGTN
//
//  Created by Minh Tien on 6/6/21.
//

import UIKit

class ProfileViewController: UIViewController  {

    
 
   

    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var view2: UIView!
    
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    
    @IBOutlet weak var view5: UIView!
    
    @IBOutlet weak var view6: UIView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.layer.backgroundColor = UIColor(red: 0.91, green: 0.448, blue: 0.338, alpha: 1).cgColor
        view1.layer.borderWidth = 2
        view1.layer.borderColor = UIColor.black.cgColor
        
        view2.layer.borderWidth = 2
        view2.layer.borderColor = UIColor.black.cgColor
        
        view3.layer.borderWidth = 2
        view3.layer.borderColor = UIColor.black.cgColor
        
        view4.layer.borderWidth = 2
        view4.layer.borderColor = UIColor.black.cgColor
        
        view5.layer.borderWidth = 2
        view5.layer.borderColor = UIColor.black.cgColor
        
        view6.layer.borderWidth = 2
        view6.layer.borderColor = UIColor.black.cgColor
    }
   
 
    @IBAction func handleChangeName(_ sender: Any) {
        let updateScreen = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "UPDATEPROFILE") as! UpdateProfileViewController
        updateScreen.titleUpdatePre = "Đổi họ và tên"
        updateScreen.labelCrurrentPre = "Họ và tên hiện tại"
        updateScreen.nameCurrentPre = "Nguyễn Minh Tiền"
        updateScreen.labelNewPre = "Họ và tên mới"
        
        self.navigationController?.pushViewController(updateScreen, animated: true)
    }
    
}
