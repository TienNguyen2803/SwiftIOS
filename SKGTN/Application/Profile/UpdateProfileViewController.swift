//
//  UpdateProfileViewController.swift
//  SKGTN
//
//  Created by Minh Tien on 6/7/21.
//

import UIKit

class UpdateProfileViewController: UIViewController {

    
    var titleUpdatePre: String!
    
    var labelCrurrentPre: String!
    
    var nameCurrentPre: String!
    
    var labelNewPre: String!
    
    var control : String!
    
    let datePicker  = UIDatePicker()
    
    @IBOutlet weak var titleUpdate: UILabel!
    
    @IBOutlet weak var labelCrurrent: UILabel!
    
    @IBOutlet weak var nameCurrent: UILabel!
    
    @IBOutlet weak var labelNew: UILabel!
    
    @IBOutlet weak var btnSubmit: UIButton!
    
    @IBOutlet weak var textFieldInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnSubmit.layer.backgroundColor = UIColor(red: 0.91, green: 0.448, blue: 0.338, alpha: 1).cgColor
        
        btnSubmit.layer.cornerRadius = 24
        // Do any additional setup after loading the view.
        titleUpdate.text = titleUpdatePre
        labelCrurrent.text = labelCrurrentPre
        nameCurrent.text = nameCurrentPre
        labelNew.text = labelNewPre
        if control == "birthday"{
            createDatePicker()
        }

       
    }
    
    @IBAction func handleSubmit(_ sender: Any) {
      
        //compare controll for type submit
     
        let screen = self.navigationController?.viewControllers[1] as! ProfileViewController
        
        switch control {
        case "name":
            screen.user.name = textFieldInput.text
        case "phone":
            screen.user.phone = textFieldInput.text
        case "email":
            screen.user.email = textFieldInput.text
        case "cmnd":
            screen.user.cmnd = textFieldInput.text
        case "birthday":
            screen.user.birthday = textFieldInput.text
        default:
            screen.user.name = nameCurrentPre
        }
        
        
        
        self.navigationController?.popToViewController(screen,animated: true)
    }
    
    
    //create datePicker
    func createDatePicker(){
        textFieldInput.textAlignment = .center
        
        
        //create toolbar bottom
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        //bar button done left
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePress))
        toolbar.setItems([doneBtn], animated: true)
        //if #available(iOS 13.4, *) IMPORTANT
        datePicker.preferredDatePickerStyle = .wheels
        //assign toolbar
        textFieldInput.inputAccessoryView = toolbar
        
        //assign date picket to text field
        textFieldInput.inputView = datePicker
        
        //datepicker mode
        datePicker.datePickerMode = .date
        
    }
    
    //handle click button done left save value
    @objc func donePress(){
       //formatter
       //let formatter = DateFormatter()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy";
       //formatter.dateStyle = .medium
       //formatter.timeStyle = .none
        
        textFieldInput.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }

    

}
