import UIKit

class UpdateAddressViewController: UIViewController {
    var list_district = [
        District(name: "Ho Chi Minh"),
        District(name: "Da Nang"),
        District(name: "Ha Noi")
    ]
    var list_ward = [
        Ward(name: "Quận Bình Tân"),
        Ward(name: "Quận Tân Bình"),
        Ward(name: "Quận 1"),
        Ward(name: "Quận 2"),
        Ward(name: "Quận 3")
    ]
    var list_street = [
        Street(name: "Phường Bình Trị Đông A"),
        Street(name: "Phường Bình Hưng Hoà"),
        Street(name: "Phường Tân Tạo"),
    ]
    var titleUpdatePre: String!
    
    var labelCrurrentPre: String!
    
    var nameCurrentPre: String!
    
    var labelNewPre: String!
    
    var control : String!
    
    var district : String!
    var ward : String!
    var street : String!
    var detail : String!
    
    @IBOutlet weak var titleUpdate: UILabel!
    
    @IBOutlet weak var labelCrurrent: UILabel!
    
    @IBOutlet weak var nameCurrent: UILabel!
    
    @IBOutlet weak var labelNew: UILabel!
    
   
    @IBOutlet weak var btnSubmit: UIButton!
    
    
    @IBOutlet weak var textFieldInput: UITextField!
    
    @IBOutlet weak var viewDistrict: UIView!
    
    @IBOutlet weak var viewWard: UIView!
    
    
    @IBOutlet weak var viewStreet: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnSubmit.layer.backgroundColor = UIColor(red: 0.91, green: 0.448, blue: 0.338, alpha: 1).cgColor
        
        btnSubmit.layer.cornerRadius = 24
        // Do any additional setup after loading the view.
        titleUpdate.text = titleUpdatePre
        labelCrurrent.text = labelCrurrentPre
        nameCurrent.text = nameCurrentPre
        labelNew.text = labelNewPre
        viewDistrict.layer.borderWidth = 2
        viewDistrict.layer.borderColor = UIColor.black.cgColor
        viewDistrict.layer.backgroundColor = UIColor.white.cgColor
        viewDistrict.layer.cornerRadius = 5
        
        viewWard.layer.borderWidth = 2
        viewWard.layer.borderColor = UIColor.black.cgColor
        viewWard.layer.backgroundColor = UIColor.white.cgColor
        viewWard.layer.cornerRadius = 5
        
        viewStreet.layer.borderWidth = 2
        viewStreet.layer.borderColor = UIColor.black.cgColor
        viewStreet.layer.backgroundColor = UIColor.white.cgColor
        viewStreet.layer.cornerRadius = 5
 
        textFieldInput.layer.borderWidth = 2
        textFieldInput.layer.borderColor = UIColor.black.cgColor
        textFieldInput.layer.cornerRadius = 5
    }
    
    //Action
 
    
    @IBAction func selectDistrict(_ sender: Any) {
        let modal = UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "SEARCH") as! SearchViewController
        modal.modalPresentationStyle = .overCurrentContext
        modal.titlePre = "Chọn Tỉnh / Thành Phố"
        modal.listDistrict = list_district
        modal.control = "district"
        present(modal, animated: true, completion: nil)
    }
    
   
    @IBAction func selectWard(_ sender: Any) {
        let modal = UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "SEARCH") as! SearchViewController
        modal.modalPresentationStyle = .overCurrentContext
        modal.titlePre = "Chọn Quận / Huyện"
        modal.listWard = list_ward
        modal.control = "ward"
       present(modal, animated: true, completion: nil)
    }
    

    @IBAction func selectStreet(_ sender: Any) {
        let modal = UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "SEARCH")
            as! SearchViewController
        modal.titlePre = "Chọn Phuờng / Xã"
        modal.listStreet = list_street
        modal.control = "street"
        modal.modalPresentationStyle = .overCurrentContext
       
       present(modal, animated: true, completion: nil)
    }
    
    @IBAction func handleSubmit(_ sender: Any) {
        let profile = navigationController?.viewControllers[1]
            as! ProfileViewController
        
//        profile.user.address = detail + " "  + street + " " + ward + " "  + district
        
        self.navigationController?.popToViewController(profile,animated: true)
    }
}
