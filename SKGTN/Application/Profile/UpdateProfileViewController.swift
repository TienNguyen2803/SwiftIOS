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
    
    @IBOutlet weak var titleUpdate: UILabel!
    
    @IBOutlet weak var labelCrurrent: UILabel!
    
    @IBOutlet weak var nameCurrent: UILabel!
    
    @IBOutlet weak var labelNew: UILabel!
    
    @IBOutlet weak var btnSubmit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnSubmit.layer.backgroundColor = UIColor(red: 0.91, green: 0.448, blue: 0.338, alpha: 1).cgColor
        
        btnSubmit.layer.cornerRadius = 24
        // Do any additional setup after loading the view.
        titleUpdate.text = titleUpdatePre
        labelCrurrent.text = labelCrurrentPre
        nameCurrent.text = nameCurrentPre
        labelNew.text = labelNewPre
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
