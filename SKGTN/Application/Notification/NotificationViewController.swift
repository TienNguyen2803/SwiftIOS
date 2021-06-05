//
//  NotificationViewController.swift
//  SKGTN
//
//  Created by Minh Tien on 6/4/21.
//

import UIKit

class NotificationViewController: UIViewController {

    @IBOutlet weak var tarbarItem: UITabBarItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        tarbarItem.selectedImage = UIImage(named: "icon_notification")?.withRenderingMode(.alwaysOriginal)
        tarbarItem.image = UIImage(named: "icon_notification")
        // Do any additional setup after loading the view.
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
