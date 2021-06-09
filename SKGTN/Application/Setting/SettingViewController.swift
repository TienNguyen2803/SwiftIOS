//
//  SettingViewController.swift
//  SKGTN
//
//  Created by Minh Tien on 6/5/21.
//

import UIKit

class SettingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

     
    var personArray : [Setting] = [
        Setting( name : "Thông tin cá nhân", icon: "person.circle.fill", path :"PROFILE" ),
        Setting( name : "Thay đổi mật khẩu", icon: "key.fill",path: "CHANGEPASSWORD"),
        Setting( name :  "Ví", icon: "rectangle.topthird.inset", path :"PROFILE" ),
        Setting( name :  "Ưu đãi",icon: "crown.fill", path :"PROFILE" ),
        Setting( name : "Chương trình của bạn" ,  icon: "star.slash.fill", path :"PROFILE")
    ]
    var commonArray : [Setting] = [
        Setting( name :  "Những câu hỏi thường gặp", icon: "questionmark.circle.fill", path :"FAQ" ),
        Setting( name : "Liên hệ hỗ trợ", icon: "exclamationmark.circle.fill", path :"CONTACT" ),
        Setting( name :  "Điều khoản và chính sách", icon: "doc.text.fill", path :"POLICY" )
    ]
    
    
    @IBOutlet weak var img_avatar: UIImageView!
    
    @IBOutlet weak var myTable: UITableView!
    
     
    
    @IBOutlet weak var tableCommon: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //table persion info list
        myTable.dataSource = self
        myTable.delegate = self
        //table common info list
        tableCommon.dataSource = self
        tableCommon.delegate = self
        //set img for avatar
        img_avatar.image = UIImage(named: "user")
        img_avatar.layer.cornerRadius = 65
        self.view.backgroundColor = UIColor(red: 0.898, green: 0.898, blue: 0.898, alpha: 1)
       
  
        
    }
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }
   
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = UIColor.red
        let headerView: UITableViewHeaderFooterView = view as! UITableViewHeaderFooterView
            headerView.textLabel?.textColor = UIColor.white
        headerView.textLabel?.font = UIFont.systemFont(ofSize: 18, weight: UIFont.Weight.bold)
    }
   
     
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if tableView.tag == 1 {
            return "Chung"
        }
       return "Cá nhân"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView.tag == 1 {
            return commonArray.count
        }
        return personArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL") as! SettingsTableViewCell
      
        if tableView.tag == 1 {
            cell.name.text = commonArray[indexPath.row].name
            cell.img_cell.image = UIImage(systemName: commonArray[indexPath.row].icon)
        }else{
            cell.name.text = personArray[indexPath.row].name
            cell.img_cell.image = UIImage(systemName: personArray[indexPath.row].icon)
        }
        
   
//        cell.backgroundColor = UIColor(red: 0.91, green: 0.443, blue: 0.388, alpha: 1)
        cell.layer.borderColor = UIColor(red: 0.91, green: 0.443, blue: 0.388, alpha: 1).cgColor
        cell.layer.borderWidth = 2
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         
        let sb = UIStoryboard(name: "Main", bundle: nil)
        
        if tableView.tag ==  0 {
            let route : String = personArray[indexPath.row]
                .path
            var screen = sb.instantiateViewController(withIdentifier: route)
            //Convert screen to view controller
            switch route {
            case "CHANGEPASSWORD":
                screen = screen as! ChangePasswordViewController
            default:
                screen =  screen as! ProfileViewController
            }


            self.navigationController?.pushViewController(screen, animated: true)
        }else{
            let route : String = commonArray[indexPath.row]
                .path
            
            //Convert screen to view controller
            switch route {
            case "CONTACT":
                let screen = sb.instantiateViewController(withIdentifier: route) as! ContactViewController
                self.navigationController?.pushViewController(screen, animated: true)
                 
            case "FAQ":
                let screen = sb.instantiateViewController(withIdentifier: route) as! FAQViewController
                let FAQ =  loadJson(fileName: "FAQ")!
           
                self.navigationController?.pushViewController(screen, animated: true)
              
            default:
                let screen = sb.instantiateViewController(withIdentifier: route) as! PolicyViewController
                self.navigationController?.pushViewController(screen, animated: true)
            }


             
        }
        

       
    }
    
  
    
    @IBAction func handleLogout(_ sender: Any) {
        let screen = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "LOGIN")
        as! LoginViewController
        screen.modalPresentationStyle = .fullScreen
        self.present(screen, animated: true, completion: nil)
        
    }
    func loadJson(fileName: String) -> FAQ? {
        guard let sourceURL = Bundle.main.url(forResource: fileName, withExtension: "json") else {
            fatalError("error")
        }
        guard let listData = try? Data(contentsOf: sourceURL) else {
            fatalError("error")
        }
        let decoder = JSONDecoder()
        guard let listFAQ = try? decoder.decode(FAQ.self, from: listData) else {
            fatalError("error")
        }

       return listFAQ
    }

}
