import UIKit

class UpdateAddressViewController: UIViewController {
    
    //create array district , ward , street
    var list_district = [
        District(name: "Ho Chi Minh"),
        District(name: "Da Nang"),
        District(name: "Ha Noi")
    ]
    var list_ward = [
        Ward(name: "Quan Binh Tan"),
        Ward(name: "Quan Tan Binh"),
        Ward(name: "Quan 1"),
        Ward(name: "Quan 2"),
        Ward(name: "Quan 3"),
        Ward(name: "Quan 4"),
        Ward(name: "Quan 5"),
        Ward(name: "Quan 6"),
        Ward(name: "Quan 7"),
        Ward(name: "Quan 8"),
        Ward(name: "Quan 9")
    ]
    var list_street = [
        Street(name: "Phuong Binh Tri A"),
        Street(name: "Phuong Binh Hung Hoa A"),
        Street(name: "Phuong Binh Hung Hoa B"),
        Street(name: "Phuong Tan Tao"),
    ]
    //varial request to  display
    var titleUpdatePre: String!
    
    var labelCrurrentPre: String!
    
    var nameCurrentPre: String!
    
    var labelNewPre: String!
    
    var control : String!
    
    //varial view  show
    
    @IBOutlet weak var district: UILabel!
    
    @IBOutlet weak var ward: UILabel!
    
    @IBOutlet weak var street: UILabel!
    
    //varial request to display
    var districtPre : String!
    var wardPre : String!
    var streetPre: String!
    
    
    //varial view show
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
        
        //remove key store district , ward , street
        UserDefaults.standard.removeObject(forKey:"district")
        UserDefaults.standard.removeObject(forKey:"ward")
        UserDefaults.standard.removeObject(forKey:"street")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let districtRes = UserDefaults.standard.string(forKey: "district") ?? ""
        let wardRes  = UserDefaults.standard.string(forKey: "ward") ?? ""
        let streetRes  = UserDefaults.standard.string(forKey: "street") ?? ""
       
        if districtRes != "" {
            district.text  = districtRes
        }
        
        if wardRes != "" {
            ward.text  = wardRes
        }
        
        if streetRes != "" {
            street.text  = streetRes
        }
    }
    
    //Action
 
    
    @IBAction func selectDistrict(_ sender: Any) {
        let modal = UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "SEARCH") as! SearchViewController
        modal.modalPresentationStyle = .fullScreen
        modal.titlePre = "Chọn Tỉnh / Thành Phố"
        modal.listDistrict = list_district
        modal.control = "district"
        present(modal, animated: true, completion: nil)
    }
    
   
    @IBAction func selectWard(_ sender: Any) {
        let modal = UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "SEARCH") as! SearchViewController
        modal.modalPresentationStyle = .fullScreen
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
        modal.modalPresentationStyle = .fullScreen
       
       present(modal, animated: true, completion: nil)
    }
    
    @IBAction func handleSubmit(_ sender: Any) {
        let profile = navigationController?.viewControllers[1]
            as! ProfileViewController
        //create varial address
        let streetAndWard = textFieldInput.text! +  " " + street.text!
        let districtAndCity = " "  + ward.text! + " " + district.text!
        profile.user.address = streetAndWard + districtAndCity
       
        self.navigationController?.popToViewController(profile,animated: true)
    }
}
