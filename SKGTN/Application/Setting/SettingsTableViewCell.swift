//
//  SettingsTableViewCell.swift
//  SKGTN
//
//  Created by Minh Tien on 6/6/21.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {

    @IBOutlet weak var img_cell: UIImageView!
    @IBOutlet weak var name: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
