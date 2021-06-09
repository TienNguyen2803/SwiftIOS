//
//  ProfileViewController.swift
//  SKGTN
//
//  Created by Minh Tien on 6/6/21.
//

import UIKit

class ProfileViewController: UIViewController  {

    //object user mockup
    var user : User = User(name: "Nguyễn Minh Tiền", phone: "0909 216 216", birthday: "28/03/2000", cmnd: "02360179501", email: "TienNM@Splus-software.com.vn", address: "84 Quang Trung , Gò Vấp " )
   
    //container view
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
   
    // label variable
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var phone: UILabel!
    
    @IBOutlet weak var birthday: UILabel!
    
    @IBOutlet weak var cmnd: UILabel!
    
    @IBOutlet weak var address: UILabel!
    
    @IBOutlet weak var email: UILabel!
    
    //get value
    var namePre : String!
    var phonePre: String!
    var birthdayPre : String!
    var cmndPre : String!
    var addressPre: String!
    var emailPre : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //  self.view.layer.backgroundColor = UIColor(red: 0.91, green: 0.448, blue: 0.338, alpha: 1).cgColor
        self.tabBarController?.tabBar.isHidden = true
        //set border corlor
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
        self.view.backgroundColor = UIColor(red: 0.898, green: 0.898, blue: 0.898, alpha: 1)
       
    }
     
    override func viewWillAppear(_ animated: Bool) {
        name.text = user.name
        phone.text = user.phone
        birthday.text = user.birthday
        cmnd.text = user.cmnd
        email.text = user.email
        address.text = user.address
        
    }
 
    @IBAction func handleChangeName(_ sender: Any) {
        handleChange(titleUpdatePre: "Đổi họ và tên", labelCrurrentPre: "Họ và tên hiện tại", nameCurrentPre: user.name, labelNewPre: "Họ và tên mới",control: "name")
    }
    
    @IBAction func handleChangePhone(_ sender: Any) {
        handleChange(titleUpdatePre: "Đổi số điện thoại", labelCrurrentPre: "Số điện thoại hiện tại", nameCurrentPre: user.phone, labelNewPre: "Số điện thoại mới",control: "phone")
       
    }
    
    
    @IBAction func handleChangeCMND(_ sender: Any) {
        handleChange(titleUpdatePre: "Đổi CMND/CCCD", labelCrurrentPre: "CMND/CCCD  hiện tại", nameCurrentPre: user.cmnd, labelNewPre: "CMND/CCCD mới",control: "cmnd")
    }
    
    
    @IBAction func handleChangeEmail(_ sender: Any) {
        handleChange(titleUpdatePre: "Đổi Email", labelCrurrentPre: "Email hiện tại", nameCurrentPre: user.email, labelNewPre: "Email mới",control: "email")
    }
    
    
    @IBAction func handleChangeBirthday(_ sender: Any) {
        handleChange(titleUpdatePre: "Đổi năm sinh", labelCrurrentPre: "Năm sinh hiện tại", nameCurrentPre: user.birthday, labelNewPre: "Năm sinh mới",control: "birthday")
    }
    
    @IBAction func handleChangeAddress(_ sender: Any) {  handleChangeAddress(titleUpdatePre: "Đổi địa chỉ", labelCrurrentPre: "Địa chỉ hiện tại", nameCurrentPre: user.address, labelNewPre: "Địa chỉ mới",control: "address")
        
    }
    
    func handleChangeAddress(titleUpdatePre : String , labelCrurrentPre :String ,nameCurrentPre : String ,labelNewPre : String , control : String ) {
        let updateScreen = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "UPDATEADDRESS") as! UpdateAddressViewController
        updateScreen.titleUpdatePre = titleUpdatePre
        updateScreen.labelCrurrentPre = labelCrurrentPre
        updateScreen.nameCurrentPre = nameCurrentPre
        updateScreen.labelNewPre = labelNewPre
        updateScreen.control = control
        self.navigationController?.pushViewController(updateScreen, animated: true)
    }
    
    func handleChange(titleUpdatePre : String , labelCrurrentPre :String ,nameCurrentPre : String ,labelNewPre : String , control : String ) {
        let updateScreen = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "UPDATEPROFILE") as! UpdateProfileViewController
        updateScreen.titleUpdatePre = titleUpdatePre
        updateScreen.labelCrurrentPre = labelCrurrentPre
        updateScreen.nameCurrentPre = nameCurrentPre
        updateScreen.labelNewPre = labelNewPre
        updateScreen.control = control
        self.navigationController?.pushViewController(updateScreen, animated: true)
    }
    
    
    
}
