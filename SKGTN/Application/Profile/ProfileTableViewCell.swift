//
//  ProfileTableViewCell.swift
//  SKGTN
//
//  Created by Minh Tien on 6/6/21.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

   
    @IBOutlet weak var body: UILabel!
    @IBOutlet weak var title: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
